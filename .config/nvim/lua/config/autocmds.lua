local function set_window_separator()
  vim.api.nvim_set_hl(0, "WinSeparator", {
    fg = "#f9e2af",
    bold = true,
  })
end

set_window_separator()

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_window_separator,
})
