return { 
	"robitx/gp.nvim",
	config = function()
			local conf = {
				openai_api_key = os.getenv("OPENAI_API_KEY"),
				providers = { 
					-- secrets can be strings or tables with command and arguments 
					-- secret = { "cat", "path_to/openai_api_key" }, 
					-- secret = { "bw", "get", "password", "OPENAI_API_KEY" }, 
					-- secret : "sk-...", 
					-- secret = os.getenv("env_name.."), 
					openai = { 
						disable = false, 
						endpoint = "https://api.openai.com/v1/chat/completions", 
						secret = os.getenv("OPENAI_API_KEY"), 
					},
				}
					-- For customization, refer to Install > Configuration in the Documentation/Readme
			}
			require("gp").setup(conf)
			-- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
	end,
}
