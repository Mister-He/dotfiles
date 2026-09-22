-- return {
--   {
--     -- This is the color palette I am using now
--     -- And the windowseparator will use the yellow color in the palette
--     "folke/tokyonight.nvim",
--     opts = {
--       on_highlights = function(hl, colors)
--         hl.WinSeparator = {
--           fg = colors.yellow,
--           bold = true,
--         }
--       end,
--     },
--   },
-- }
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      flavour = "mocha",
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
