Profile: SimpleQuantityCL
Parent: SimpleQuantity
Id: SimpleQuantityCL
Title: "SimpleQuantity para el caso de Receta"
Description: "Definición para una unidad simple y su contenido para el consumo de un fármaco según prescripción"
* ^version = "0.9.8"
* ^status = #active
* ^publisher = "MINSAL Chile"

//* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* ^purpose = "Este Pefil basado en SimpleQuantity tiene como finalidad especificarla para Chile"
* . MS
* . ^short = "Medida de cantidad de medicamento"
* . ^definition = "Medida de cantidad de medicamento"
* unit 0..1 MS
* unit ^short = "Valor de la Cantidad a Administrar"
* unit ^definition = "Valor de la Cantidad a Administrar" 
* system 0..1 MS
* system ^short  = "Namespace del sistema de codificación" 
* system ^short  = "Namespace del sistema de codificación, se utilizará el CS creado para la Unidad Asistencial Chilena"

* code 0..1 MS
* code ^short = "Código de la Unidad usada para definir el valor"
* code ^short = "Código de la Unidad usada para definir el valor, la cual proviene de los de Unidad Asistencial"
* code from VSUnidadAsistencial