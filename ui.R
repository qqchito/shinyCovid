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
    titlePanel("Casos de Covid por Región en CHILE"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("Region", "Región:", 
                        choices=unique(covid_chile$Region)),
            hr(),
            helpText("Data from Ministry of Health of Chile.")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("covidPlot")
        )
    )
))
