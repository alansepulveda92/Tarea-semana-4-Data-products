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
    output$plot1 <- renderPlot({
        set.seed(10)
        cantidad <- input$numeric
        promedio <- input$sliderX
        desviación <- input$sliderY
        datos <- rnorm(cantidad, promedio, desviación)
        hist(datos)
    })
})
