local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header (ASCII art)
dashboard.section.header.val = {
"                                                                    ",
"                                                                    ",
"                                                                    ",
"                                                                    ",
"                                                                    ",
"                                                                    ",
"                                                                    ",
"                                                                    ",
"                                                                    ",
"                                                                    ",
"                                                                    ",
"                                                                    ",
"                                                                    ",
"                                                                    ",
"██╗    ██╗██╗  ██╗██╗     ███████╗██╗    ██╗ █████╗ ██████╗ ███████╗",
"██║    ██║██║  ██║██║     ██╔════╝██║    ██║██╔══██╗██╔══██╗██╔════╝",
"██║ █╗ ██║███████║██║     █████╗  ██║ █╗ ██║███████║██████╔╝█████╗  ",
"██║███╗██║██╔══██║██║     ██╔══╝  ██║███╗██║██╔══██║██╔══██╗██╔══╝  ",
"╚███╔███╔╝██║  ██║███████╗███████╗╚███╔███╔╝██║  ██║██║  ██║███████╗",
" ╚══╝╚══╝ ╚═╝  ╚═╝╚══════╝╚══════╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝",
}

dashboard.section.buttons.val = {}

dashboard.section.footer.val = {
    "FUCK IT WE BALL 🤙",
}

-- Apply configuration
alpha.setup(dashboard.config)

