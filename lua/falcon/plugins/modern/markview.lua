local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
  return {
    -- Palette 0: neutral / default
    MarkviewPalette0 { fg = colours.darker_bluer_gray, bg = colours.blue_dark_float },
    MarkviewPalette0Fg { fg = colours.darker_bluer_gray },
    MarkviewPalette0Bg { bg = colours.blue_dark_float },
    MarkviewPalette0Sign { fg = colours.darker_bluer_gray },

    -- Palette 1: red / error
    MarkviewPalette1 { fg = colours.red, bg = colours.off_red },
    MarkviewPalette1Fg { fg = colours.red },
    MarkviewPalette1Bg { bg = colours.off_red },
    MarkviewPalette1Sign { fg = colours.red },

    -- Palette 2: orange / warning
    MarkviewPalette2 { fg = colours.orange, bg = colours.off_red_alt },
    MarkviewPalette2Fg { fg = colours.orange },
    MarkviewPalette2Bg { bg = colours.off_red_alt },
    MarkviewPalette2Sign { fg = colours.orange },

    -- Palette 3: yellow / special
    MarkviewPalette3 { fg = colours.yellow, bg = colours.darkest_tan },
    MarkviewPalette3Fg { fg = colours.yellow },
    MarkviewPalette3Bg { bg = colours.darkest_tan },
    MarkviewPalette3Sign { fg = colours.yellow },

    -- Palette 4: green / ok
    MarkviewPalette4 { fg = colours.green, bg = colours.off_green },
    MarkviewPalette4Fg { fg = colours.green },
    MarkviewPalette4Bg { bg = colours.off_green },
    MarkviewPalette4Sign { fg = colours.green },

    -- Palette 5: blue / note
    MarkviewPalette5 { fg = colours.light_bluer_gray, bg = colours.off_blue },
    MarkviewPalette5Fg { fg = colours.light_bluer_gray },
    MarkviewPalette5Bg { bg = colours.off_blue },
    MarkviewPalette5Sign { fg = colours.light_bluer_gray },

    -- Palette 6: purple
    MarkviewPalette6 { fg = colours.lavender, bg = colours.darkest_indigo },
    MarkviewPalette6Fg { fg = colours.lavender },
    MarkviewPalette6Bg { bg = colours.darkest_indigo },
    MarkviewPalette6Sign { fg = colours.lavender },

    -- Code blocks
    MarkviewCode { bg = colours.blue_dark_float },
    MarkviewCodeInfo { fg = colours.darker_bluer_gray, bg = colours.blue_dark_float, gui = styles.italic },
    MarkviewCodeFg { fg = colours.mid_gray_alt2 },
    MarkviewInlineCode { fg = colours.light_bluer_gray, bg = colours.blue_dark_float },

    -- Headings
    MarkviewHeading1 { fg = colours.light_gray, gui = styles.bold },
    MarkviewHeading2 { fg = colours.normal_gray, gui = styles.bold },
    MarkviewHeading3 { MarkviewHeading1 },
    MarkviewHeading4 { MarkviewHeading1 },
    MarkviewHeading5 { MarkviewHeading1 },
    MarkviewHeading6 { MarkviewHeading1 },
    MarkviewHeading1Sign { MarkviewPalette1Sign },
    MarkviewHeading2Sign { MarkviewPalette2Sign },
    MarkviewHeading3Sign { MarkviewPalette3Sign },
    MarkviewHeading4Sign { MarkviewPalette4Sign },
    MarkviewHeading5Sign { MarkviewPalette5Sign },
    MarkviewHeading6Sign { MarkviewPalette6Sign },

    -- Block quotes / callouts
    MarkviewBlockQuoteDefault { MarkviewPalette0Fg },
    MarkviewBlockQuoteError { MarkviewPalette1Fg },
    MarkviewBlockQuoteWarn { MarkviewPalette2Fg },
    MarkviewBlockQuoteSpecial { MarkviewPalette3Fg },
    MarkviewBlockQuoteOk { MarkviewPalette4Fg },
    MarkviewBlockQuoteNote { MarkviewPalette5Fg },

    -- Checkboxes
    MarkviewCheckboxUnchecked { MarkviewPalette1Fg },
    MarkviewCheckboxChecked { MarkviewPalette4Fg },
    MarkviewCheckboxPending { MarkviewPalette2Fg },
    MarkviewCheckboxProgress { MarkviewPalette6Fg },
    MarkviewCheckboxCancelled { fg = colours.darker_bluer_gray, gui = styles.strikethrough },
    MarkviewCheckboxStriked { fg = colours.darker_bluer_gray, gui = styles.strikethrough },

    -- Lists
    MarkviewListItemMinus { MarkviewPalette2Fg },
    MarkviewListItemPlus { MarkviewPalette4Fg },
    MarkviewListItemStar { MarkviewPalette6Fg },

    -- Tables
    MarkviewTableHeader { fg = colours.light_gray, gui = styles.bold },
    MarkviewTableBorder { fg = colours.blue_mid_gray },
    MarkviewTableAlignLeft { fg = colours.darker_bluer_gray },
    MarkviewTableAlignCenter { fg = colours.darker_bluer_gray },
    MarkviewTableAlignRight { fg = colours.darker_bluer_gray },

    -- Links and media
    MarkviewHyperlink { fg = colours.light_bluer_gray, gui = styles.underline },
    MarkviewImage { fg = colours.lavender, gui = styles.underline },
    MarkviewEmail { fg = colours.light_bluer_gray, gui = styles.underline },

    -- Sub / superscript
    MarkviewSubscript { MarkviewPalette3Fg },
    MarkviewSuperscript { MarkviewPalette6Fg },

    -- Icons
    MarkviewIcon0 { MarkviewPalette0Fg },
    MarkviewIcon1 { MarkviewPalette1Fg },
    MarkviewIcon2 { MarkviewPalette2Fg },
    MarkviewIcon3 { MarkviewPalette3Fg },
    MarkviewIcon4 { MarkviewPalette4Fg },
    MarkviewIcon5 { MarkviewPalette5Fg },
    MarkviewIcon6 { MarkviewPalette6Fg },

    -- Gradient: dim -> bright, used for progressive emphasis
    MarkviewGradient0 { fg = colours.darker_bluer_gray },
    MarkviewGradient1 { fg = colours.blue_gray },
    MarkviewGradient2 { fg = colours.normal_gray },
    MarkviewGradient3 { fg = colours.mid_gray_alt2 },
    MarkviewGradient4 { fg = colours.light_bluer_gray },
    MarkviewGradient5 { fg = colours.light_blue_gray },
    MarkviewGradient6 { fg = colours.tan },
    MarkviewGradient7 { fg = colours.br_tan },
    MarkviewGradient8 { fg = colours.light_gray },
    MarkviewGradient9 { fg = colours.white },
  }
end)

return p
