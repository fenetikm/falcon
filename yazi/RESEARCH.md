# Falcon Modern for Yazi: research

Status: research done, decisions made (see [Decisions](#decisions)), nothing built yet. Researched 2026-10-26 against Yazi **26.9.1** (the version installed via Homebrew).

## TL;DR

- Yazi themes are shipped as **flavors**: a directory `falcon-modern.yazi/` holding exactly six files, `flavor.toml`, `tmtheme.xml`, `README.md`, `preview.png`, `LICENSE` and `LICENSE-tmtheme`.
- `flavor.toml` uses the same schema as `theme.toml`. You only list what you want to change. Anything left out falls back to Yazi's preset `theme-dark.toml`.
- `tmtheme.xml` drives code highlighting in the preview pane (syntect). Flavors **always** use their own `tmtheme.xml`, and `mgr.syntect_theme` is ignored once a flavor is active.
- `tmtheme.xml` is done (task 3). It was rebuilt from the old half-finished draft and checked against `corpus/` with bat, which uses the same syntax sources as Yazi.
- About 18 TOML sections need deciding. Most are simple border, title and highlight choices that can copy what the Neovim modern variant does for pickers and floats.
- Decided: build it in `yazi/falcon-modern.yazi/` and symlink it in. Hand-write first, then move to a shipwright runner. Grey hovered row, plain filenames with a few exceptions, Falcon colours on fallback icons only, and no transparent or classic variant for now.

## What a flavor is

From the [flavor docs](https://yazi-rs.github.io/docs/flavors/overview):

```
~/.config/yazi/flavors/falcon-modern.yazi/
├── flavor.toml       # theme config, same schema as theme.toml
├── tmtheme.xml       # syntax highlighting for code previews
├── README.md
├── preview.png
├── LICENSE
└── LICENSE-tmtheme
```

- The directory name must be kebab-case and end in `.yazi`. The flavor's name is the part before `.yazi`.
- To use it, add this to the user's `~/.config/yazi/theme.toml`:

  ```toml
  [flavor]
  dark  = "falcon-modern"
  light = "falcon-modern"   # optional, Falcon has no light variant
  ```

- Merge order: preset theme, then the flavor, then the user's `theme.toml`. **The user's file always wins.** So your current `theme.toml` (empty status separators, icons turned off) will keep working on top of the flavor.
- Yazi picks dark or light by detecting the terminal background (detection was tuned in 26.8.15). Setting `light` as well protects against detection getting it wrong.
- Starting point: [yazi-rs/flavor-template](https://github.com/yazi-rs/flavor-template). Reference flavors: [yazi-rs/flavors](https://github.com/yazi-rs/flavors) (Catppuccin ×4, Dracula). Community list: `themes.md` in that repo.

### Gotcha: ya pkg needs all six files

Checked in `yazi-cli/src/package/deploy.rs` at v26.9.1: if `flavor.toml` exists, `ya pkg` copies exactly the six files above, and a missing file makes the install fail. So `preview.png` and both licences are required, not optional extras.

## Packaging and distribution

`ya pkg add owner/repo:child` looks for `<repo-root>/<child>.yazi/` (`dependency.rs` builds `format!("{child}.yazi")` and uses that same string as the installed directory name). That means:

| Option | Install | Trade-off |
| --- | --- | --- |
| A. `yazi/falcon-modern.yazi/` in this repo | Manual symlink into `~/.config/yazi/flavors/` | Fits the repo's per-tool layout. **Can't be installed with `ya pkg`**, because a child like `yazi/falcon-modern` would end up as a nested, broken flavor dir. |
| B. `falcon-modern.yazi/` at this repo's root | `ya pkg add fenetikm/falcon:falcon-modern` | Works with `ya pkg`, but breaks the `<tool>/` convention at the top level. |
| C. Separate repo `fenetikm/falcon-modern.yazi` | `ya pkg add fenetikm/falcon-modern` | The usual convention, and the one the flavor list expects. Needs syncing from this repo, which is easy if the files are generated. |

**Decided:** A only (symlink it, tweak it, hot-reload it). Publishing (C or B) is deferred, so revisit it at the v3 release.

## Hex or ANSI names

A Yazi `Color` is either `"#RRGGBB"` or one of 17 names (`reset`, `black`, `red`, `lightred`, …, `gray`, `darkgray`). Names resolve to the terminal's ANSI palette.

Use **hex everywhere**. Falcon's kitty palette remaps the ANSI slots (`blue` → purple `#635095`, `magenta` → orange `#FF761A`), so named colours would only look right inside a Falcon-themed terminal. Keep `reset` for "inherit" (for example `find_position.bg`).

## Background and transparency

- `[app] overall = { bg = … }` sets the terminal background with OSC 11 for as long as Yazi is open.
- **Decided:** leave it empty. Kitty already uses `#020221`.
- `kitty.falcon.modern_transparent.conf` doesn't make the whole background transparent. It sets opacity per colour: `transparent_background_colors #020221@1.0 #151520@0.8`. Only cells painted exactly `#151520` go translucent. So a flavor that never paints the main background works unchanged under both kitty configs.
- **Decided:** no transparent variant and no surfaces deliberately painted `#151520` for now. See how it looks first. "Multi transparency" (TODO.md) should be designed across Neovim, kitty and Yazi together.

## Component inventory and proposed mapping

Colour choices follow the modern Neovim variant (`lua/falcon/modern.lua`, `base_ui.lua`, `extras/common/neovim.lua`, `plugins/modern/{telescope,oil,nvim-tree}.lua`):

- mostly greys
- `blue_gray` for directories
- `dark_indigo` for selection
- `yellow` as the "picked" accent (`PMenuSel`)
- `tan` for titles
- `dark_gray` for float borders

Palette names come from `lua/falcon/palette.lua`. These are a **first pass** to tune live, not final values.

Key palette entries used below:

| Name | Hex | Used in nvim modern for |
| --- | --- | --- |
| `bg` | `#020221` | Normal bg |
| `mid_gray_alt2` | `#A1A1A9` | Normal fg |
| `light_gray` | `#DFDFE5` | Visual fg, TabLineSel |
| `mid_gray` | `#787882` | StatusLine fg, VertSplit |
| `mid_dark_gray` | `#57575E` | LineNr |
| `blue_mid_gray` | `#4F4F59` | (subtle chrome) |
| `dark_gray` | `#36363A` | FloatBorder, TabLine bg |
| `darker_gray` | `#212127` | TabLineFill |
| `status` | `#28282D` | StatusLine bg |
| `blue_dark_gray` | `#2F2F3A` | CursorLine |
| `blue_dark_float2` | `#1E1E2F` | NormalFloat |
| `blue_gray` | `#99A4BC` | Directory, Number |
| `darker_bluer_gray` | `#707082` | Comment |
| `br_blue` | `#BFDAFF` | Search / IncSearch |
| `dark_indigo` | `#311282` | Visual, kitty selection |
| `indigo` | `#5521D9` | (accent) |
| `yellow` | `#FFC552` | PMenuSel bg, WildMenu |
| `black` | `#000004` | PMenuSel fg |
| `tan` | `#CFC1B2` | Title |
| `green` / `orange` / `red` | `#859933` / `#FF761A` / `#FF3600` | git new / dirty / deleted |
| `bright_green` | `#B2BC55` | success |
| `off_red` | `#210802` | diff delete bg |

### `[mgr]`: main file panes

| Key | Preset | Proposed |
| --- | --- | --- |
| `cwd` | cyan | `{ fg = tan }` (like Title) |
| `find_keyword` | yellow bold italic underline | `{ fg = br_blue, bold, underline }` (like Search) |
| `find_position` | magenta | `{ fg = blue_gray, bg = "reset", italic }` |
| `symlink_target` | italic | `{ fg = darker_bluer_gray, italic }` |
| `marker_copied` / `_cut` / `_marked` / `_selected` | lightgreen/red/cyan/yellow | `green` / `red` / `lavender #9F97CC` / `yellow`, fg and bg the same |
| `count_copied` / `_cut` | white on green/red | `{ fg = bg, bg = green }` / `{ fg = bg, bg = red }` |
| `count_selected` | black on yellow | `{ fg = black, bg = yellow }` |
| `border_symbol` | `│` | keep |
| `border_style` | gray | `{ fg = blue_mid_gray }` (try `dark_gray` too, since `#36363A` may be too faint for pane splits) |
| `syntect_theme` | | ignored for flavors, so leave it out |

### `[indicator]`: the hovered row

| Key | Preset | Proposed |
| --- | --- | --- |
| `current` | reversed | `{ bg = blue_dark_gray #2F2F3A }` (CursorLine, text keeps its own colour) |
| `parent` | reversed | `{ bg = blue_darkest_gray #171729 }` (one step quieter) |
| `preview` | underline | keep `{ underline = true }` |
| `padding` | none | keep |

**Decided:** grey, not indigo. This keeps the meaning the same as Neovim, where the cursor is grey and the selection is indigo. In Yazi the selection is the yellow marker bar, and indigo is used only for select mode (`v`), which really is Visual.

### `[tabs]` and `[mode]`

| Key | Proposed |
| --- | --- |
| `tabs.active` | `{ fg = light_gray, bg = status, bold }` |
| `tabs.inactive` | `{ fg = mid_gray, bg = darker_gray }` |
| `tabs.sep_inner` / `sep_outer` | keep preset |
| `mode.normal_main` / `_alt` | `{ fg = bg, bg = blue_gray, bold }` / `{ fg = blue_gray, bg = status }` |
| `mode.select_main` / `_alt` | `{ fg = light_gray, bg = indigo, bold }` / `{ fg = br_indigo #8859FF, bg = status }` (select is like visual mode, so it gets the indigo family) |
| `mode.unset_main` / `_alt` | `{ fg = bg, bg = orange, bold }` / `{ fg = orange, bg = status }` |

### `[status]`

| Key | Proposed |
| --- | --- |
| `overall` | `{ fg = mid_gray, bg = status }` (like StatusLine). Optional, since the preset leaves it empty. |
| `sep_left` / `sep_right` | leave to the preset. Your `theme.toml` already blanks them. |
| `perm_type` / `read` / `write` / `exec` / `sep` | `blue_gray` / `mid_gray_alt2` / `orange` / `green` / `mid_dark_gray` (quieter than the preset's rainbow) |
| `progress_label` | `{ fg = light_gray, bold }` |
| `progress_normal` | `{ fg = blue_gray, bg = dark_gray }` |
| `progress_error` | `{ fg = red, bg = off_red }` |

### Popups: `[which]`, `[confirm]`, `[spot]`, `[pick]`, `[input]`, `[cmp]`, `[tasks]`, `[help]`, `[notify]`

The shared rule: every `border` is `{ fg = dark_gray }` (FloatBorder), every `title` is `{ fg = tan }`, and anything "chosen" is `{ fg = black, bg = yellow }` (PMenuSel).

| Section | Keys | Proposed |
| --- | --- | --- |
| `which` | `cand` / `rest` / `desc` / `separator_style` / `mask` | `yellow` / `mid_dark_gray` / `mid_gray_alt2` / `mid_dark_gray` / `{ bg = blue_dark_float2 }` |
| `confirm` | `btn_yes` / `btn_no` / `body` / `list` | PMenuSel / `{}` / `{}` / `{}` |
| `spot` | `tbl_col` / `tbl_cell` | `blue_gray` / PMenuSel |
| `pick` | `active` / `inactive` | PMenuSel / `{ fg = mid_gray_alt }` |
| `input` | `value` / `selected` | `{ fg = light_gray }` / `{ bg = dark_indigo }` |
| `cmp` | `active` / `inactive` | PMenuSel / `{ fg = mid_gray_alt }` |
| `tasks` | `hovered` | `{ fg = yellow, bold }` |
| `help` | `chord` / `action` / `hovered` | `yellow` / `mid_gray_alt2` / `{ fg = light_gray, bg = dark_indigo, bold }` |
| `notify` | `title_info` / `_warn` / `_error` | `bright_green` / `orange` / `red` |

The Neovim floats use `blue_dark_float2` as their background. Yazi popups have no bg key apart from `which.mask`, so the popup colour will mostly be the terminal background.

**Schema changes to watch:**

- `[help]` replaced `on`/`run`/`footer` with `chord`/`action` in 26.5.6. The official Catppuccin flavor still uses the old keys, so don't copy from it blindly.
- The unreleased changelog adds `[rg]`/`[fd]` sections (`title`, `position`) to `theme.toml`, so expect a small update after 26.9.1.

### `[filetype]`: file name colours

The preset colours images yellow, media magenta, archives red and documents cyan. That doesn't suit modern ("don't put in meaning where there wasn't any").

**Decided:** minimal plus metadata. Directories and plain files get the normal colours, and only facts about the file itself get a colour: executable, symlink, broken, dotfile. File formats get no colour, since the extension already tells you.

```toml
[filetype]
rules = [
  { mime = "vfs/{absent,stale}", fg = "#57575E" },   # mid_dark_gray
  { url = "*", is = "orphan", fg = "#FF3600" },      # red
  { url = "*", is = "dummy", bg = "#210802" },       # off_red
  { url = "*/", is = "dummy", bg = "#210802" },
  { url = "*", is = "exec", fg = "#859933" },        # green
  { url = "*", is = "link", fg = "#8BCCBF" },        # bright_cyan
  { url = "**/.*/", fg = "#707082" },                # dot-dirs = darker_bluer_gray
  { url = "**/.*", fg = "#787882" },                 # dotfiles = mid_gray
  { url = "*/", fg = "#99A4BC" },                    # dirs = blue_gray (Directory)
  { url = "*", fg = "#A1A1A9" },                     # everything else = Normal fg
]
```

Glob behaviour, checked in `yazi-config/src/pattern.rs` at v26.9.1:

- `url` patterns match against the **full path**, so a bare `".*"` never matches. Use `**/.*`, which turns on literal separators so `*` stops at `/`.
- A trailing `/` means the rule only matches directories, so dot-dirs need their own `**/.*/` rule.
- `"*"` and `"*/"` are special-cased to match every file and every directory.
- Order still to confirm live: these rules assume first match wins, so `exec`/`link` beat the dotfile dimming. Swap the order if you'd rather an executable dotfile showed dimmed.

### `[icon]`

Yazi ships the full nvim-web-devicons set with its own (rainbow) colours. You turn icons off in your own `theme.toml`, so this matters less for you, but a published flavor has to pick one:

1. **Only override `conds`** (folder, file, exec and link fallbacks in Falcon colours) and leave the brand colours on the per-extension icons. Cheap, but clashes with modern.
2. **Recolour the whole set.** The Catppuccin flavors do this with roughly 900 lines of `exts`/`files`/`dirs`. Only sensible if generated: take the preset list and map each icon's colour to the nearest of 4–6 Falcon colours, or to a single grey.
3. **Monochrome:** every icon gets `fg = blue_gray` for dirs and `mid_gray` for everything else.

**Decided:** (1) while `flavor.toml` is hand-written, then (3) monochrome once the shipwright runner exists. Monochrome matches the plain-filenames decision. (2) is out, because nearest-colour mapping brings back meaningless colour.

## Syntax highlighting (`tmtheme.xml`)

**Done (task 3):** `falcon-modern.yazi/tmtheme.xml` was built from the old `yazi/modern/tmtheme.xml.bak` draft (`yazi/modern/` is now removed; its `tmtheme.xml` was the stock "Ofer 1" sample).

How Yazi uses it, from `yazi-core/src/highlighter.rs` at v26.9.1:

- Only **foreground, bold, italic and underline** are used. The background line is commented out. So the global `background`, `lineHighlight`, `selection` and similar keys have no effect, and diff entries that only set a background show nothing.
- Syntax definitions come from [yazi-rs/prebuilt](https://github.com/yazi-rs/prebuilt), which reuses bat's syntax sources (Babel for JS, sublimehq Packages, …). So `bat --theme` with the tmTheme is a faithful preview. Remember to pass `--italic-text=always`, because bat hides italics by default.

Changes from the draft, all checked by rendering `corpus/` through bat:

- Fixed: `Variable` had `fontStyle = #a1a1a9`, now `foreground`. Dropped the first of two `JSON String` entries (it was overridden anyway).
- Aligned with `modern.lua`:
  - `constant.language` → `blue_gray` (like `@boolean`)
  - storage, types and classes → bold (`Type`, `@keyword.function`)
  - tag attributes → plain (`@tag.attribute`)
- Added:
  - conditionals italic (`Conditional`)
  - `keyword.operator` → `darker_tanner`
  - `punctuation` → `mid_gray`, but string quotes stay string-coloured and comment markers stay comment-coloured
  - property and object keys → plain. This includes bat's older Babel scope `constant.other.object.key string.unquoted.label`.
  - markdown heading (`tan`, bold), bold, italic, raw and link
- JSON: key quotes grey and value quotes string-coloured, for both the old (`meta.structure.dictionary`) and new (`meta.mapping`) JSON syntaxes.
- Diffs: since Yazi drops backgrounds, `markup.inserted` / `deleted` / `changed` also get `green` / `red` / `orange` foregrounds.

Markdown previews: your `yazi.toml` sends `*.md` through `piper` and `glow -s=dark`, so the tmTheme doesn't affect markdown. Pointing that at `glow/falcon_modern.json` (`glow -s ~/…/falcon/glow/falcon_modern.json`) is a one-line change that makes the previews match. It isn't part of the flavor, but worth noting in its README.

`LICENSE-tmtheme`: the theme is original Falcon work, so it's MIT, the same as the repo `LICENSE`. Just copy it.

## Hand-written or generated

The repo already uses lush **shipwright** (`lua/falcon/shipwright/runners/*.lua`) to generate terminal configs from `colours`. There's no yazi transform, but a transform is just a function that returns lines, so a template works.

| | Hand-written | Shipwright runner |
| --- | --- | --- |
| Effort to v1 | Lowest | Small extra: a `runners/yazi.lua` and a TOML template |
| Palette changes | Synced by hand | Picked up automatically |
| Icon recolouring (option 3) | Impractical | Easy: loop over the preset list |
| tmTheme | Hand-edit XML | Could later render from the same scope→colour table |

**Decided:** hand-tune `flavor.toml` live first, since tuning is the slow part. Once the values settle, move them into `runners/yazi.lua`. From then on the runner is the source of truth, and `flavor.toml` is its output. `tmtheme.xml` stays hand-edited for now.

Runner design: pass the role→colour mapping in as a table instead of hardcoding it, so a classic flavor later is a second table, not a rewrite.

## Workflow and testing

1. `mkdir yazi/falcon-modern.yazi`, then `ln -s "$PWD/yazi/falcon-modern.yazi" ~/.config/yazi/flavors/falcon-modern.yazi`.
2. Add `[flavor] dark = "falcon-modern"` at the top of `~/.config/yazi/theme.toml` and keep your existing overrides below it.
3. Live reload: 26.x added an `app:theme` action that hot-reloads themes and flavors. Bind it in `keymap.toml` while iterating.
4. Check the schema: `brew install taplo`, then `taplo check --schema https://yazi-rs.github.io/schemas/theme.json flavor.toml`. taplo 0.10.0 is installed, and `flavor.toml` passes (2026-10-27). Add `#:schema https://yazi-rs.github.io/schemas/theme.json` at the top of `flavor.toml` for LSP completion in Neovim.
5. Syntax check: browse `corpus/` in Yazi. It has samples in about 25 languages, so it's an instant tmTheme test bed.
6. Things to exercise for each component:
   - yank/cut/select (markers and counts)
   - `v` select mode, and `V` unset mode
   - `/` find
   - `.` hidden files
   - `~` help, `w` tasks
   - a confirm on delete
   - `O` "open with" picker (the `[pick]` styles)
   - `Tab` spotter
   - a broken symlink
   - a long copy for the progress bar
7. `preview.png`: screenshot about 600px wide with the preview pane showing code. It's required (see the six-files gotcha above).

## What it involves: task list

1. Create `yazi/falcon-modern.yazi/` from flavor-template. Copy `LICENSE` twice (as `LICENSE` and `LICENSE-tmtheme`).
2. Write `flavor.toml` from the mapping tables above, with hex values only. For `[icon]`, override `conds` only.
3. Fix the tmTheme: move the `.bak` draft to `falcon-modern.yazi/tmtheme.xml`, fix the bugs, add the missing scopes. Then delete `yazi/modern/` (the sample, the stock `tmtheme.xml` and the `.bak`).
4. Symlink, enable, then tune live, starting with `border_style`, the indicator greys and the `[filetype]` rule order.
5. Validate with taplo.
6. Write the README (include a note on transparency under kitty), take `preview.png`.
7. Move it into a table-driven `runners/yazi.lua`, and generate monochrome icons.
8. Update TODO.md: tick off "Yazi colour scheme" and "New themes, yazi", and add "publish yazi flavor (`ya pkg`)" to v3 release.

Rough effort: steps 1–6 are an evening. Most of the time goes on live tuning and the tmTheme scope pass. Step 7 is another session.

## Decisions

Settled 2026-10-27.

| # | Question | Decision |
| --- | --- | --- |
| 1 | Where it lives | `yazi/falcon-modern.yazi/` in this repo, symlinked into `~/.config/yazi/flavors/`. Publishing for `ya pkg` (separate repo or repo root) is deferred to the v3 release. |
| 2 | Hand-written or generated | Hand-write while tuning, then move to a table-driven shipwright runner, which becomes the source of truth. tmTheme stays hand-edited. |
| 3 | Hovered row | Grey: `current` = `blue_dark_gray`, `parent` = `blue_darkest_gray`, `preview` = underline. Indigo is reserved for select mode. |
| 4 | Filename colours | Minimal plus metadata: dirs `blue_gray`, files `mid_gray_alt2`, exec `green`, symlink `bright_cyan`, broken `red`, dotfiles `mid_gray`, dot-dirs `darker_bluer_gray`. No per-format colours. |
| 5 | Icons | Falcon colours on fallback icons (`conds`) only for now. Monochrome full set once the runner exists. |
| 6 | Transparency | None for v1. `[app] overall` stays empty. Look at it first, and design multi-transparency across tools later. |
| 7 | Classic flavor | Not now. Keep the name `falcon` free, call this one `falcon-modern`, and make the runner table-driven so classic stays cheap. |

## Sources

- Yazi preset theme at v26.9.1: `sxyazi/yazi/yazi-config/preset/theme-dark.toml`
- Theme reference: https://yazi-rs.github.io/docs/configuration/theme
- Flavor docs: https://yazi-rs.github.io/docs/flavors/overview
- `ya pkg` docs: https://yazi-rs.github.io/docs/cli
- `ya pkg` source (subdir and file rules): `sxyazi/yazi/yazi-cli/src/package/{dependency,deploy}.rs` at v26.9.1
- Template: https://github.com/yazi-rs/flavor-template
- Reference flavors: https://github.com/yazi-rs/flavors
- Changelog (theme key renames): `sxyazi/yazi/CHANGELOG.md`
