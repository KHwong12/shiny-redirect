library(shiny)

ui <- fluidPage(

    # Application title
    titlePanel("香港車禍傷亡資料庫 | Hong Kong Traffic Injury Collision Database"),

    br(),

    h4(
      "香港車禍傷亡資料庫網站已經搬遷至", a("https://streetreset.shinyapps.io/hktrafficcollisions/", href = "https://streetreset.shinyapps.io/hktrafficcollisions/"),
      br(),
      "Hong Kong Traffic Injury Collision Database website has migrated to", a("https://streetreset.shinyapps.io/hktrafficcollisions/", href = "https://streetreset.shinyapps.io/hktrafficcollisions/"),
      ),

    br(),

    p(
      "此頁面將於 5 秒後連接至新網站。",
      br(),
      "This page will be redirected to the new website in 5 seconds."
      ),

    singleton(tags$head(tags$script(
      "
      setTimeout('Redirect()', 5000);
      function Redirect()
      {
          window.location='https://streetreset.shinyapps.io/hktrafficcollisions/';
      }
      "
      )))
)


server <- function(input, output, session) {}

shinyApp(ui = ui, server = server)
