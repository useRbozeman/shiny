shinyUI(fluidPage(
  titlePanel(h1("Poisson exploration", align = "center")),
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = "lambda", 
                   label = "Choose a value for the mean of your Poisson distribution:", 
                   value = NULL, 
                   min = 1, 
                   max = 10000, 
                   step = 1),
      actionButton(inputId = "plot", label = "Plot Data")
      ),
    mainPanel(
      plotOutput("plot1")
      )
    )
))
