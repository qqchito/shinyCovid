covid_chile <- read.csv("https://raw.githubusercontent.com/MinCiencia/Datos-COVID19/master/output/producto3/TotalesPorRegion_std.csv", encoding="UTF-8")
covid_chile <- covid_chile[covid_chile$Categoria == "Casos nuevos totales", ]
covid_chile$Fecha <- as.Date(covid_chile$Fecha)