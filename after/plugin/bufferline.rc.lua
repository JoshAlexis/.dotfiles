local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = "slant",
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = "#073642",
      bg = "#002B36"
    },
    separator_selected = {
      fg = "#073642"
    },
    background = {
      fg = "#657B83"
    },
    buffer_selected = {
      fg = "#FDF6E3",
      bold = true
    },
    fill = {
      bg = "#073642"
    }
  }
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
