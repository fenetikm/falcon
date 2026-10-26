<h3 align="center">
	Falcon Modern flavor for <a href="https://github.com/sxyazi/yazi">Yazi</a>
</h3>

The _modern_ variation of the [Falcon](https://github.com/fenetikm/falcon) colour scheme for Yazi.

## Preview

<img src="preview.png" width="600" />

## Installation

Link (or copy) this directory into your Yazi flavors directory:

```sh
ln -s /path/to/falcon/yazi/falcon-modern.yazi ~/.config/yazi/flavors/falcon-modern.yazi
```

## Usage

To set it as your dark flavor, add this to your `~/.config/yazi/theme.toml`:

```toml
[flavor]
dark = "falcon-modern"
```

Falcon has no light variant. If Yazi detects your terminal as light, it falls back to the preset light theme. To always use this flavor, also set `light = "falcon-modern"`.

Anything else in your `theme.toml` overrides this flavor. See the [Yazi flavor documentation](https://yazi-rs.github.io/docs/flavors/overview) for more details.

### Transparency

The flavor never sets the main background, so it works with both `kitty.falcon.modern.conf` and `kitty.falcon.modern_transparent.conf`.

## License

The flavor and its tmTheme are both MIT-licensed. See [LICENSE](LICENSE) and [LICENSE-tmtheme](LICENSE-tmtheme).
