Profile: ServiceRequestExamenLE
Parent: ServiceRequest
Id: ServiceRequestExamenLE
Title: "ServiceRequestExamen LE"
Description: "ServiceRequestExamen LE recurso utilizado para la representación de los datos de la examen."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* identifier 1..1 MS
* identifier.value 1..1 MS

// OBLIGATORIOS POR ESTANDAR
* status MS
* intent MS
* subject 1..1 MS 
* subject only Reference(PacienteMinsalMPI)

* occurrenceDateTime 1..1 MS
* requester 1..1 MS 
* requester only Reference(PrestadorProfesionalLE) 
* reasonCode 1..1 MS
  * text 1..1 MS
* note 0..1 MS
  * text 1..1 MS
* basedOn 1..1 MS 
* basedOn only Reference(ServiceRequestLE)
* code 1..1 MS
* code from CodigoExamen