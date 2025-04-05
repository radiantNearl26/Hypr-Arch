local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.code_actions.proselint,
        null_ls.builtins.code_actions.refactoring,

        null_ls.builtins.completion.luasnip,
        null_ls.builtins.completion.nvim_snippets,
        null_ls.builtins.completion.spell,

        null_ls.builtins.diagnostics.cppcheck,
        null_ls.builtins.diagnostics.proselint,
        null_ls.builtins.diagnostics.pylint.with({
            diagnostics_postprocess = function(diagnostic)
            diagnostic.code = diagnostic.message_id
            end,
        }),
        null_ls.builtins.diagnostics.selene,
        null_ls.builtins.diagnostics.zsh,

        null_ls.builtins.formatting.astyle, 
        null_ls.builtins.formatting.biome,
        null_ls.builtins.formatting.ktlint,
        null_ls.builtins.formatting.blackd,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.sqlfmt,
        null_ls.builtins.formatting.yamlfmt,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.isort,

        null_ls.builtins.hover.dictionary,
        null_ls.builtins.hover.printenv,
    }
})
