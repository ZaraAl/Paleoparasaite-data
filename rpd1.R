#load data
data <- read.csv("Book4.csv")

#subset 
Nematoda <- subset(data, Phylum == "Nematoda")
Platyhelminth <- subset(data, Phylum == "Platyhelminthes")
Apicomplexa <- subset(data, Phylum == "Apicomplexa")
Euglenozoa <- subset(data, Phylum == "Euglenozoa")
Amoebozoa  <- subset(data, Phylum == "Amoebozoa")
Metamonada <- subset(data, Phylum == "Metamonada")
Acanthocephala <- subset(data, Phylum == "Acanthocephala")

# old vs new pre

# Nematoda
# Oxyuridae
Oxyuridae <- subset(Nematoda, Family == "Oxyuridae")
#Trichuridae
Trichuridae <- subset(Nematoda, Family == "Trichuridae")
#Ascarididae
Ascarididae <- subset(Nematoda, Family == "Ascarididae")

#platyhelminths
#Fasciolidae
Fasciolidae <- subset(Platyhelminth, Family == "Fasciolidae")
#Diphyllobothriidae
Diphyllobothriidae <- subset(Platyhelminth, Family == "Diphyllobothriidae")
#Taeniidae
Taeniidae <- subset(Platyhelminth, Family == "Taeniidae")

#old world Nematoda
Oxyuridaeold <- subset(Oxyuridae, World == "Old")
#Trichuridae
Trichuridaeold <- subset(Trichuridae, World == "Old")
#Ascarididae
Ascarididaeold <- subset(Ascarididae, World == "Old")

#new world Nematoda
Oxyuridaenew <- subset(Oxyuridae, World == "New")
#Trichuridae
Trichuridaenew <- subset(Trichuridae, World == "New")
#Ascarididae
Ascarididaenew <- subset(Ascarididae, World == "New")

# old world platyhelminths
Fasciolidaeold <- subset(Fasciolidae, World == "Old")
#Trichuridae
Diphyllobothriidaeold <- subset(Diphyllobothriidae, World == "Old")
#Ascarididae
Taeniidaeold <- subset(Taeniidae, World == "Old")

# new world platyhelminth
Fasciolidaenew <- subset(Fasciolidae, World == "New")
#Trichuridae
Diphyllobothriidaenew <- subset(Diphyllobothriidae, World == "New")
#Ascarididae
Taeniidaenew <- subset(Taeniidae, World == "New")

#old world Nematoda

# old world Nematoda pre

Oxyuridaeoldpre <- subset(Oxyuridaeold, Pre.or.Post =="Pre")
Trichuridaeoldpre <- subset(Trichuridaeold, Pre.or.Post =="Pre")
Ascarididaeoldpre <- subset(Ascarididaeold, Pre.or.Post == "Pre")

#old world Nematoda post

Oxyuridaeoldpost <- subset(Oxyuridaeold, Pre.or.Post =="Post")
Trichuridaeoldpost <- subset(Trichuridaeold, Pre.or.Post =="Post")
Ascarididaeoldpost <- subset(Ascarididaeold, Pre.or.Post == "Post")

#New world Nematoda

#pre

Oxyuridaenewpre <- subset(Oxyuridaenew, Pre.or.Post =="Pre")
Trichuridaenewpre <- subset(Trichuridaenew, Pre.or.Post =="Pre")
Ascarididaenewpre <- subset(Ascarididaenew, Pre.or.Post =="Pre")

#post
Oxyuridaenewpost <- subset(Oxyuridaenew, Pre.or.Post =="Post")
Trichuridaenewpost <- subset(Trichuridaenew, Pre.or.Post =="Post")
Ascarididaenewpost <- subset(Ascarididaenew, Pre.or.Post =="Post")


#old world platy

#pre
Fasciolidaeoldpre <- subset(Fasciolidaeold, Pre.or.Post =="Pre")
#Trichuridae
Diphyllobothriidaeoldpre <- subset(Diphyllobothriidaeold, Pre.or.Post =="Pre")
#Ascarididae
Taeniidaeoldpre <- subset(Taeniidaeold, Pre.or.Post =="Pre")

#post
Fasciolidaeoldpost <- subset(Fasciolidaeold, Pre.or.Post =="Post")
#Trichuridae
Diphyllobothriidaeoldpost <- subset(Diphyllobothriidaeold, Pre.or.Post =="Post")
#Ascarididae
Taeniidaeoldpost <- subset(Taeniidaeold, Pre.or.Post =="Post")

#new world
#pre
Fasciolidaenewpre <- subset(Fasciolidaenew, Pre.or.Post =="Pre")
#Trichuridae
Diphyllobothriidaenewpre <- subset(Diphyllobothriidaenew, Pre.or.Post =="Pre")
#Ascarididae
Taeniidaenewpre <- subset(Taeniidaenew, Pre.or.Post =="Pre")

#post
Fasciolidaenewpost <- subset(Fasciolidaenew, Pre.or.Post =="Post")
#Trichuridae
Diphyllobothriidaenewpost <- subset(Diphyllobothriidaenew, Pre.or.Post =="Post")
#Ascarididae
Taeniidaenewpost <- subset(Taeniidaenew, Pre.or.Post =="Post")

#world map
library(sp)
library(raster)
library(rgdal)
library(chronosphere)
ne <- readOGR("C:/Users/LENOVO/Downloads/natural_earth/ne_10m_land.shx")

str(ne,2)

ne@proj4string
View(ne)
plot(ne, col="grey", border= NA, main= "Nematoda Dispersal in Old World", cex.main=0.8)




#plot Nematoda
#old pre
plot(ne, col="grey", border= NA, main= "Nematoda Dispersal in the Old World Pre-Columbian Era", cex.main=0.8)
points(Oxyuridaeoldpre$Longitude, Oxyuridaeoldpre$Latitude, col = "#0099FF", pch = 20)
points(Trichuridaeoldpre$Longitude, Trichuridaeoldpre$Latitude, col = "#6600FF", pch = 20)
points(Ascarididaeoldpre$Longitude, Ascarididaeoldpre$Latitude, col = "#FF66FF", pch = 20 )
legend("left", legend=c("Oxyuridae", "Trichuridae", "Ascarididae"),
       col=c("#0099FF", "#6600FF", "#FF66FF"), pch=20, cex=0.8, box.lty = 0)

#old post
plot(ne, col="grey", border= NA, main= "Nematoda Dispersal in the Old World Post-Columbian Era", cex.main=0.8)
points(Oxyuridaeoldpost$Longitude, Oxyuridaeoldpost$Latitude, col = "#0099FF", pch = 20)
points(Trichuridaeoldpost$Longitude, Trichuridaeoldpost$Latitude, col = "#6600FF", pch = 20)
points(Ascarididaeoldpost$Longitude, Ascarididaeoldpost$Latitude, col = "#FF66FF", pch = 20 )
legend("left", legend=c("Oxyuridae", "Trichuridae", "Ascarididae"),
       col=c("#0099FF", "#6600FF", "#FF66FF"), pch=20, cex=0.8, box.lty = 0)
      
#new world

#pre
plot(ne, col="grey", border= NA, main= "Nematoda Dispersal in the New World Pre-Columbian Era", cex.main=0.8)
points(Oxyuridaenewpre$Longitude, Oxyuridaenewpre$Latitude, col = "#0099FF", pch = 20)
points(Trichuridaenewpre$Longitude, Trichuridaenewpre$Latitude, col = "#6600FF", pch = 20)
points(Ascarididaenewpre$Longitude, Ascarididaenewpre$Latitude, col = "#FF66FF", pch = 20 )
legend("left", legend=c("Oxyuridae", "Trichuridae", "Ascarididae"),
       col=c("#0099FF", "#6600FF", "#FF66FF"), pch=20, cex=0.8, box.lty = 0)


#post
plot(ne, col="grey", border= NA, main= "Nematoda Dispersal in the New World Post-Columbian Era", cex.main=0.8)
points(Oxyuridaenewpost$Longitude, Oxyuridaenewpost$Latitude, col = "#0099FF", pch = 20)
points(Trichuridaenewpost$Longitude, Trichuridaenewpost$Latitude, col = "#6600FF", pch = 20)
points(Ascarididaenewpost$Longitude, Ascarididaenewpost$Latitude, col = "#FF66FF", pch = 20 )
legend("left", legend=c("Oxyuridae", "Trichuridae", "Ascarididae"),
       col=c("#0099FF", "#6600FF", "#FF66FF"), pch=20, cex=0.8, box.lty = 0)

 
#plot Platyhelminths
#old pre
plot(ne, col="grey", border= NA, main= "Platyhelminth Dispersal in the Old World Pre-Columbian Era ", cex.main=0.8)
points(Fasciolidaeoldpre$Longitude, Fasciolidaeoldpre$Latitude, col = "#FF9933", pch = 20)
points(Diphyllobothriidaeoldpre$Longitude, Diphyllobothriidaeoldpre$Latitude, col = "#CC0033", pch = 20)
points(Taeniidaeoldpre$Longitude, Taeniidaeoldpre$Latitude, col = "#FF66FF", pch = 20 )
legend("left", legend=c("Fasciolidae", "Diphyllobothriidae", "Taeniidae"),
       col=c("#FF9933", "#CC0033", "#FF66FF"), pch=20, cex=0.8, box.lty = 0)
#post
plot(ne, col="grey", border= NA, main= "Platyhelminth Dispersal in Old world Post-Columbian Era", cex.main=0.8)
points(Fasciolidaeoldpost$Longitude, Fasciolidaenoldpost$Latitude, col = "#FF9933", pch = 20)
points(Diphyllobothriidaeoldpost$Longitude, Diphyllobothriidaeoldpost$Latitude, col = "#CC0033", pch = 20)
points(Taeniidaeoldpost$Longitude, Taeniidaeoldpost$Latitude, col = "#FF66FF", pch = 20 )
legend("left", legend=c("Fasciolidae", "Diphyllobothriidae", "Taeniidae"),
       col=c("#FF9933", "#CC0033", "#FF66FF"), pch=20, cex=0.8, box.lty = 0)


#new pre

plot(ne, col="grey", border= NA, main= "Platyhelminth Dispersal in the New World Pre-Columbian Era ", cex.main=0.8)
points(Fasciolidaenewpre$Longitude, Fasciolidaenewpre$Latitude, col = "#FF9933", pch = 20)
points(Diphyllobothriidaenewpre$Longitude, Diphyllobothriidaenewpre$Latitude, col = "#CC0033", pch = 20)
points(Taeniidaenewpre$Longitude, Taeniidaenewpre$Latitude, col = "#FF66FF", pch = 20 )
legend("left", legend=c("Fasciolidae", "Diphyllobothriidae", "Taeniidae"),
       col=c("#FF9933", "#CC0033", "#FF66FF"), pch=20, cex=0.8, box.lty = 0)
#post
plot(ne, col="grey", border= NA, main= "Platyhelminth Dispersal in New world Post-Columbian Era", cex.main=0.8)
points(Fasciolidaenewpost$Longitude, Fasciolidaenewpost$Latitude, col = "#FF9933", pch = 20)
points(Diphyllobothriidaenewpost$Longitude, Diphyllobothriidaenewpost$Latitude, col = "#CC0033", pch = 20)
points(Taeniidaenewpost$Longitude, Taeniidaenewpost$Latitude, col = "#FF66FF", pch = 20 )
legend("left", legend=c("Fasciolidae", "Diphyllobothriidae", "Taeniidae"),
       col=c("#FF9933", "#CC0033", "#FF66FF"), pch=20, cex=0.8, box.lty = 0)
