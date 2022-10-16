local lush = require('lush')
local hsluv = lush.hsluv

local styles = {
  italic = "italic",
  bold = "bold",
  underline = "underline",
  inverse = "inverse",
  undercurl = "undercurl",
  invert_signs = "",
  invert_selection = "inverse",
  invert_tabline = "",
  italic_comments = "italic",
  italic_booleans = "NONE",
  italic_strings = "NONE"
}

local red               = hsluv '#FF3600'
local mid_red           = hsluv '#9E1E00'
local orange            = hsluv '#FF761A'
local yellow            = hsluv '#FFC552'
local mid_yellow        = hsluv '#BC8F3F'
local green             = hsluv '#859933'
local mid_green         = hsluv '#666D26'
local light_blue_gray   = hsluv '#C8D0E3'
local blue_gray         = hsluv '#99A4BC'
local blue_mid_gray     = hsluv '#4F4F59'
local blue_dark_gray    = hsluv '#2F2F3A'
local blue_darkest_gray = hsluv '#171729'
local blue_dark_float   = hsluv '#18182A'
local blue_dark_float2  = hsluv '#1E1E2F'
local dark_tan          = hsluv '#847B73'
local tan               = hsluv '#CFC1B2'
local br_tan            = hsluv '#F0E1CE'
local br_blue           = hsluv '#BFDAFF'
local white             = hsluv '#F8F8FF'
local light_gray        = hsluv '#DFDFE5'
local normal_gray       = hsluv '#B4B4B9'
local mid_gray_alt      = hsluv '#878791'
local mid_gray          = hsluv '#787882'
local mid_dark_gray     = hsluv '#57575E'
local dark_gray         = hsluv '#36363A'
local darker_gray       = hsluv '#212127'
local black             = hsluv '#000004'
local bg_               = hsluv '#020221'
local bg_alt            = hsluv '#0A0A29'
local inactive_bg       = hsluv '#151521'
local purple_dark_gray  = hsluv '#3F3A59'
local purple            = hsluv '#635196'
local lavender          = hsluv '#9F97CC'
local status            = hsluv '#28282D'
local inactive_status   = hsluv '#1C1C22'
local off_red           = hsluv '#300E03'
local off_blue          = hsluv '#031630'
local off_green         = hsluv '#203003'
local dark_indigo       = hsluv '#2D1078'
local indigo            = hsluv '#5521D9'
local br_indigo         = hsluv '#8859FF'
local cyan              = hsluv '#34BFA4'
local bright_red        = hsluv '#FF8E78'
local bright_green      = hsluv '#B2BC55'
local bright_yellow     = hsluv '#FFD392'
local bright_orange     = hsluv '#FFB07B'
local bright_cyan       = hsluv '#8BCCBF'

local theme = lush(function()
  return {
    -- Base UI
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
    IncSearch {fg = bg_, bg = br_blue, gui = styles.bold},
    LineNr {fg = mid_dark_gray},
    MatchParen {fg = br_tan, gui = styles.bold},
    ModeMsg {},
    MoreMsg {},
    NonText {fg = dark_gray, bg = bg_},
    Normal {fg = normal_gray, bg = bg_},
    PMenu {fg = mid_gray_alt, bg = blue_dark_float},
    PMenuSel {fg = black, bg = yellow},
    PmenuSbar {fg = normal_gray},
    PmenuThumb {fg = light_gray},
    Question {fg = light_gray},
    Search {fg = br_blue, gui = styles.underline .. ',' .. styles.bold},
    SpecialKey {fg = mid_gray},
    SpellBad {bg = purple_dark_gray, gui = styles.underline},
    SpellLocal {bg = purple_dark_gray, gui = styles.underline},
    SpellCap {bg = purple_dark_gray, gui = styles.undercurl},
    SpellRare {bg = purple_dark_gray, gui = styles.underline},
    StatusLine {fg = mid_gray, bg = status},
    StatusLineNC {fg = mid_gray, bg = dark_gray},
    TabLine {fg = mid_gray, bg = dark_gray},
    TabLineFill {bg = darker_gray},
    TabLineSel {fg = light_gray},
    Title {fg = tan},
    Visual {fg = light_gray, bg = dark_indigo},
    VisualNOS {},
    WarningMsg {},
    WildMenu {fg = bg_, bg = yellow},

    -- Base syntax
    Comment {fg = mid_gray, gui = styles.italic},
    Constant {fg = normal_gray, gui = styles.bold},
    String {fg = light_blue_gray},
    Character {String},
    Boolean {fg = normal_gray, gui = styles.italic},
    Number {fg = normal_gray},
    Float {Number},
    Identifier {fg = blue_gray},
    Function {fg = yellow},
    Conditional {fg = yellow},
    Statement {fg = blue_gray},
    Exception {Statement},
    Repeat {Statement},
    Label {Statement},
    Operator {fg = orange},
    Keyword {fg = yellow},
    PreProc {fg = tan},
    Include {PreProc},
    Define {PreProc},
    Macro {PreProc},
    PreCondit {PreProc},
    Type {fg = light_gray},
    StorageClass {Type},
    Structure {Type},
    Typedef {Type},
    Special {fg = orange},
    SpecialChar {Special},
    Tag {Special},
    Delimiter {fg = light_gray},
    SpecialComment {Special},
    Debug {Special},
    Underlined {fg = blue_gray, gui = styles.underline},
    Ignore {},
    Error {},
    Todo {fg = bg_, bg = tan, gui = styles.italic},
    QuickFixLine {fg = br_blue, bg = dark_gray},
    Bold {gui = styles.bold},
    Italic {gui = styles.italic},

    -- Newer items
    lCursor { },
    EndOfBuffer {NonText}, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    FloatBorder {fg = dark_gray, bg = blue_dark_float2},
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    TermCursor   { }, -- Cursor in a focused terminal
    TermCursorNC { }, -- Cursor in an unfocused terminal
    Substitute   { }, -- |:substitute| replacement text highlighting
    NormalFloat  {bg = blue_dark_float2}, -- Normal text in floating windows. NormalNC     { }, -- normal text in non-current windows
    Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.

    -- LSP
    LspDiagnosticsDefaultError {fg = mid_red},
    LspDiagnosticsDefaultWarning {fg = mid_yellow},
    LspDiagnosticsDefaultInformation {fg = mid_gray},
    LspDiagnosticsDefaultHint {fg = dark_tan},
    LspReferenceRead {gui = styles.underline},
    LspReferenceText {gui = styles.underline},
    LspReferenceWrite {gui = styles.underline},
    LspDiagnosticsVirtualTextError {fg = mid_red, gui = styles.italic},
    LspDiagnosticsVirtualTextWarning {fg = mid_yellow, gui = styles.italic},
    LspDiagnosticsVirtualTextHint {fg = dark_tan, gui = styles.italic},
    LspDiagnosticsVirtualTextInformation {fg = mid_gray, gui = styles.italic},
    LspDiagnosticsUnderlineError {gui = styles.undercurl, guisp = mid_red},
    LspDiagnosticsUnderlineWarning {gui = styles.undercurl, guisp = mid_yellow},
    LspDiagnosticsUnderlineHint {gui = styles.undercurl, guisp = dark_tan},
    LspDiagnosticsUnderlineInformation {gui = styles.undercurl, guisp = mid_gray},
    DiagnosticSignError {fg = mid_red},
    DiagnosticSignWarn {fg = mid_yellow},
    DiagnosticSignInfo {fg = mid_gray},
    DiagnosticSignHint {fg = dark_tan},
    DiagnosticError {fg = mid_red},
    DiagnosticWarn {fg = mid_yellow},
    DiagnosticInfo {fg = mid_gray},
    DiagnosticHint {fg = dark_tan},
    ReferenceRead {gui = styles.underline},
    ReferenceText {gui = styles.underline},
    ReferenceWrite {gui = styles.underline},
    DiagnosticVirtualTextError {fg = mid_red, gui = styles.italic},
    DiagnosticVirtualTextWarn {fg = mid_yellow, gui = styles.italic},
    DiagnosticVirtualTextHint {fg = dark_tan, gui = styles.italic},
    DiagnosticVirtualTextInfo {fg = mid_gray, gui = styles.italic},
    DiagnosticUnderlineError {gui = styles.undercurl, guisp = mid_red},
    DiagnosticUnderlineWarn {gui = styles.undercurl, guisp = mid_yellow},
    DiagnosticUnderlineHint {gui = styles.undercurl, guisp = dark_tan},
    DiagnosticUnderlineInfo {gui = styles.undercurl, guisp = mid_gray},
  }
end)

return theme
