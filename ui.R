

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
    mainPanel(
       plotOutput("distPlot"),
       h1("HOW TO USE THIS APP"),
       h3("Move slider to adjust number of bins"),
       em("(Histogram will group earthquakes by their depth)"),
       h6("DISFRUTA!")
       
       

    )
  )
))
