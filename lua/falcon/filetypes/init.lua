local lush = require('lush')

local filetypes = {
    'aspvbs',
    'cpp',
    'css',
    'docker',
    'elm',
    'go',
    'graphql',
    'help',
    'html',
    'java',
    'javascript',
    'json',
    'jsx',
    'lua',
    'markdown',
    'php',
    'python',
    'rst',
    'ruby',
    'sh',
    'sql',
    'sshconfig',
    'twig',
}

local loaded_filetypes = {}
for index, filetype in pairs(filetypes) do
    loaded_filetypes[index] = require('falcon.filetypes.' .. filetype)
end

return lush.merge(loaded_filetypes)
