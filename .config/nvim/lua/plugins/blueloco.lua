return {
    'uloco/bluloco.nvim',
    lazy = true,
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
        require("bluloco").setup({
            style = "light",
            transparent = false,
            italics = false,
            terminal = vim.fn.has("gui_running") == 1,
            guicursor   = true,
        })
    end,
}
