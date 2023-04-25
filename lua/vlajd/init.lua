require('vlajd.remap')
require('vlajd.set')

function Color() 
  vim.cmd[[colorscheme monokaipro]]
  vim.g.monokaipro_filter = 'spectrum'
  vim.g.monokaipro_transparent = true
end

Color()

