####Modelo predictivo de riesgo de Contaminacion en Alimentos Callejeros###

#Datos 

alimentos <- readline (prompt = "introduce el tipo de alimento que deseas analizar: ")
temperatura <- readline (prompt = "introduce la temperatura a la que se encuentra el alimento: ")
exposicion <- readline (prompt = "cuanto tiempo ha estado expuesto el alimento?: ")
manipulacion <- readline (prompt = "contesta SI o NO si la comida ha sido manipulada con las manos: ")
tiempo <- readline (prompt = "en que estacion del año te encuentras?(Primera en mayuscula): ")



alimentos <- c("tacos", "birria", "pizza", "hamburguesas", "hotdog", "moronga", "tacos sudados", "barbacoa", "carnitas", "tortas")
temperatura <- c(37, 36, 35, 36, 33, 37, 37, 37, 36, 35)
horas_de_exposicion <- c(0.2, 1, 3, 0.2, 0.1, 2, 3, 3, 4)
bacterias_comunes <- c("Escherichia coli", "Shigella spp", "Salmonella typhi", "Staphylpcoccus aureus", "Campylobacter spp", "Listeria monocytogenes", "Klebsiella spp")
manipulacion <- c("si", "si", "no", "si", "si", "no", "si", "si", "si")
estacion_año <- c("Verano", "Primavera", "Invierno", "Otoño")

### Seleccion de los alimentos ###
t <- as.numeric(readline (prompt = "introduce la temperatura a la que se encuentra el alimento: "))

if (t <= 5){
    prob <- 0.05 # Baja probabilidad (refrigeracion)  
  } else if (t >= 6 & t <= 20 ){
    prob <- 0.30 #Moderado 
  } else if (t >= 21 & t <= 35){
    prob <- 0.70
  }else {
    prob <- 0.90 # Muy alta 
  }

print(paste("La probabilidad de contaminacion es:", prob))

