

library(shiny)


shinyUI(fluidPage(
  
  
  titlePanel("Frequency of Earthquake Depth"),
  
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 10,
                   value = 7)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
