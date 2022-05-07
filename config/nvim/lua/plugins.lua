return require('packer').startup(function()
	-- Critical plugins
	use {'https://github.com/wbthomason/packer.nvim', as = 'packer'}
	use {'https://github.com/jeffkreeftmeijer/vim-dim', as = 'dim'}
	use {'https://github.com/editorconfig/editorconfig-vim', as = 'editorconfig'}
	use {'https://github.com/tpope/vim-commentary', as = 'commentary'}
	use {'https://github.com/tpope/vim-unimpaired', as = 'unimpaired'}

	-- Infrastructural plugins
	use {'https://github.com/mhinz/vim-grepper', as = 'grepper'}
	use {'https://github.com/w0rp/ale', as = 'ale'}
	use {'https://github.com/rhysd/committia.vim', as = 'committia'}
	-- use {'https://github.com/glepnir/galaxyline.nvim', as = 'galaxyline'}
	use {'https://github.com/nvim-lualine/lualine.nvim', as = 'lualine'}

-- lanaguage support
	use {
		'https://github.com/nvim-treesitter/nvim-treesitter',
		as = 'treesitter', run = ':TSUpdate'
	}
end)
