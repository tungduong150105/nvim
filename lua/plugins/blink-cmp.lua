return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets',
  },
  version = '1.*',
  opts = {
    keymap = { preset = 'default' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
      documentation = { auto_show = true },
      menu = {
        draw = {
          components = {
            kind_icon = {
              text = function(ctx)
                return require('lspkind').symbol_map[ctx.kind] or ''
              end,
            },
          },
          columns = {
            { "label", "label_description", gap = 1 }, { "kind_icon", "kind", gap = 1 }
          }
        },
      }
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
