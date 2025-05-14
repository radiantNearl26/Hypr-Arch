-- Default NeoVim configuration files
require('options')
require('keymaps')
require('lazy-nvim')
require('colorscheme')
require('completion')
require('autocmds')
require('lsp-handlers')

-- Plugin config files
require('config.lualine')
require('config.spectre')
require('config.dressing')
require('config.mason')
-- require('config.null-ls')
require('config.lspconfig')
require('config.neo-tree')
require('config.alpha')
require('config.lspkind')

-- Plugin single-line config (didnt created config file for a single-line)
require("toggleterm").setup{}
require("bufferline").setup{}
-- require("pywal").setup{}


