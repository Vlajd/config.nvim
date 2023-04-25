local lsp = require('lsp-zero')

lsp.preset('recommended')

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<Down>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Tab>'] = cmp.mapping.confirm({ select = true })
})

vim.g.diagnostics_active = true
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = true,
      signs = true,
      underline = true,
    update_in_insert = false,
  }
)

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
end)

lsp.setup()
