require("jadoking")
-- Auto-cd into directory if nvim was opened with a directory
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv()[1]
    if arg and vim.fn.isdirectory(arg) == 1 then
      vim.cmd('cd ' .. arg)
    end
  end
})

vim.opt.termguicolors = true
