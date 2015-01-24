library(slidify)
library(knitr)
setwd("C:/Users/vfonseca/Documents/ESTADÍSTICA/Documentación/Data Developing products/2_avance_final_project_ddp/FINAL_PROJECT_SLIDIFY")
### set the working directory to where you want to create your Slidify project

author("final_project_slidify")

slidify("index.Rmd")  ### Abre el archivo para crear la presentacion
#### los símbolos de numeral son para títulos de las diapos y --- es para separar las diapos. 


browseURL("index.html")
### carga la presentacion en el navegador. 