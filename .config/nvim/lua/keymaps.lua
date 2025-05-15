-- INFO: Declare the leader key here
vim.g.mapleader = " "

-- define common options
local opts = { noremap = true, silent = true } -- do not show message  & non-recursive

-- define variable --> 'map'
local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, opts)
end

local bufopts = { noremap = true, silent = true, buffer = bufnr } -- do not show message & non-recursive
local function lspmap(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, opts)
end

-- Save Buffer
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit NeoVim
map("n", "<leader>q", "<CMD>q<CR>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree reveal<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

--LSP diagnostics floating window
map("n", "<leader>d", "<CMD>lua vim.diagnostics.open_float()<CR>")

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Resize with arrows
-- delta: 2 lines
map('n', '<C-Up>', ':resize -2<CR>')
map('n', '<C-Down>', ':resize +2<CR>')
map('n', '<C-Left>', ':vertical resize -2<CR>')
map('n', '<C-Right>', ':vertical resize +2<CR>')

-----------------
-- Visual mode --
-----------------
-- INFO: start visual mode with the same area as the previous area and the same mode
map('v', '<', '<gv')
map('v', '>', '>gv')

-----------------
-- LSP keymaps --
-----------------
local on_attach = function(client, bufnr)
    lspmap('n', 'gD', vim.lsp.buf.declaration, bufopts)
    lspmap('n', 'gd', vim.lsp.buf.definition, bufopts)
    lspmap('n', 'K', vim.lsp.buf.hover, bufopts)
    lspmap('n', 'lr', vim.lsp.buf.rename, bufopts)
    lspmap('n', '<space>lf', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- Telescope keymaps

-- local builtin = require('telescope.builtin')

-- map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

------------------------
-- ToggleTerm keymaps --
------------------------
function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    map('t', '<esc>', [[<C-\><C-n>]])
    map('t', 'jk', [[<C-\><C-n>]])
    map('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
    map('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
    map('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
    map('t', '<C-l>', [[<Cmd>wincmd l<CR>]])
    map('t', '<C-w>', [[<C-\><C-n><C-w>]])
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
