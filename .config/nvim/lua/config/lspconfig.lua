local lspconfig = require('lspconfig')

lspconfig.arduino_language_server.setup {} -- Arduino
lspconfig.basedpyright.setup {}            -- Python
lspconfig.bashls.setup {}                  -- Bash / ZSH
lspconfig.biome.setup {}                   -- JSON / JS
lspconfig.clangd.setup {}                  -- C / C++
lspconfig.cssls.setup {}                   -- CSS
lspconfig.dockerls.setup {}                -- Docker
lspconfig.html.setup {}                    -- HTML
lspconfig.hyprls.setup {}                  -- Hypr configs
lspconfig.lua_ls.setup {}                  -- Lua
lspconfig.markdown_oxide.setup {}          -- Markdown (Obsidian)
lspconfig.systemd_ls.setup {}              -- Systemd
lspconfig.textlsp.setup {}                 -- Text / LATEXT
lspconfig.taplo.setup {}                   -- TOML
lspconfig.yamlls.setup {}                  -- YAML
