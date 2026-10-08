return {
  "junegunn/vim-easy-align",
  cmd = "EasyAlign",
  keys = {
    { "ga", "<Plug>(EasyAlign)", mode = { "n", "x" }, desc = "Align text" },
  },
  init = function()
    vim.g.easy_align_delimiters = {
      ["<"] = { pattern = "<-" },
    }
  end,
}
