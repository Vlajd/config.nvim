return {
  [{"lua"}] = function()
    vim.opt.shiftwidth = 2
  end,
  [{"rust"}] = function()
    vim.opt.shiftwidth = 4
  end
}
