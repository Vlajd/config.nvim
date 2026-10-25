require("config.remap")
require("config.set")
require("config.lazy")

vim.lsp.enable("lua_ls")
vim.lsp.enable("rust_analyzer")

require("load_filetype").load(require("config.filetype"))

