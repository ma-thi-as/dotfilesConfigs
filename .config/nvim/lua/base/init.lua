require("base.colors")
require("base.remap")
require("base.fstab").setup()
-- Cambiar el color de la barra de estado a letras blancas y fondo negro
vim.opt.number = true
vim.opt.relativenumber = true
-- Auto save
vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
        vim.cmd("silent! write")
    end,
})

function StatusBar()
    -- Configurar la barra de estado
    vim.cmd [[
    set statusline=%f\ %h%m%r\ %=%-14.(%l,%c%V%)\ %P
    ]]   
end

StatusBar()
