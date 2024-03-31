local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",
        "vimdoc",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",

        -- linux hacking
        "python",

       -- low level
        "c",
        "rust",
        "zig"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "ruff-lsp",
        "rust-analyzer",
      },
    },
  },
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gedit", "Gsplit", "Gdiffsplit" },
  },
  {
    "sbdchd/neoformat",
    cmd = { "Neoformat" },
  },
}
return plugins
