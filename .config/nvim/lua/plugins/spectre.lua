vim.g.mapleader = " "
vim.g.maplocalleader = " "

return {
    'nvim-pack/nvim-spectre',
    config = function()
        require('spectre').setup({
            -- Your custom settings here
            mapping = {
                -- Send the result to quickfix
                ['send_to_qf'] = {
                    map = "<leader>q",
                    cmd = "<cmd>lua require('spectre').send_to_qf()<CR>",
                    desc = "Send to quickfix"
                },
                -- Replace all
                ['replace_all'] = {
                    map = "<leader>ra",
                    cmd = "<cmd>lua require('spectre').replace_all()<CR>",
                    desc = "Replace all in files"
                },
                -- Replace current line
                ['replace_line'] = {
                    map = "<leader>rl",
                    cmd = "<cmd>lua require('spectre').replace_line()<CR>",
                    desc = "Replace line"
                }
            }
            --
        })
    end
}

