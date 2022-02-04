# shinyCovid

This little application allows you to see the daily covid cases from 2020 to the current date.

The data was obtained directly from the repository of the Ministry of Health of Chile and is of public use. 

After reading the files, just I did some cleaning, filtering the Dataset to only contain the total cases per day.

The cases are divided by administrative Region and there is also a Total that allows you to query the total cases in the country.

I included a global.R file to do the file reading.

The dataset is very easy to read and contains 4 columns:
Region   : The administrative region in which we are counting the total cases
Categoria: Category. Here you can find total cases, active cases, total death, etc. We select total cases.
Fecha    : In the original file it comes as a chr, I converted to date
Total    : Number that represents the value according to the category.