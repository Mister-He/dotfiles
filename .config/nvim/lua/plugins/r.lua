return {
  {
    "R-nvim/R.nvim",
    opts = function(_, opts)
      opts.R_app = "radian"
      opts.R_cmd = "R"
      opts.R_args = {}
      opts.bracketed_paste = true

      -- Fixed height and width for R console
      opts.rconsole_pos = "below"
      opts.rconsole_height = 15

      -- DataFrame viewer
      opts.view_df = opts.view_df or {}
      opts.view_df.open_app = "tmux new-window vd"
      opts.view_df.n_lines = 0
    end,

    -- keys = {
    --   {
    --     "<leader>rJ",
    --     function()
    --       vim.cmd("wincmd J")
    --       vim.cmd("resize 15")
    --     end,
    --     desc = "R console below (15 lines)",
    --   },
    --
    --   {
    --     "<leader>rL",
    --     function()
    --       vim.cmd("wincmd L")
    --       vim.cmd("vertical wincmd =")
    --     end,
    --     desc = "R console right (equal width)",
    --   },
    -- },
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
