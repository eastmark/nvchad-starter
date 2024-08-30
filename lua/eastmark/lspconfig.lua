local base = require "nvchad.configs.lspconfig"

local lspconfig = require "lspconfig"

-- Comment the below code to disable clangd
lspconfig.clangd.setup {
    cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
    init_options = {
        fallbackFlags = {'--std=c++11'},
    },
    on_attach = base.on_attach,
    capabilities = base.capabilities,
}
