return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      enabled = true,
      latex = {
        enabled = true,
      },
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      image = {
        math = {
          enabled = false,
        },
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft = opts.linters_by_ft or {}
      opts.linters_by_ft.markdown = {}
    end,
  },
}
