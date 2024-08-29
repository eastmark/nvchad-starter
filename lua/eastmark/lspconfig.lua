local base = require "nvchad.configs.lspconfig"

local lspconfig = require "lspconfig"

lspconfig.clangd.setup {
    cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose', '-ferror-limit=0'},
    init_options = {
        fallbackFlags = {'--std=c++11'},
    },
    on_attach = base.on_attach,
    capabilities = base.capabilities,
}
