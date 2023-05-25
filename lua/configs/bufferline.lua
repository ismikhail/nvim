local status, bufferline = pcall(require, "bufferline")
if not status then
  return
end

bufferline.setup({
	options = {
		separator_style = 'thick', -- padded_slant, slant, slope, thick, thin
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
		diagnostics = "nvim_lsp",
	},
})
