## ---- L02_Script05_observeEvent ----
#L02_Script05_observeEvent
library(shiny)

ui <- fluidPage(
  actionButton(inputId = "clicks",
               label = "Click me")
)
server <- function(input, output) {
  observeEvent(input$clicks
               , showNotification(input$clicks))
}

shinyApp(ui = ui, server = server)
