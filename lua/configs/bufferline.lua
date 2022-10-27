local status, bufferline = pcall(require, "bufferline")
if not status then
  return
end

bufferline.setup({
	options = {
		-- separator_style = 'slant',
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
		diagnostics = "nvim_lsp",
	},
})
