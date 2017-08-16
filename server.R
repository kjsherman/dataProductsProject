

library(shiny)


shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    

    depth    <- quakes[, 3] 
    bins <- seq(min(depth), max(depth), length.out = input$bins + 1)
  
    hist(depth, breaks = bins, col = 'black', border = 'blue')
  
    
  })
  
})
