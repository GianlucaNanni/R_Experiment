#https://www.copernicus.eu/en/faq


#Telerilevamento2024

# 1. Satellite data visualisation in R by imageRy

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
#devtools::install_github("ducciorocchini/imageRy", dependencies = TRUE)
#ducciorocchini → il nome dell’utente o dell’organizzazione su GitHub
#imageRy → il nome del pacchetto contenuto nel repository

library(imageRy)
# manipola e visualizza immagini raster
#istruzioni_ https://htmlpreview.github.io/?https://github.com/ducciorocchini/imageRy/blob/main/imageRy_rapid_manual.html

im.list()
#mostra l'elenco dei dati disponibili nella memoria di R tramite "imageRy"

# Importing data
b2 <- im.import("sentinel.dolomites.b2.tif")

# Plotting the data
#clg <- colorRampPalette(c("green", "yellow", "red"))(3) #colori netti
#plot(b2, col=clg)
clg <- colorRampPalette(c("green", "yellow", "red"))(100) #colori sfumati
plot(b2, col=clg)

# importing the additional bands
b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=clg)
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=clg)
b8 <- im.import("sentinel.dolomites.b8.tif")
plot(b8, col=clg)

# multiframe

