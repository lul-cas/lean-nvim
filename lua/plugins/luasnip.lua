return {
	  {
	    "L3MON4D3/LuaSnip",
	    config = function()
	      local ls = require("luasnip")

	      require("snippets.html")

	      vim.keymap.set({ "i", "s" }, "<Tab>", function()
		if ls.expand_or_locally_jumpable() then
		  ls.expand_or_jump()
		else
		  vim.api.nvim_feedkeys(
		    vim.api.nvim_replace_termcodes("<Tab>", true, false, true),
		    "n",
		    false
		  )
		end
	      end, { silent = true, desc = "Expand or jump snippet" })

	      vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
		if ls.locally_jumpable(-1) then
		  ls.jump(-1)
		end
	      end, { silent = true, desc = "Jump snippet backwards" })
	    end,
	  },
}
