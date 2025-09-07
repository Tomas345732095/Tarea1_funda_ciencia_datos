library(readxl)
library(dplyr)
library(data.table)

datos<-fread("",#<============================Aqui colocas la ruta del archivo
             encoding = "Latin-1")#<===========Sin esta linea no lee los datos que tengan por ejemplo Ñ; Ñuble


tabla_fin<-datos %>%
  filter(NOM_DEPROV_RBD =="BIOBIO"|NOM_DEPROV_RBD =="ÑUBLE")
print(tabla_fin)
View(tabla_fin)

##############################################################
#a=(nchar(M2D7_ESC)==0)
#b=(nchar(M2D6_ESC)==0)
#c=(nchar(M2D5_ESC)==0)
tabla_fin<-datos %>%
  filter(nchar(M2D7_ESC)==0)


tabla_fin<-datos %>%
  filter(nchar(M2D6_ESC)==0)


tabla_fin<-datos %>%
  filter(nchar(M2D5_ESC)==0)
  
  

tabla_fin<-datos %>%
  filter(nchar(M2D5_ESC)==0 & nchar(M2D6_ESC)==0 & nchar(M2D7_ESC)==0)


####################################################
tabla_fin<-datos %>%
  filter(is.na(M2D7_PJE))


tabla_fin<-datos %>%
  filter(is.na(M2D6_PJE))


tabla_fin<-datos %>%
  filter(is.na(M2D5_PJE))



tabla_fin<-datos %>%
  filter(is.na(M2D5_PJE) & is.na(M2D6_PJE) & is.na(M2D7_PJE))




