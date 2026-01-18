#https://www.copernicus.eu/en/faq



# 1. Bande e parametri grafici

setwd("C:/R_Experiment/")

#opzione.1
#install.packages("raster")
library(raster)
img<-brick("vene2.tiff")
img
plot(img)
cl <- colorRampPalette(c("green", "yellow", "red"))(100)
plot(img, col=cl)

#opzione.2
#install.packages("terra")
library(terra)
img <- rast("vene2.tiff")
img
plot(img, stretch="lin")
plotRGB(img, r=1, g=2, b=3, stretch="lin")


# Landsat 8 (2013-...)
# B1: Aerosol costiero (ultra-blu, Studi dell’atmosfera, coste, particelle nell’aria)
# B2: Blu (Acque, sedimenti, zone costiere)
# B3: Verde (Vegetazione, vigore delle piante)
# B4: Rosso (Clorofilla, uso del suolo)
# B5: Infrarosso vicino (NIR, Vegetazione sana)
# B6: Infrarosso a onde corte (SWIR 1, Umidità del suolo e delle piante)
# B7: Infrarosso a onde corte (SWIR 2, Rocce, minerali, aree bruciate)
# B8: Pancromatica (Bianco e nero ad alta risoluzione spaziale)
# B9: Cirri (Rilevamento delle nubi alte e sottili)
# B10: Infrarosso termico (TIRS 1, Temperatura della superficie terrestre)
# B11: Infrarosso termico (TIRS 2, Temperatura (supporto e correzione))

# Plot banda 1
plot(img[[1]])
cl <- colorRampPalette(c("green", "yellow", "red"))(100)
plot(img[[1]], col=cl)

# Funzione par: imposta più parametri grafici nella stessa immagine
# 1 riga 2 colonne
par(mfrow=c(1,2))
plot(img[[1]])
plot(img[[2]])
# 1 colonna 2 righe 
par(mfcol=c(1,2))
plot(img[[1]])
plot(img[[2]])
# Plot delle prime 3 bande , (par(mfrow=c(2,2))distribuzione quadrata se 4 bande
par(mfrow=c(1,3))
plot(img[[1]])
plot(img[[2]])
plot(img[[3]])
#Plot distribuzione "quadrata" delle 4 bande:
#par(mfrow=c(2,2))
#plot(img[[1]])
#plot(img[[2]])
#plot(img[[3]])
#plot(img[[4]])
#si può utilizzare una scala di colore propria per ogni banda (B1,B2,..)

# Funzione plotRGB: crea immagini multibanda (colori naturali)
pdf("multitemporale.pdf") #Salva immagine pdf in C:nome_cartella
par(mfrow=c(1,2))
plotRGB(img, r=1, g=2, b=3, stretch="Lin")
plotRGB(img, r=1, g=2, b=3, stretch="hist")
#Cambiare ordine dei numeri significa cambiare quale banda dell’immagine viene assegnata ai colori Rosso–Verde–Bl
plotRGB(img, r=3, g=4, b=2, stretch="Lin")


# 2.

# Indicare la cartella da cui estrarre i dati
setwd("C:/R_Experiment/") #setwd("C:/R_Experiment/Sotto_cartella/")

#install.packages("raster")
library(raster)

#install.packages("RStoolbox")
#calcolo degli indici spettrali
library(RStoolbox)

#install.packages("rasterVis")
#visualizzazione e interazione dati raster
library(rasterVis)

# Importare tutte le immagini INSIEME, devono ritagliare la stessa area (utile con bande diverse)
#crea lista di file per la funzione lapply
rlist <- list.files(pattern=".tiff") # pattern=scritta in comune nei file
rlist
import <- lapply(rlist,raster)
# Funzione per avere le info sul file
import
TGr <- stack(import)
# Funzione per avere le info sul file
TGr
