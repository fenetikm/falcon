local lush = require('lush')
local hsl = lush.hsl

local styles = {
  bold = "bold",
  italic = "italic"
}

function style(s)
  local r = {}
  for _,si in ipairs(s) do
  end
end

local red               = hsl('#FF3600')
local mid_red           = hsl('#9E1E00')
local orange            = hsl('#FF761A')
local yellow            = hsl('#FFC552')
local mid_yellow        = hsl('#BC8F3F')
local green             = hsl('#859933')
local mid_green         = hsl('#666D26')
local light_blue_gray   = hsl('#C8D0E3')
local blue_gray         = hsl('#99A4BC')
local blue_mid_gray     = hsl('#4F4F59')
local blue_dark_gray    = hsl('#2F2F3A')
local blue_darkest_gray = hsl('#171729')
local blue_dark_float   = hsl('#18182A')
local blue_dark_float2  = hsl('#1E1E2F')
local dark_tan          = hsl('#847B73')
local tan               = hsl('#CFC1B2')
local br_tan            = hsl('#F0E1CE')
local br_blue           = hsl('#BFDAFF')
local white             = hsl('#F8F8FF')
local light_gray        = hsl('#DFDFE5')
local normal_gray       = hsl('#B4B4B9')
local mid_gray_alt      = hsl('#878791')
local mid_gray          = hsl('#787882')
local mid_dark_gray     = hsl('#57575E')
local dark_gray         = hsl('#36363A')
local darker_gray       = hsl('#212127')
local black             = hsl('#000004')
local bg                = hsl('#020221')
local bg_alt            = hsl('#0A0A29')
local inactive_bg       = hsl('#151521')
local purple_dark_gray  = hsl('#3F3A59')
local purple            = hsl('#635196')
local lavender          = hsl('#9F97CC')
local status            = hsl('#28282D')
local inactive_status   = hsl('#1C1C22')
local off_red           = hsl('#300E03')
local off_blue          = hsl('#031630')
local off_green         = hsl('#203003')
local dark_indigo       = hsl('#2D1078')
local indigo            = hsl('#5521D9')
local br_indigo         = hsl('#8859FF')
local cyan              = hsl('#34BFA4')
local bright_red        = hsl('#FF8E78')
local bright_green      = hsl('#B2BC55')
local bright_yellow     = hsl('#FFD392')
local bright_orange     = hsl('#FFB07B')
local bright_cyan       = hsl('#8BCCBF')

local theme = lush(function()
  return {
    -- ColorColumn  { }, -- Columns set with 'colorcolumn'
    -- Conceal      { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- Character under the cursor
    -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory    { }, -- Directory names (and other special names in listings)
    -- DiffAdd      { }, -- Diff mode: Added line |diff.txt|
    -- DiffChange   { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete   { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    -- ErrorMsg     { }, -- Error messages on the command line
    -- VertSplit    { }, -- Column separating vertically split windows
    -- Folded       { }, -- Line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    -- SignColumn   { }, -- Column where |signs| are displayed
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    -- LineNr       { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- MatchParen   { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Normal       { }, -- Normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    -- Pmenu        { }, -- Popup menu: Normal item.
    -- PmenuSel     { }, -- Popup menu: Selected item.
    -- PmenuSbar    { }, -- Popup menu: Scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine   { }, -- Status line of current window
    -- StatusLineNC { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine      { }, -- Tab pages line, not active tab page label
    -- TabLineFill  { }, -- Tab pages line, where there are no labels
    -- TabLineSel   { }, -- Tab pages line, active tab page label
    -- Title        { }, -- Titles for output from ":set all", ":autocmd" etc.
    -- Visual       { }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   { }, -- Warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { }, -- Current match in 'wildmenu' completion
    ColorColumn {bg = inactive_bg},
    Conceal { },
    Cursor {bg = mid_gray},
    CursorIM { },
    CursorColumn {bg = blue_darkest_gray},
    CursorLine {bg = blue_dark_gray},
    CursorLineNr {fg = normal_gray, bg = blue_dark_gray},
    Directory {fg = blue_gray},
    DiffAdd {bg = off_green},
    DiffChange {bg = off_blue},
    DiffDelete {bg = off_red},
    DiffText {bg = off_green},
    ErrorMsg {fg = red},
    VertSplit {fg = mid_gray},
    Folded {fg = mid_gray, bg = darker_gray},
    FoldColumn {fg = mid_gray, bg = darker_gray},
    SignColumn {fg = blue_gray},
    IncSearch {fg = bg, bg = br_blue b},
    LineNr {fg = mid_dark_gray},
    MatchParen {fg = br_tan, - b},
    ModeMsg {},
    MoreMsg {},
    NonText {fg = dark_gray, bg = bg},
    Normal {fg = normal_gray, bg = bg},
    PMenu {fg = mid_gray_alt, bg = blue_dark_float},
    PMenuSel {fg = black yellow},
    PmenuSbar {fg = normal_gray},
    PmenuThumb {fg = light_gray},
    Question {fg = light_gray},
    Search {fg = br_blue - bu},
    SpecialKey {fg = mid_gray},
    SpellBad {bg = purple_dark_gray u},
    SpellLocal {bg = purple_dark_gray u},
    SpellCap {bg = purple_dark_gray c},
    SpellRare {bg = purple_dark_gray u},
    StatusLine {fg = mid_gray, bg = status},
    StatusLineNC {fg = mid_gray, bg = dark_gray},
    TabLine {fg = mid_gray, bg = dark_gray},
    TabLineFill {bg = darker_gray},
    TabLineSel {fg = light_gray -},
    Title {fg = tan},
    Visual {fg = light_gray, bg = dark_indigo},
    VisualNOS {},
    WarningMsg {},
    WildMenu {fg = bg, bg = yellow},

  }
)
