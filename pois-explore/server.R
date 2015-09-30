source("helpers.R")
shinyServer(function(input, output){
  poisData <- eventReactive(input$plot, {
    list(rpois(1000,input$lambda), input$lambda)
  }) 
  output$plot1 <- renderPlot({
    poisPlot(pois.vec = poisData()[1], 
             main = paste("Poisson(lambda = ", poisData()[2], ")"))
  })
})

