Profile: ServiceRequestExamenLE
Parent: ServiceRequest
Id: ServiceRequestExamenLE
Title: "ServiceRequestExamen LE"
Description: "ServiceRequestExamen LE recurso utilizado para la representación de los datos del examen"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* identifier 1..1 MS
  * value 1..1 MS
  * value ^short = "Valor del Identificador de la Interconsulta"
* identifier ^short = "Identificador de la Interconsulta (Se asigna a nivel central)"


// OBLIGATORIOS POR ESTANDAR
* status MS
* status ^short = "Estado de la solicitud"
* status = #draft

* intent MS
* intent ^short = "Intención de la solicitud de examenes"
* intent = #order

* subject 1..1 MS 
* subject ^short = "Referencia al paciente"
* subject only Reference(PatientLE)

* occurrenceDateTime 1..1 MS
* occurrenceDateTime ^short = "Fecha y hora en que se emite la solicitud de estudio. El formato corresponde a año, mes, día y hora (hh:mm) y se representa de la siguiente forma: YYYY-MM-DDTHH:MMZ"

* requester 1..1 MS 
* requester ^short = "Quien es la persona que solicita el estudio"
* requester only Reference(PrestadorProfesionalLE) 

* reasonCode 1..1 MS
  * text 1..1 MS
  * text ^short = "Razón en texto libre"
* reasonCode ^short = "Razón por la que se solicita el estudio"

* note 0..1 MS
  * text 1..1 MS
  * text ^short = "Nota en texto libre"
* note ^short = "Nota explicatoria adicional"

* basedOn 1..1 MS 
* basedOn ^short = "Relación a service request que representa la interconsulta"
* basedOn only Reference(ServiceRequestLE)

* code 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system MS 
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code MS 
    * code ^short = "Código definido en un sistema terminológico"
  * text MS 
  * text ^short  = "Examen solicitado en texto libre" 
* code ^short = "Que es lo que se está solicitando"
* code from CodigoExamen