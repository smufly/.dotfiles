local status_ok = pcall(require, "lspconfig")
if not status_ok then
    return
end

local map_options = {
    noremap = true,
    silent = true,
}

local on_attach = function(client, bufnr)
    require "lsp_signature".on_attach({
            bind = true, -- This is mandatory, otherwise border config won't get registered.
            handler_opts = {
            border = "rounded"
        }
    }, bufnr)
end


local servers = { "gopls", "tsserver", "pyright", "bashls", "dockerls", "jsonls", "html", "sumneko_lua" }

for _, lsp in pairs(servers) do
    require("lspconfig")[lsp].setup {
        on_attach = on_attach,
    }
end
