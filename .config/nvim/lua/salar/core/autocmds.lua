local function transparent_background()
  local groups = {
    "Normal",
    "NormalNC",
    "SignColumn",
    "EndOfBuffer",
    "NormalFloat",
    "FloatBorder",
  }

  for _, group in ipairs(groups) do
    local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
    hl.bg = nil
    hl.ctermbg = nil
    vim.api.nvim_set_hl(0, group, hl)
  end
end

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("TransparentBackground", { clear = true }),
  callback = transparent_background,
})

transparent_background()

-- Let lazygit to quit with simple "q"
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lazygit",
  callback = function(args)
    vim.keymap.set("n", "q", function()
      local buf = vim.api.nvim_get_current_buf()
      local chan = vim.bo[buf].channel
      if chan and chan ~= 0 then
        vim.fn.chansend(chan, "q")
      else
        vim.api.nvim_win_close(0, true)
      end
    end, { buffer = args.buf, desc = "退出 LazyGit" })
  end,
})
