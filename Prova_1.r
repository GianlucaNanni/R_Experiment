#https://www.copernicus.eu/en/faq

#Telerilevamento2024

# 1. R code for visualizing satellite data

# Indicare la cartella da cui estrarre i dati
setwd("C:/R_Experiment/") # Windows

# Installazione pacchetto
#install.packages("terra")
# analisi e la gestione di dati geospaziali raster e vettoriali
library(terra)

#install.packages("viridis")
# palette di colori ottimizzate per grafici e mappe
library(viridis)

#install.packages("ggplot2")
# creazione di grafici
library(ggplot2)

#install.packages("devtools")
# utilizzai i pacchetti in modo più semplice
library(devtools)

# installa in R un pacchetto che si trova su GitHub e non sul CRAN
options(download.file.method = "wininet")
devtools::install_github("ducciorocchini/imageRy", dependencies = TRUE)
#ducciorocchini → il nome dell’utente o dell’organizzazione su GitHub
#imageRy → il nome del pacchetto contenuto nel repository

library(imageRy)
# manipola e visualizza immagini raster





# R code for visualizing satellite data



#install.packages("devtools")
library(devtools)

#install.packages("terra", repos = "https://cloud.r-project.org/")
#install.packages("terra")
library(terra)

#install_github("ducciorocchini/imageRy")
library(imageRy)

im.list()
#mostra le immagini raster caricate nella memoria di R tramite "imageRy"

b2 = im.import("sentinel.dolomites.b2.tif")
plot(b2, col=cl)







