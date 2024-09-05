local lsp_zero = require('lsp-zero')
local cmp = require('cmp')
local cmp_nvim_lsp = require('cmp_nvim_lsp')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')
local lspconfig = require('lspconfig')

lsp_zero.extend_lspconfig({
  sign_text = true,
  lsp_attach = function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
  end,
  capabilities = cmp_nvim_lsp.default_capabilities(),
})

mason.setup({})
mason_lspconfig.setup({
  handlers = {
    function(server_name)
      lspconfig[server_name].setup({})
    end,
  },
})

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' }
  },
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<Down>'] = cmp.mapping.select_next_item(cmp_select),
    ['<Tab>'] = cmp.mapping.confirm({ select = true })
  }),
})

