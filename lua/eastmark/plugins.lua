return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "eastmark.null-ls"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cpp",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "eastmark.lspconfig"
    end,
  },
}

