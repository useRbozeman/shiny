shinyServer(function(input, output) {
  
  # only update input$int3 when the action button input$go is clicked!
  chosen <- eventReactive(input$go,{
    paste("You chose the number ", input$int3)
  })
  # create the output object
    output$text1 <- renderText({
      chosen()
  })  
})
