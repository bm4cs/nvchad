local M = {}

M.general = {
    n = {
        ["<leader>fx"] = { ":Neoformat<CR>", "Format current buffer", opts = { nowait = true } },
    }
}

-- local map = vim.keymap.set
--
-- map("n", "<leader>fx", "<cmd>Neoformat<CR>", { desc = "Neoformat Format current buffer" })

return M
