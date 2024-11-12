return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			logging = true,
			log_level = vim.log.levels.WARN,
			filetype = {
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
			},
		})
		local opts = {
			silent = true,
			noremap = true,
		}
		vim.keymap.set("n", "<leader>f", ":Format<CR>", opts)
		vim.keymap.set("n", "<leader>F", ":FormatWrite<CR>", opts)
	end,
}
