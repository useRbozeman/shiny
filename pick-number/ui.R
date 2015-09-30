shinyUI(
  fluidPage(
    # add the widget instructing the user select their number
    numericInput("int3", "Pick a number between 1 and 100:", 
                     value = NULL, 
                     min = 1, 
                     max = 100),
    # action button
        actionButton("go", "Go!"), 
    # line break 
        br(), 
    # text output
        textOutput("text1")
        )
  )
