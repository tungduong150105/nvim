return {
  "shaunsingh/solarized.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd[[colorscheme solarized]]
  end
}
