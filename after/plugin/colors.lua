function InitColor(color)
  require('catppuccin').setup({
    transparent_background = true
  })
	color = color or "catppuccin-macchiato"
	vim.cmd.colorscheme(color)
end

InitColor()
