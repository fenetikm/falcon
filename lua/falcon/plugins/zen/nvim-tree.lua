local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        NvimTreeSymlink          {},
        NvimTreeFolderName       {fg = colours.blue_gray},
        NvimTreeRootFolder       {fg = colours.blue_gray},
        NvimTreeFolderIcon       {fg = colours.blue_gray},
        NvimTreeEmptyFolderName  {fg = colours.blue_gray},
        NvimTreeOpenedFolderName {fg = colours.blue_gray, gui = styles.bold},
        NvimTreeOpenedFile       {fg = colours.br_blue, gui = styles.underline},
        NvimTreeExecFile         {},
        NvimTreeSpecialFile      {},
        NvimTreeImageFile        {},
        NvimTreeMarkdownFile     {},
        NvimTreeIndentMarker     {},
        NvimTreeLspDiagnostics   {},
        NvimTreeLicenseIcon      {},
        NvimTreeYamlIcon         {},
        NvimTreeTomlIcon         {},
        NvimTreeGitignoreIcon    {},
        NvimTreeJsonIcon         {},
        NvimTreeLuaIcon          {},
        NvimTreePythonIcon       {},
        NvimTreeShellIcon        {},
        NvimTreeJavascriptIcon   {},
        NvimTreeCIcon            {},
        NvimTreeReactIcon        {},
        NvimTreeHtmlIcon         {},
        NvimTreeRustIcon         {},
        NvimTreeVimIcon          {},
        NvimTreeTypescriptIcon   {},
        NvimTreeGitDirty         {fg = colours.orange},
        NvimTreeGitStaged        {fg = colours.orange},
        NvimTreeGitMerge         {fg = colours.yellow},
        NvimTreeGitRenamed       {fg = colours.yellow},
        NvimTreeGitNew           {fg = colours.green},
        NvimTreeGitDeleted       {fg = colours.red},
    }
end)

return p
