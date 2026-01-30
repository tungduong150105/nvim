vim.lsp.enable("lua_ls")
vim.lsp.enable("rubocop")
vim.lsp.enable("ruby_lsp")
vim.lsp.enable("clangd")

vim.diagnostic.config({
  -- virtual_lines = {
  --   current_line = true
  -- },
  virtual_text = {
    spacing = 2,
    prefix = "●",
  },
  float = {
    border = "rounded",
  },
  severity_sort = true,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local opts = { buffer = ev.buf }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {
      undercurl = true,
      sp = "#dc322f",
    })

    vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {
      undercurl = true,
      sp = "#b58900",
    })

    vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {
      undercurl = true,
      sp = "#268bd2",
    })

    vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {
      undercurl = true,
      sp = "#2aa198",
    })
  end,
})
