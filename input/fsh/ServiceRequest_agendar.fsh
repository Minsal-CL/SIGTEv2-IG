Profile: ServiceRequestAgendar
Parent: ServiceRequest
Id: ServiceRequestAgendar
Title: "Service Request Agendar LE"
Description: "Service Request Agendar LE"


* identifier 1..1 MS 
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice creado para almacenar el identificador"
* identifier contains IdInterconsulta 1..1 MS 

// OBLIGATORIOS POR ESTANDAR
* status MS
* intent MS
* subject MS