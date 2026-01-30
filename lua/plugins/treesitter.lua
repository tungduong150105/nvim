return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = "master",
  build = ':TSUpdate',
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua"
      },
      auto_install = true,
      highlight = {
				enable = true,
				use_languagetree = true,
			},
			indent = { enable = true },
    })
  end
}
