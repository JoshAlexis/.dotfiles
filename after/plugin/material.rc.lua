local status, material = pcall(require, "material")
if (not status) then return end

vim.g.material_style = "palenight"

material.setup({
  contrast = {
    terminal = true,
  },
  disable = {
    background = true
  },
  high_visibilty = {
    darker = true,
    lighter = true
  }
})

vim.cmd [[ colorscheme material ]]
