Profile: ObservationIniciarDiscapacidadLE
Parent: Observation
Id: ObservationIniciarDiscapacidadLE
Title: "Observación Iniciar Discapacidad LE"
Description: "Observación Iniciar Discapacidad LE, para describir si un paciente presenta discapacidad"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)
* subject ^short = "Referencia al paciente"

* status 1..1 MS
* status = #final
* status from http://hl7.org/fhir/ValueSet/observation-status
* status ^short = "Estado de la observación, por defecto 'final' "

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
* code.coding.system = #http://loinc.org





* extension contains ExtBoolPresentaDiscapacidad named PresentaDiscapacidad 1..1 MS
* extension[PresentaDiscapacidad] ^short = "Presenta discapacidad? true | false"