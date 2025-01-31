local lualine = require("lualine")

-- use emotes for mode names
local mode_map = {
	n = "(ᴗ_ ᴗ。)",
	nt = "(ᴗ_ ᴗ。)",
	i = "(•̀ - •́ )",
	R = "( •̯́ ₃ •̯̀)",
	v = "(⊙ _ ⊙ )",
	V = "(⊙ _ ⊙ )",
	no = "Σ(°△°ꪱꪱꪱ)",
	["\22"] = "(⊙ _ ⊙ )",
	t = "(⌐■_■)",
	["!"] = "Σ(°△°ꪱꪱꪱ)",
	c = "Σ(°△°ꪱꪱꪱ)",
	s = "SUB",
}

lualine.setup({
	options = {
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
	},

	sections = {
		lualine_a = {
			{
				"mode",
				icons_enabled = true,
				separator = {
					left = "",
					right = "",
				},
				fmt = function()
					return mode_map[vim.api.nvim_get_mode().mode] or vim.api.nvim_get_mode().mode
				end,
			},
		},
		lualine_c = {
			{
				"filename",
				file_status = true,
				path = 1,
			},
		},
		lualine_z = {
			{
				"location",
				separator = {
					left = "",
					right = "",
				},
			},
		},
	},
})
