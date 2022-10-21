--[[
Module for configuring the "mason.nvim" plugin.

The plugin is used for installing LSP servers, formatters, linters & so on
more easily from within Neovim (or automatically).
--]]

local M = {}

-- Basic configuration for the "mason.nvim" plugin
function M.config()
	local mason = require("mason")

	mason.setup({
		-- Necessary Neovim settings to debug the "mason.nvim" plugin
		-- better with extra information.
		log_level = vim.log.levels.DEBUG,
	})
end

-- "mason.nvim" plugin which auto-installs the necessary tools
-- like LSP servers, linters, formatters & so on.
function M.install_servers()
	local installer = require("mason-tool-installer")

	-- Following are the list of servers which will be auto-installed
	-- as a must've after the core "mason.nvim" plugin ins installed.
	installer.setup({
		ensure_installed = {
			"lua-language-server",
			"stylua",
			"selene",
		},
	})
end

return M
