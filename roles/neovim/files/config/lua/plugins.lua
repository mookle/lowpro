local install_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end

local packer_installed = install_packer()

local packer = require('packer')
 
packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- fuzzy search across filesystem, buffers, mru, and file contents
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = 'nvim-lua/plenary.nvim',
        config = [[ require('config.telescope') ]],
    }
    -- motion/navigation improvement
    use {
        'phaazon/hop.nvim',
        branch = 'v2',
        config = [[ require('config.hop') ]],
    }
    -- inline git diff
    use {
        'airblade/vim-gitgutter',
        config = [[ require('config.vim-gitgutter') ]],
    }
    -- lightweight status line
    use {
        'nvim-lualine/lualine.nvim',
        config = [[ require('config.lualine') ]],
    }
    -- treesitter for better contextual bling
    use {
        'nvim-treesitter/nvim-treesitter',
        config = [[ require('config.nvim-treesitter') ]],
        run = ':TSUpdate',
    }
    -- file browser for basic fs operations
    use {
        { 'lambdalisue/fern.vim', config = [[ require('config.fern') ]] },
        { 'lambdalisue/fern-hijack.vim', after = 'fern.vim' },
    }
    -- string/token wrapping
    use { 
        'tpope/vim-surround',
        { 'tpope/vim-repeat', after = 'vim-surround' }
    }
    -- misc syntax highlighting
    use('preservim/vim-markdown')
    use('pearofducks/ansible-vim')
    use('ekalinin/Dockerfile.vim')
    use('ericpruitt/tmux.vim')
    use('habamax/vim-godot')
    -- LSP client 
    use {
        "neovim/nvim-lspconfig",
        {
            -- visual LSP loading/progress
            'j-hui/fidget.nvim',
            config = [[ require("fidget").setup() ]],
            after = 'nvim-lspconfig',
        }
    }
    -- autocompletion framework
    use {
        'hrsh7th/nvim-cmp',
        config = [[ require('config.nvim-cmp') ]],
    }
    use {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        after = 'hrsh7th/nvim-cmp',
        requires = 'hrsh7th/nvim-cmp',
    }
    -- snippets
    use 'hrsh7th/vim-vsnip'
    -- colorschemes
    use {
        'Shatur/neovim-ayu',
        config = [[ require('config.ayu') ]],
    }
    use 'sainnhe/everforest'
    use {
        'sainnhe/gruvbox-material',
        config = [[ require('config.gruvbox-material') ]],
    }
    use 'savq/melange'
    use {
        'EdenEast/nightfox.nvim',
        config = [[ require('config.nightfox') ]],
    }
    use {
        'navarasu/onedark.nvim',
        config = [[ require('config.onedark') ]],
    }
    use 'srcery-colors/srcery-vim'

-- [ANSIBLE HOOK]
end)

-- the first run will install packer and our plugins
if packer_installed then
    packer.sync()
    return
end
