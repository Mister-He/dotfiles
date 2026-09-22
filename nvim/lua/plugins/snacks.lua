return {
  {
    "folke/snacks.nvim",
    opts = {
      dim = {
        enabled = true,
      },
      image = {
        enabled = true,
      },
    },
    init = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        callback = function()
          Snacks.dim.enable()
        end,
      })
    end,
  },
}
