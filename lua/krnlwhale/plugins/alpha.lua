return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- ASCII header
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

    -- Buttons (empty for now)
    dashboard.section.buttons.val = {}

    -- Footer
    dashboard.section.footer.val = {
      "FUCK IT! WE BALL",
    }

    -- Apply config
    alpha.setup(dashboard.config)
  end,
}
