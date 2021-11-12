## ---- L01_Script02_InputExample ----
# L01_Script02_InputExample
library(shiny)
ui <- fluidPage(
  sliderInput(inputId = "num",
              label = "Choose a number",
              value = 25, min = 1, max = 100),
  plotOutput("hist")
)
server <- function(input, output, session) {
  output$hist <- renderPlot({
    hist(rnorm(input$num))
  })
}
shinyApp(ui, server)

