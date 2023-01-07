require('vlajd.remap')
require('vlajd.set')

function color() 
  vim.cmd[[colorscheme monokaipro]]
  vim.g.monokaipro_filter = 'spectrum'
  vim.g.monokaipro_transparent = true
end

color()

