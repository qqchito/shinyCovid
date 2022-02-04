#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

covid_chile <- read.csv("https://raw.githubusercontent.com/MinCiencia/Datos-COVID19/master/output/producto3/TotalesPorRegion_std.csv", encoding="UTF-8")
covid_chile <- covid_chile[covid_chile$Categoria == "Casos nuevos totales", ]
covid_chile$Fecha <- as.Date(covid_chile$Fecha)


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
