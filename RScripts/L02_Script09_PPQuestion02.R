## ---- L02_Script09_PPQuestion02 ----
#L02_Script09_PPQuestion02

#library(shiny)
ui <- fluidPage(
  numericInput("x", "x", value = 50, min = 0, max = 100),
  actionButton("capture", "capture"),
  textOutput("out")
)


#shinyApp(ui = ui, server = server)
