shinyUI(fluidPage(
  titlePanel(
    h1("CensusVis")
  ), 
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with information from the 2010 US Census."), 
      selectInput("select", label = h4("Choose a variable to display"), 
                  choices = list("Percent White", "Percent Black",
                                "Percent Hispanic", "Percent Asian"), 
                  selected = "Percent White"), 
      sliderInput("slider", label = h4("Range of interest:"), 
                  min = 0, max = 100, value = c(0,100))
    ),
    mainPanel(
      textOutput("text1"), 
      br(),
      textOutput("text2"), 
      br(), 
      plotOutput("map")
      )
  )
))


