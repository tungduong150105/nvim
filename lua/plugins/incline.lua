return {
	"b0o/incline.nvim",
	config = function()
		require("incline").setup({
      highlight = {
        groups = {
          InclineNormal = { guibg = "#d23681", guifg = "#000000" },
          InclineNormalNC = { guibg = "#173541", guifg = "#ffffff" },
        }
      },
			window = {
        padding = 0,
				margin = { horizontal = 0 },
			},
			render = function(props)
				local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
        if filename == "" then
          filename = "[No Name]"
        end
        if vim.bo[props.buf].modified then
          filename = "[+]" .. filename
        end
      local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
      return {
					ft_icon and { " ", ft_icon, "  ", guibg = ft_color, guifg = require("incline.helpers").contrast_color(ft_color) } or "",
					" ",
					{ filename },
					" ",
				}
			end,
		})
	end,
}
