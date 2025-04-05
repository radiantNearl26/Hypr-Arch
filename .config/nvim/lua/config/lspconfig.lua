local lspconfig = require('lspconfig')

lspconfig.arduino_language_server.setup {}
lspconfig.ast_grep.setup {
    filetypes = { "c", "cpp", "rust", "go", "java", "python", "html", "css", "kotlin", "dart", "lua" },
}
lspconfig.bashls.setup {}
lspconfig.biome.setup {}
lspconfig.grammarly.setup {}
lspconfig.hyprls.setup {}
lspconfig.lemminx.setup {}
lspconfig.rubocop.setup {}
lspconfig.sqls.setup {}
lspconfig.systemd_ls.setup {}
lspconfig.taplo.setup {}
lspconfig.yamlls.setup {}
