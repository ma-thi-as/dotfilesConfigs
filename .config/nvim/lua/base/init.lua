require("base.colors")
require("base.remap")

-- Cambiar el color de la barra de estado a letras blancas y fondo negro
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
-- Auto save
vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
        vim.cmd("silent! write")
    end,
})

