# https://github.com/ducciorocchini/Telerilevamento_2025/tree/main/Code


# Indicare la cartella da cui estrarre i dati
setwd("C:/R_Experiment/") # Windows

# Installazione pacchetto
#install.packages("terra")
# analisi e la gestione di dati geospaziali raster e vettoriali

# Funzione per richiamare il pacchetto, ne attiva le funzioni
library(terra)

#install.packages("devtools")
# utilizzai i pacchetti in modo più semplice
library(devtools)

# serve installare in R un pacchetto che si trova su GitHub
#install_github("ducciorocchini/imageRy")
#ducciorocchini → il nome dell’utente o dell’organizzazione su GitHub
#imageRy → il nome del pacchetto contenuto nel repository

#ducciorocchini ha creato lui un pacchetto, non disponibile sul CRAN, che per essere utilizzato deve essere scaricato da GitHub

library(imageRy)
# manipola e visualizza immagini raster





# R code for visualizing satellite data

#install.packages("viridis")
# palette di colori ottimizzate per grafici e mappe
library(viridis)

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







