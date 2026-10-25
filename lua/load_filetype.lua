return {
  load = function(config)
    vim.api.filetype = true

    for pattern,func in pairs(config) do
      if pattern and func then
        vim.api.nvim_create_autocmd({"FileType"}, {
          pattern = pattern,
          callback = function()
            func()
          end
        })
      end
    end
  end
}
