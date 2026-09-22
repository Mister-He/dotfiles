local function set_win_separator()
  local normal = vim.api.nvim_get_hl(0, {
    name = "Normal",
    link = false,
  })

  vim.api.nvim_set_hl(0, "WinSeparator", {
    fg = normal.fg,
    bold = true,
  })
end

set_win_separator()

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_win_separator,
})
