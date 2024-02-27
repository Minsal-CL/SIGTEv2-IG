Profile: ObservationIniciarDiscapacidadLE
Parent: Observation
Id: ObservationIniciarDiscapacidadLE
Title: "Observation Iniciar Discapacidad LE"
Description: "Observation Iniciar Discapacidad LE, para describir si un paciente presenta discapacidad"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)
* subject ^short = "Referencia al paciente"

* status = #final
* status ^short = "Estado de la obseravación, por defecto 'final' "

* code 1..1 MS
* code ^short = "Tipo de observación, por defecto se usará como valor fijo el código de loinc que explicita si un paciente presenta algún problema"
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code ^short = "Código definido en un sistema terminológico"
* code ^short = "Tipo de observación"
* code = http://loinc.org#75326-9

* extension contains ExtBoolPresentaDiscapacidad named PresentaDiscapacidad 1..1 MS
* extension[PresentaDiscapacidad] ^short = "Presenta discapacidad? true | false"