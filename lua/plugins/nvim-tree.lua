return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")

    local function open_git_root()
      local git_root = vim.fn.system("git rev-parse --show-toplevel"):gsub("%s+", "")
      if #git_root > 0 then
        require("nvim-tree.api").tree.open({ path = git_root })
      else
        print("Not in a git repository")
      end
    end

    vim.keymap.set("n", "<leader>rt", open_git_root, { desc = "Open NvimTree at Git Root" })
  end,
}
