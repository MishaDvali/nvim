return {
	 "L3MON4D3/LuaSnip",
	 --snippet engined
	 config =function ()
	 	local ls = require("luasnip")
		local s = ls.snippet 
		local t = ls.text_node

		ls.add_snippets("lua", {
				s("hello", {
						t("print('Hello')")
				})
		})
	 end
}
