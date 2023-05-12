local status, comment = pcall(require, "Comment")
if not status then
  return
end

comment.setup({
	toggler = {
		---Line-comment toggle keymap
		line = "<leader>/",
		---Block-comment toggle keymap
		block = "<leader>cb",
	},
	opleader = {
		---Line-comment keymap
		line = "<leader>/",
		---Block-comment keymap
		block = "gb",
	},
	pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
})
