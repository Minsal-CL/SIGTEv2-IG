Profile: ObservationIniciarCuidadorLE
Parent: Observation
Id: ObservationIniciarCuidadorLE
Title: "Observation Iniciar Cuidador LE"
Description: "Observation Iniciar, para describir si un paciente necesita cuidador"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)
* subject 1..1 MS 
* subject ^short = "Referencia al paciente"
* status = #final
* status ^short = "Estado de la obseravación, por defecto 'final' "

* code 1..1 MS
* code ^short = "Tipo de observación, por defecto se usará como valor fijo el código de loinc que explicita si un paciente necesita cuidador"
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * system = "http://loinc.org"
    * code ^short = "Código definido en un sistema terminológico"
    * code = #95385-1