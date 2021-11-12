## ---- L02_Script08_PPSolution02 ----
#L02_Script08_PPSolution02
library(shiny)

ui <- fluidPage(
  numericInput("x", "x", value = 50, min = 0, max = 100),
  actionButton("capture", "capture"),
  textOutput("out")
)

server <- function(input, output) {
  output$out <- eventReactive(input$capture, {
    input$x
  })
}

shinyApp(ui = ui, server = server)
