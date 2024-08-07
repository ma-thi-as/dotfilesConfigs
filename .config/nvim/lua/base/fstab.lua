local M = {}

M.setup = function()
  -- General indentation settings
  vim.opt.expandtab = true      -- Use spaces instead of tabs
  vim.opt.shiftwidth = 4        -- Number of spaces to use for each step of (auto)indent
  vim.opt.softtabstop = 4       -- Number of spaces that a <Tab> counts for while performing editing operations
  vim.opt.tabstop = 4           -- Number of spaces that a <Tab> in the file counts for

  -- Enable auto-indentation
  vim.opt.smartindent = true    -- Automatically insert indents in some cases (e.g., after {)
  vim.opt.autoindent = true     -- Copy indent from the current line when starting a new line
  vim.opt.cindent = true        -- Enable C-style indentation

  -- Language-specific indentation settings
  vim.cmd([[
    autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
    autocmd FileType javascript,typescript setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
    autocmd FileType cs setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
  ]])
  -- Set the time (in milliseconds) after which CursorHold is triggered
vim.opt.updatetime = 1000  -- 1 second

-- Autocommand to save the file on CursorHold event
vim.cmd([[
  augroup AutoSave
    autocmd!
    autocmd CursorHold,FocusLost,BufLeave * silent! wall
  augroup END
]])
end

return M

