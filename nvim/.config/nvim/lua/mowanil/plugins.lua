local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

packer.startup(function(use)
    use "wbthomason/packer.nvim"

    use "katawful/kat.nvim"

    use "windwp/nvim-autopairs"
    use "stevearc/oil.nvim"
    use "ThePrimeagen/harpoon"
    use "mbbill/undotree"
    use "ggandor/leap.nvim"

    use "folke/zen-mode.nvim"
    use "folke/twilight.nvim"
    use "folke/neoconf.nvim"

    use "nvim-treesitter/nvim-treesitter"
    use "nvim-treesitter/nvim-treesitter-context"
    use "norcalli/nvim-colorizer.lua"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-ui-select.nvim"
    use { 'nvim-telescope/telescope-fzf-native.nvim', run =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use "nvim-telescope/telescope-file-browser.nvim"

    use "neovim/nvim-lspconfig"
    use "williamboman/mason-lspconfig.nvim"
    use "williamboman/mason.nvim"

    use "Exafunction/codeium.nvim"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-nvim-lsp-document-symbol"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"
    use "onsails/lspkind.nvim"

    use "jose-elias-alvarez/null-ls.nvim"
    use "L3MON4D3/LuaSnip"
    use "ray-x/lsp_signature.nvim"

    use "diepm/vim-rest-console"

    use "vim-airline/vim-airline"
    use "vim-airline/vim-airline-themes"
end)
