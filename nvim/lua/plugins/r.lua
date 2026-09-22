return {
  {
    "R-nvim/R.nvim",
    opts = function(_, opts)
      opts.R_app = "radian"
      opts.R_cmd = "R"
      opts.R_args = {}
      opts.bracketed_paste = true

      -- DataFrame viewer
      opts.view_df = opts.view_df or {}
      opts.view_df.open_app = "tmux new-window vd"
      opts.view_df.n_lines = 0
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        r_language_server = {
          mason = false,
          enabled = false,
        },
      },
    },
  },
}
