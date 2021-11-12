## ---- L01_Script04_PPQuestion02 ----
# L01_Script04_PPQuestion02
library(shiny)

ui <- fluidPage(
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
  sliderInput("y", label = "If y is", min = 1, max = 25, value = 8),
  "then x times y is",
  textOutput("product")
)

server <- function(input, output, session) {
  output$product <- renderText({ 
    x * y
  })
}

shinyApp(ui, server)
