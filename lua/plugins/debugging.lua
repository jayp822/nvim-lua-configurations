return {
	"mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
		vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>")
		vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
	end,
}
