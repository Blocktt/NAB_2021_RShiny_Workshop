## ---- L02_Script11_PPQuestion03 ----
#L02_Script11_PPQuestion03

#library(shiny)
ui <- fluidPage(
  actionButton(inputId = "norm", label = "Normal"),
  actionButton(inputId = "unif", label = "Uniform"),
  plotOutput("hist")
)


#shinyApp(ui = ui, server = server)
