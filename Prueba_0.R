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
#Datos nulos
tabla_fin<-datos %>%
  filter(is.na(M2D7_PJE))


tabla_fin<-datos %>%
  filter(is.na(M2D6_PJE))


tabla_fin<-datos %>%
  filter(is.na(M2D5_PJE))



tabla_fin<-datos %>%
  filter(is.na(M2D5_PJE) & is.na(M2D6_PJE) & is.na(M2D7_PJE))

##############################################################

#Referencia pregunta 7 parte 1
boxplot(datos[19:21])

boxplot(datos[19])

boxplot (c (unlist(datos[19]),unlist(datos[20]),unlist(datos[21])))


#pregunta 7 

#Vista de los datos por separado
boxplot(datos[,19:20])#Forma alternativa: boxplot(datos$AE_PJE,datos$EP_PJE)
summary(datos$AE_PJE)
summary(datos$EP_PJE)
table(datos$AE_PJE)
table(datos$EP_PJE)

#Vista unida de los datos 
boxplot (c (unlist(datos[,19]),unlist(datos[,20])))#Forma alternativa: boxplot (c (datos$AE_PJE,datos$EP_PJE))
summary(c (unlist(datos[,19]),unlist(datos[,20])))
table(c (unlist(datos[,19]),unlist(datos[,20])))


######pregunta 8

#matrix(c(summary(datos[2])),c(summary(datos[3]))
summary(datos[,5])
data.frame(summary(datos[,3]))
summary(datos[2])
summary(datos[,3])
a<-(summary(datos[,3]))
matrix(summary(datos[,3]))



Datos<-c("Perc.25","Perc.50","Perc.75","Moda","Media")
a<-

#Pregunta 9

b<-c(datos[,3])
#c<-datos[2]
View(b)
print(c(datos[,2]))
#a<-datos$nombre
View(cor(b))

View(cor(datos[,1],datos[,2],datos[,3],datos[,5],datos[,6],datos[,7],datos[,8],datos[,10],datos[,11],datos[,12],datos[,13],datos[,14],datos[,16],datos[,17]))
View(cor(datos[,1],datos[,2],datos[3]))
View(cor(datos[,1],datos[,2],datos[,3],datos[,5]))

a<-datos[,3]
b<-datos[,2]
c<-datos[,1]

cor(a,b,c)



tabla_fin<-datos %>%
  filter(NOM_DEPROV_RBD =="BIOBIO"|NOM_DEPROV_RBD =="ÑUBLE")

tabla_fin_uno<-tabla_fin %>%
  filter()
print(tabla_fin)
View(tabla_fin)






