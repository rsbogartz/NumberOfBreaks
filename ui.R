library(shiny)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Effect of Number of Breaks on Shape of Histogram"),
  
  # Sidebar with a slider input for the number of means
  sidebarLayout(
    sidebarPanel(
      sliderInput("NBreaks",
                    "Number of Breaks:",
                  min = 1,
                  max = 25,
                  value = 10),
                  sliderInput("Size",
                    "Sample Size:",
                  min = 25,
                  max = 10000,
                  value = 100)
   
    ),
    
 

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
   )
 ))
