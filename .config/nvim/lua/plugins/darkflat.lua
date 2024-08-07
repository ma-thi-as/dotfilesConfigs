return {
    {
        "sekke276/dark_flat.nvim",
        config = function()
            require("dark_flat").setup({
                transparent = true,  -- enable transparent window
                colors = {
                    light_gray = "#ffffff", -- add new color
                    pink = "#ec6075", -- replace default color
                },
                italics = true, -- disable italics
            })
        end,
    }
}

