local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.skip_server_setup({'rust_analyzer'})
lsp.setup()

-- initialize rust_analyzer with rust-tools
-- see :help lsp-zero.build_options()
local rust_lsp = lsp.build_options('rust_analyzer', {
  single_file_support = false,
  on_attach = function(client, bufnr)
    print('Initialized rust_analyzer with rust-tools')
  end
})

require('rust-tools').setup({server = rust_lsp})
