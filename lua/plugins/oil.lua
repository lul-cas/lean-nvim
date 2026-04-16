return {
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		cmd = "Oil",
		opts = {
			view_options = {
				show_hidden = true,
			},
			float = {
	 			padding = 2,
				max_width = 0.8,
				max_height = 0.8,
			}
		}
	}
}
