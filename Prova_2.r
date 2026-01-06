#https://www.copernicus.eu/en/faq

setwd("C:/R_Experiment/")
library(raster)
img<-brick("vene2.tiff")
img
plot(img)
cl <- colorRampPalette(c("green", "yellow", "red"))(100)
plot(img, col=cl)

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

