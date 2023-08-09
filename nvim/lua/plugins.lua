vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	--colorscheme
	use "jacoborus/tender.vim"
	use "ellisonleao/gruvbox.nvim"

  --plenary(dep)
  use "nvim-lua/plenary.nvim"

  --lualine
  use {
    "nvim-lualine/lualine.nvim",
    config = function() require "lualine_conf" end,
    require = { "nvim-tree/nvim-web-devicons", "folke/trouble.nvim"
    }
  }

  --telescope
  use {
    "nvim-telescope/telescope.nvim",
    require = { { "nvim-lua/plenary.nvim" } },
    config = function() require("telescope_conf") end,
  }
  
end)
