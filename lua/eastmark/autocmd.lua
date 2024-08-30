-- Set different tabwidth for javascript and typescript
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "javascript", "typescript", "css", "json", "html", "yaml" },
    callback = function()
        vim.o.tabstop = 2
        vim.o.shiftwidth = 2
    end,
})

-- Expand tabs in make files
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "make" },
    callback = function()
        vim.o.expandtab = false
    end,
})

-- Mark all files in ssh condfig as sshconfigs
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile" }, {
    pattern = "*/.ssh/config.d/*",
    callback = function()
        vim.o.filetype = "sshconfig"
    end,
})

