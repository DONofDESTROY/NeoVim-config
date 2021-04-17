local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- require('packer').init({display = {non_interactive = true}})
require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
    -- Packer can manage itself as an optional plugin
    use 'wbthomason/packer.nvim'
    use 'terrortylor/nvim-comment'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'neovim/nvim-lspconfig'
	use 'glepnir/lspsaga.nvim'
    use 'hrsh7th/nvim-compe'
    use 'mattn/emmet-vim'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'kabouzeid/nvim-lspinstall'
    use 'puremourning/vimspector'
	use 'tjdevries/colorbuddy.vim'
	use 'Th3Whit3Wolf/onebuddy'
	use 'glepnir/zephyr-nvim'
	use 'Th3Whit3Wolf/one-nvim'
	use 'tanvirtin/monokai.nvim'
	use {'michaelb/sniprun', run = 'bash install.sh'}
	use {'oknozor/illumination', run ='bash install.sh' }
	use 'mfussenegger/nvim-dap'
	use 'szw/vim-maximizer'

end)