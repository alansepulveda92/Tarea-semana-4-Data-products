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
    titlePanel("Distribución Normal"),
    sidebarLayout(
        sidebarPanel(
            numericInput("numeric", "Cuántos números quieres simular?",
                         value = 100, min = 1, max = 100000, step = 1),
            sliderInput("sliderX", "Media",
                        0, 100, value = 0),
            sliderInput("sliderY", "Desviación",
                        1, 100, value = 1),
        ),
        mainPanel(
            h3("Gráfico de una distribución normal"),
            plotOutput("plot1")
        )
    )
))
