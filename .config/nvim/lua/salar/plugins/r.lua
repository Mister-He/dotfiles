return {
  {
    "R-nvim/R.nvim",
    opts = function(_, opts)
      opts.R_app = "radian"
      opts.R_cmd = "R"
      opts.R_args = {}
      opts.bracketed_paste = true

      opts.hook = opts.hook or {}

      opts.hook.on_filetype = function()
      	-- When cursor is under normal mode, send the line
        vim.keymap.set("n", "<CR>", "<Plug>RDSendLine", {
          buffer = true,
          desc = "Send current line to R",
        })

	-- When cursor is under visual mode, send the selectd code
        vim.keymap.set("v", "<CR>", "<Plug>RSendSelection", {
          buffer = true,
          desc = "Send selection to R",
        })
      end

      -- Fixed height and width for R console
      opts.rconsole_pos = "below"
      opts.rconsole_height = 15

      -- DataFrame viewer
      opts.view_df = {
        open_app = "tmux new-window sheets",
        n_lines = 0,
      }
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
