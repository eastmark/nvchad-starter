local base = require "nvchad.configs.lspconfig"

local lspconfig = require "lspconfig"

lspconfig.clangd.setup {
    init_options = {
        fallbackFlags = {'--std=c++11'},
    },
    on_attach = base.on_attach,
    capabilities = base.capabilities,
}
