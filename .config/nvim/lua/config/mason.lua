-- protected calls
local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

-- Here we declare which settings to pass to the mason, and also ensure servers are installed. If not, they will be installed automatically.
local settings = {
    ui = {
        border = "rounded",
        icons = {
        package_installed = "◍",
        package_pending = "◍",
        package_uninstalled = "◍",
        },
    },
}

mason.setup(settings)
