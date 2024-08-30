require "nvchad.mappings"

local ToggleSignColumn = function()
    if vim.o.signcolumn == "yes" then
        vim.o.signcolumn =  "no"
        vim.wo.number = false
    else
        vim.o.signcolumn =  "yes"
        vim.wo.number = true
    end
end

local map = vim.keymap.set

map("n", "<leader>s", ToggleSignColumn)
