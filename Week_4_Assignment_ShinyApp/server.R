#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate BMI based on input$weight from ui.R

        bmi <- input$weight / (input$height * input$height)

        x = c(input$weight)
        y = c(bmi)
        xlim <- 0:300
        ylim <- 0:30
        plot(0:30, 0:30, type = "n")
        points(bmi, bmi, col = "red", pch=19)

    })

})
