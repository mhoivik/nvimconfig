return{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()

			local config = require("nvim-treesitter.configs")
			config.setup = {
			ensure_installed = {"lua", "javascript", "python", "c" ,"cpp", "c_sharp", "zig", "rust", "go", "vim", "html", "cmake"}, --add lang here
			highlight = { enable = true,
                          disable = { "" },
                          additional_vim_regex_highlighting = true},
            autopairs = { enable = true },
			indent = { enable = true },
}
		end
}

