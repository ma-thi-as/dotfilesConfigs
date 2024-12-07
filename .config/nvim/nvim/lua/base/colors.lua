function ColorMyPencils()
    color = color or "default"
    vim.cmd.colorscheme("sorbet")
    vim.api.nvim_set_hl(0,"Normal", {bg="none"})
    vim.api.nvim_set_hl(0,"NormalFloat", {bg="none"})
    vim.cmd [[
	    highlight StatusLine guifg=#151515 guibg=#FF8F00
	    highlight StatusLineNC guifg=#000000 guibg=#697565
    ]]
end

-- Set the cursor to an underline in different modes
vim.opt.guicursor = {
    "n:hor30",  -- Normal mode cursor as an underline (30% height)
    "i:hor30",  -- Insert mode cursor as an underline (30% height)
    "v:hor30",  -- Visual mode cursor as an underline (30% height)
}

ColorMyPencils()
