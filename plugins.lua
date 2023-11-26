local plugins = {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "rust-analyzer"
            }
        }
    },
    {
        "tpope/vim-fugitive",
        cmd = { "Git", "Gedit", "Gsplit", "Gdiffsplit" }
    }
}
return plugins
