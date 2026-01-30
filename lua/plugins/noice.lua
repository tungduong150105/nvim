return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    opts = {
      lsp = {
        progress = {
          enabled = true,
        },
        hover = {
          enabled = true,
        },
        signature = {
          enabled = true,
        },
      },

      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
      },
      views = {
        cmdline_popup = {
          position = {
            row = "40%",
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
        },
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#fdf6e3",
      render = "minimal",
      stages = "fade",
      timeout = 1000,
      max_width = 40,
      max_length = 4
    },
    config = function(_, opts)
      local notify = require("notify")
      notify.setup(opts)
      vim.notify = notify
      vim.api.nvim_set_hl(0, "NotifyBackground", { bg = "#fdf6e3" })
      vim.api.nvim_set_hl(0, "NotifyINFO", { fg = "#268bd2" })
      vim.api.nvim_set_hl(0, "NotifyWARN", { fg = "#b58900" })
      vim.api.nvim_set_hl(0, "NotifyERROR", { fg = "#dc322f" })
      vim.api.nvim_set_hl(0, "NotifyINFOBorder", { fg = "#859900" })
      vim.api.nvim_set_hl(0, "NotifyINFOIcon", { fg = "#859900" })
      vim.api.nvim_set_hl(0, "NotifyINFOTitle", { fg = "#859900" })
      vim.api.nvim_set_hl(0, "NotifyINFOBody", { fg = "#859900" })
    end
  }
}
