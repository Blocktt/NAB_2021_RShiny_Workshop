## ---- L03_Script02_PPSolution02 ----
#L03_Script02_PPSolution02
library(shiny)
library(bslib)
library(thematic)

thematic_shiny(font = "auto")

ui <- fluidPage(theme = bs_theme(
  bg = "#045c7c", 
  fg = "#ffe2a9", 
  primary = "#a4c37b") # End ~ bs_theme
  , sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "num",
                  label = "Choose a number",
                  value = 25, min = 1, max = 100)
      ,textInput(inputId = "title",
                 label = "Write a title",
                 value = "Histogram of Random Normal Values")
    ), # End ~ sidebarPanel
    mainPanel(
      plotOutput("hist")
    ) # End ~ mainPanel
  ) # End ~ sidebarLayout
) # End ~ fluidPage


server <- function(input, output) {
  output$hist <- renderPlot({
    hist(rnorm(input$num), main = input$title)
  })
}

shinyApp(ui = ui, server = server)