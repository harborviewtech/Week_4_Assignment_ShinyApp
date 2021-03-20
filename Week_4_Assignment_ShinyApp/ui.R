#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Body Mass Indiex Calculator"),

    # Sidebar with a slider input for weight
    sidebarLayout(
        sidebarPanel(
            numericInput('height', 'Your Height', 5, min = 0, max = 10, step= 1),
            sliderInput("weight",
                        "Your weight:",
                        min = 1,
                        max = 300,
                        value = 150)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h1("Body Mass Index (MBI) Result:"),
            h2("Compare with these BMI Categories:- "),
            h3("Underweight = <18.5"),
            h3("Normal weight = 18.5–24.9"),
            h3("Overweight = 25–29.9"),
            h3("Obesity = BMI of 30 or greater"),
            plotOutput("distPlot")
        )
    )
))
