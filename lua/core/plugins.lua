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

    "folke/which-key.nvim",
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    "folke/neodev.nvim",

    "ellisonleao/gruvbox.nvim",

    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",

    "nvim-lualine/lualine.nvim",

    "nvim-treesitter/nvim-treesitter",

    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            {"tsakirist/telescope-lazy.nvim"},
            {"nvim-lua/plenary.nvim"},
        }
    },

    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },

    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",

    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",

    "lukas-reineke/indent-blankline.nvim",

    "jiangmiao/auto-pairs"
})
