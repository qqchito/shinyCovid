#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$covidPlot <- renderPlot({

        ggplot(covid_chile[covid_chile$Region == input$Region, ], aes(x=Fecha, y=Total)) +
            geom_line(color="#c169b2", size = 1) +
            ylab("Daily Covid Confirmed Cases") + 
            xlab("Date")
        
    })

})
