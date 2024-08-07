-- lua/plugins/tokyodark.lua
return {
  "tiagovla/tokyodark.nvim",
  opts = {
    -- Configuration options for the TokyoDark theme
    transparent_background = true, -- Set background to transparent
    gamma = 1.00, -- Adjust the brightness of the theme
    styles = {
      comments = { italic = true }, -- Style for comments
      keywords = { italic = true }, -- Style for keywords
      identifiers = { italic = true }, -- Style for identifiers
      functions = {}, -- Style for functions
      variables = {}, -- Style for variables
    },
    custom_highlights = {} or function(highlights, palette) return {} end, -- Extend highlights
    custom_palette = {} or function(palette) return {} end, -- Extend palette
    terminal_colors = true, -- Enable terminal colors
  },
  config = function(_, opts)
    require("tokyodark").setup(opts) -- Apply configuration options
    vim.cmd [[colorscheme tokyodark]] -- Set the colorscheme
  end,
}

