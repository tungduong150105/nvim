return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("ibl").setup({
				indent = {
					char = "│",
					tab_char = "│",
				},
				scope = {
					enabled = false,
					show_start = false,
					show_end = false,
				},
				exclude = {
					filetypes = {
						"lazy",
						"help",
						"mason",
						"notify",
						"dashboard",
						"snacks_dashboard",
					},
				},
        vim.api.nvim_set_hl(0, "IblIndent", { fg = "#b3c2c2" }),
			})
		end,
	},
	{
		"echasnovski/mini.indentscope",
		config = function()
			require("mini.indentscope").setup({
				symbol = "│",
				options = { try_as_border = true },
				draw = { delay = 200 },
				vim.api.nvim_create_autocmd("FileType", {
					pattern = {
						"lazy",
            "help",
						"mason",
						"notify",
						"dashboard",
						"snacks_dashboard",
					},
					callback = function()
						vim.b.miniindentscope_disable = true
					end,
				}),

				vim.api.nvim_create_autocmd("User", {
					pattern = "SnacksDashboardOpened",
					callback = function(data)
						vim.b[data.buf].miniindentscope_disable = true
					end,
				}),
        vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#657b83" })
			})
		end,
	},
}
