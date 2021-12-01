## ---- L02_Script08_PPQuestion01 ----
#L02_Script08_PPQuestion01

#library(shiny)

ui <- fluidPage(
  numericInput("x", "x", value = 50, min = 0, max = 100),
  actionButton("capture", "capture"),
  textOutput("out")
)

server <- function(input, output, server) {
  input$greeting <- renderText(paste0("Hello ", name))
}

server <- function(input, output, server) {
  greeting <- paste0("Hello ", input$name)
  output$greeting <- renderText(greeting)
}

server <- function(input, output, server) {
  output$greting <- paste0("Hello", input$name)
}


#shinyApp(ui = ui, server = server)
