## ---- L01_Script01_MyFirstApp ----
#L01_Script01_MyFirstApp
library(shiny)
ui <- fluidPage(
  "Hello, world!"
)
server <- function(input, output, session) {
}
shinyApp(ui, server)
