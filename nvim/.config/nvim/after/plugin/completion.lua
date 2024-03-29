local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
    return
end

cmp.setup({
    formatting = {
        format = require("lspkind").cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                luasnip = "[snip]",
                codeium = "[AI]",

            },
        },
    },
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<C-y>"] = cmp.config.disabled,
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,
    }),
    sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "codeium" },
            { name = "path" },
            { name = "nvim_lua" },
            { name = "luasnip", option = { show_autosnippets = false } },
        },
        {
            { name = "path" },
            {
                name = "buffer",
                keyword_length = 5,
            },

        }
    ),
    experimental = {
        ghost_text = true,
    },
})

cmp.setup.cmdline("/", {
    sources = cmp.config.sources({
            { name = "nvim_lsp_document_symbol" },
        },
        {
            { name = "buffer" }
        }),
})

cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline {
        ["<C-n>"] = cmp.config.disabled,
        ["<C-p>"] = cmp.config.disabled,
    },
    sources = cmp.config.sources({
            { name = "path" }
        },
        {
            { name = "cmdline" }
        }),
})
