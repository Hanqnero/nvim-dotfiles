-- Load Lazy plugin manager --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	{"catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{"nvim-tree/nvim-tree.lua",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	"nvim-lualine/lualine.nvim",
	{"nvim-telescope/telescope.nvim",
		dependencies = {"nvim-lua/plenary.nvim"}
	},
	"nvim-treesitter/nvim-treesitter",
})

