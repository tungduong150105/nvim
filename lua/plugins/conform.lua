return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      cpp = { "clang-format" }
    },
  },

  vim.keymap.set({ "n", "v" }, "<leader>f", function()
    require("conform").format({ lsp_fallback = true })
  end, { desc = "Format file" })
}
