return {
	"nvim-lualine/lualine.nvim",
	"rafamadriz/neon",
  config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",
			},
		})
	end,
}
