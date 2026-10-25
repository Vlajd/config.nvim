return {
  "loctvl842/monokai-pro.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("monokai-pro").setup({
      transparent_background = true,
      terminal_colors = true,
      devicons = true,
      styles = {
        comment = { italic = false },
        keyword = { italic = false },
        type = { italic = false },
        storageclass = { italic = false },
        structure = { italic = false },
        parameter = { italic = false },
        annotation = { italic = false },
        tag_attribute = { italic = false },
      },
      filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
      day_night = {
        enable = false,
        day_filter = "pro",
        night_filter = "spectrum",
      },
      inc_search = "background", -- underline | background
      background_clear = {
        "toggleterm",
        "telescope",
        "renamer",
        "notify",
      },
      plugins = {
        bufferline = {
          underline_selected = false,
          underline_visible = false,
          underline_fill = false,
          bold = true,
        },
        indent_blankline = {
          context_highlight = "default", -- default | pro
          context_start_underline = false,
        },
      },
      override = function(scheme)
        return {}
      end,
      override_palette = function(filter)
        return {}
      end,
      override_scheme = function(scheme, palette, colors)
        return {}
      end,
    })
    vim.cmd.colorscheme("monokai-pro")
  end,
}
