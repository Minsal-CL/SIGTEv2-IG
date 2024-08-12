Profile: ObservationDiscapacidadLE
Parent: CoreObservacionCL
Id: ObservationDiscapacidadLE
Title: "Discapacidad LE"
Description: "Observación Discapacidad LE, para describir si un paciente presenta discapacidad"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)
* subject ^short = "Referencia al paciente"

* status 1..1 MS
* status = #final
* status from http://hl7.org/fhir/ValueSet/observation-status
* status ^short = "Estado de la observación, por defecto 'final'"

* code 1..1 MS
* code.coding 1..1 MS
* code.coding.code 1..1 MS
//    * system 1..1 MS
//    * code 1..1 MS
//* code ^short = "Tipo de observación, por defecto se usará como valor fijo el código de loinc que explicita si un paciente presenta algún problema"
//  * coding ^short = "Códigos definidos por un sistema terminológico"
//    * system ^short = "Sistema terminológico, url/uri/uuid"
//    * code ^short = "Código definido en un sistema terminológico"
* code ^short = "Tipo de observación"
* code.coding.code = #101720-1
* code.coding.system = "http://loinc.org"
* code from TipoDeObservacion (extensible)

* value[x] only boolean
* valueBoolean 1..1 MS
* valueBoolean ^short = "Tiene Discapacidad? true | false"

* encounter 0..1 MS
* encounter ^short = "Encuentro del cual nace la observación"
* encounter only Reference(EncounterIniciarLE or EncounterAtenderLE)
