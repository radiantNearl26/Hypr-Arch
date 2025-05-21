local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Autocmds here:
vim.api.nvim_create_autocmd("VimEnter", {
    group = augroup("autoupdate"),
    callback = function()
        if require("lazy.status").has_updates then
            require("lazy").update({ show = false, })
        end
    end,
})

-- Usercmds here:
local function print_installed_packages()
  local installed_packages = require("mason-registry").get_installed_packages()
  for _, package in pairs(installed_packages) do
    for _, type in pairs(package.spec.categories) do
	  if type == "LSP" then
          print(package.name)
	  end
	end
  end
end
vim.api.nvim_create_user_command("MasonPackages", print_installed_packages, {})

