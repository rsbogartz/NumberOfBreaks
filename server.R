library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
   
   data <- rnorm(input$Size)
   hist(data, breaks = input$NBreaks) 

 
   
  })
  
})

