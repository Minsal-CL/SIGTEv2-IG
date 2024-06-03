Profile: RangeCL
Parent: Range
Id: RangeCL
Title: "Rango para dispensación de medicamentos"
Description: "Definición para un rango de valores y su contenido para el consumo de un fármaco según prescripción"
* ^version = "0.9.8"
* ^status = #active
* ^publisher = "MINSAL Chile"

//* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* ^purpose = "Este Pefil basado en SimpleQuantity para Rango tiene como finalidad especificarla para Chile"
* . MS
* . ^short = "Rango de medida de la  cantidad de medicamento"
* . ^definition = "Rango de medida de cantidad de medicamento"
* low 0..1 MS
* low ^short = "Límite Inferior del Rango de Valores"
* low ^definition = "Límite Inferior del Rango de Valores"
* low only SimpleQuantityCL
* high 0..1 MS
* high only SimpleQuantityCL
* high ^short = "Límite Superior del Rango de Valores"
* high ^definition = "Límite Superior del Rango de Valores"
