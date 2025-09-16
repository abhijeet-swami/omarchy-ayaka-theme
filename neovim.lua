local M = {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				vim.cmd("set termguicolors")

				local colors = {
					bg = "#262626",
					fg = "#e6e6e6",
					purple = "#cc66cc",
					primary = "#6699ff",
					secondary = "#66cc66",
					success = "#80e680",
					danger = "#e65c5c",
					warning = "#ffcc66",
					info = "#66cccc",
					muted = "#606060",
					dark = "#2a2a2a",
					accent = "#ffdd80",
					subtle = "#404040",
					border = "#404040",
					selection = "#404040",
				}

				vim.cmd("highlight clear")

				local function set_hl(group, opts)
					vim.api.nvim_set_hl(0, group, opts)
				end

				-- All highlight groups below use the new Matte Candy colors
				set_hl("Normal", { fg = colors.fg, bg = colors.bg })
				set_hl("Comment", { fg = colors.muted, italic = true })
				set_hl("Constant", { fg = colors.purple })
				set_hl("String", { fg = colors.secondary })
				set_hl("Character", { fg = colors.secondary })
				set_hl("Number", { fg = colors.accent })
				set_hl("Boolean", { fg = colors.primary, bold = true })
				set_hl("Float", { fg = colors.accent })
				set_hl("Identifier", { fg = colors.fg })
				set_hl("Function", { fg = colors.primary, bold = true })
				set_hl("Statement", { fg = colors.purple, bold = true })
				set_hl("Conditional", { fg = colors.purple })
				set_hl("Repeat", { fg = colors.purple })
				set_hl("Label", { fg = colors.secondary })
				set_hl("Operator", { fg = colors.info })
				set_hl("Keyword", { fg = colors.primary, bold = true })
				set_hl("Exception", { fg = colors.danger })
				set_hl("PreProc", { fg = colors.secondary })
				set_hl("Include", { fg = colors.primary })
				set_hl("Define", { fg = colors.primary })
				set_hl("Macro", { fg = colors.warning })
				set_hl("PreCondit", { fg = colors.secondary })
				set_hl("Type", { fg = colors.warning, italic = true })
				set_hl("StorageClass", { fg = colors.danger })
				set_hl("Structure", { fg = colors.secondary })
				set_hl("Typedef", { fg = colors.secondary })
				set_hl("Special", { fg = colors.accent })
				set_hl("SpecialChar", { fg = colors.accent })
				set_hl("Tag", { fg = colors.info })
				set_hl("Delimiter", { fg = colors.fg })
				set_hl("SpecialComment", { fg = colors.muted })
				set_hl("Debug", { fg = colors.danger })
				set_hl("Title", { fg = colors.primary, bold = true })
				set_hl("Directory", { fg = colors.info })
				set_hl("MatchParen", { fg = colors.accent, bg = colors.subtle, bold = true })
				set_hl("Conceal", { fg = colors.muted })
				set_hl("NonText", { fg = colors.muted })
				set_hl("SpecialKey", { fg = colors.muted })
				set_hl("Whitespace", { fg = colors.muted })

				set_hl("CursorLine", { bg = colors.dark })
				set_hl("CursorColumn", { bg = colors.dark })
				set_hl("CursorLineNr", { fg = colors.primary, bold = true })
				set_hl("LineNr", { fg = colors.muted })
				set_hl("SignColumn", { fg = colors.muted, bg = colors.bg })
				set_hl("Visual", { bg = colors.selection })
				set_hl("VisualNOS", { bg = colors.subtle })
				set_hl("Search", { fg = colors.bg, bg = colors.primary })
				set_hl("IncSearch", { fg = colors.bg, bg = colors.accent })
				set_hl("Substitute", { fg = colors.bg, bg = colors.warning })
				set_hl("Pmenu", { fg = colors.fg, bg = colors.dark })
				set_hl("PmenuSel", { fg = colors.dark, bg = colors.primary })
				set_hl("PmenuSbar", { bg = colors.subtle })
				set_hl("PmenuThumb", { bg = colors.secondary })
				set_hl("StatusLine", { fg = colors.fg, bg = colors.dark })
				set_hl("StatusLineNC", { fg = colors.muted, bg = colors.dark })
				set_hl("WinSeparator", { fg = colors.border })
				set_hl("VertSplit", { fg = colors.border })
				set_hl("Folded", { fg = colors.muted, bg = colors.subtle, italic = true })
				set_hl("FoldColumn", { fg = colors.muted, bg = colors.bg })
				set_hl("TabLine", { fg = colors.muted, bg = colors.dark })
				set_hl("TabLineFill", { bg = colors.dark })
				set_hl("TabLineSel", { fg = colors.primary, bg = colors.bg, bold = true })

				set_hl("ErrorMsg", { fg = colors.bg, bg = colors.danger, bold = true })
				set_hl("WarningMsg", { fg = colors.bg, bg = colors.warning })
				set_hl("MoreMsg", { fg = colors.success })
				set_hl("ModeMsg", { fg = colors.primary, bold = true })
				set_hl("Question", { fg = colors.info })
				set_hl("DiffAdd", { bg = "#223e36" })
				set_hl("DiffChange", { bg = "#3c2f47" })
				set_hl("DiffDelete", { bg = "#472f36" })
				set_hl("DiffText", { bg = "#47442f", bold = true })

				set_hl("SpellBad", { undercurl = true, sp = colors.danger })
				set_hl("SpellCap", { undercurl = true, sp = colors.warning })
				set_hl("SpellLocal", { undercurl = true, sp = colors.info })
				set_hl("SpellRare", { undercurl = true, sp = colors.accent })

				set_hl("DiagnosticError", { fg = colors.danger })
				set_hl("DiagnosticWarn", { fg = colors.warning })
				set_hl("DiagnosticInfo", { fg = colors.info })
				set_hl("DiagnosticHint", { fg = colors.muted })
				set_hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.danger })
				set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warning })
				set_hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
				set_hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.muted })

				set_hl("@text", { link = "Normal" })
				set_hl("@comment", { link = "Comment" })
				set_hl("@constant", { link = "Constant" })
				set_hl("@constant.builtin", { fg = colors.danger, bold = true })
				set_hl("@string", { link = "String" })
				set_hl("@character", { link = "Character" })
				set_hl("@number", { link = "Number" })
				set_hl("@boolean", { link = "Boolean" })
				set_hl("@float", { link = "Float" })
				set_hl("@function", { link = "Function" })
				set_hl("@function.builtin", { fg = colors.accent, bold = true })
				set_hl("@method", { link = "Function" })
				set_hl("@keyword", { link = "Keyword" })
				set_hl("@keyword.function", { link = "Keyword" })
				set_hl("@keyword.operator", { link = "Operator" })
				set_hl("@preproc", { link = "PreProc" })
				set_hl("@type", { link = "Type" })
				set_hl("@type.builtin", { fg = colors.warning, bold = true })
				set_hl("@storageclass", { link = "StorageClass" })
				set_hl("@variable", { fg = colors.fg })
				set_hl("@variable.builtin", { fg = colors.danger, bold = true, italic = true })
				set_hl("@property", { link = "info" })
				set_hl("@field", { link = "info" })
				set_hl("@parameter", { fg = colors.warning, italic = true })
				set_hl("@punctuation.bracket", { link = "Delimiter" })
				set_hl("@punctuation.delimiter", { link = "Delimiter" })
				set_hl("@tag", { link = "Tag" })
				set_hl("@tag.attribute", { fg = colors.secondary })
				set_hl("@tag.delimiter", { fg = colors.muted })
				set_hl("@constructor", { fg = colors.purple })
				set_hl("@namespace", { fg = colors.info })
				set_hl("@include", { link = "Include" })
				set_hl("@conditional", { link = "Conditional" })
				set_hl("@repeat", { link = "Repeat" })
				set_hl("@label", { link = "Label" })
				set_hl("@exception", { link = "Exception" })
				set_hl("@text.title", { link = "Title" })
				set_hl("@text.literal", { link = "String" })
				set_hl("@text.uri", { fg = colors.success, underline = true })
				set_hl("@text.emphasis", { italic = true })
				set_hl("@text.strong", { bold = true })
				set_hl("@text.todo", { fg = colors.bg, bg = colors.warning, bold = true })

				set_hl("@lsp.type.variable", {})
				set_hl("@lsp.type.property", { link = "@property" })
				set_hl("@lsp.type.function", { link = "@function" })
				set_hl("@lsp.type.method", { link = "@method" })
				set_hl("@lsp.type.keyword", { link = "@keyword" })
				set_hl("@lsp.type.namespace", { link = "@namespace" })
				set_hl("@lsp.type.parameter", { link = "@parameter" })
				set_hl("@lsp.type.type", { link = "Type" })
				set_hl("@lsp.type.class", { link = "Type" })
				set_hl("@lsp.type.struct", { link = "Type" })
				set_hl("@lsp.type.enum", { link = "Type" })
				set_hl("@lsp.type.interface", { link = "Type" })

				vim.g.colors_name = "matte-candy"
			end,
		},
	},
}

return M
