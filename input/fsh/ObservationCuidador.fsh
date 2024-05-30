Profile: ObservationIniciarCuidadorLE
Parent: Observation
Id: ObservationIniciarCuidadorLE
Title: "Observation Iniciar Cuidador LE"
Description: "Indica que el paciente es cuidador, es decir es responsable del cuidado de otra persona"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* extension contains ExtBoolEsCuidador named EsCuidador 1..1 MS
* extension[EsCuidador] ^short = "Es cuidador? true | false"

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)
* subject 1..1 MS 
* subject ^short = "Referencia al paciente"
* status = #final
* status ^short = "Estado de la observación, por defecto 'final' "

* code 1..1 MS
* code ^short = "Tipo de observación, por defecto se usará como valor fijo el código de loinc que explicita si un paciente está a cargo de los cuidados de otra persona"
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * system = "http://loinc.org"
    * code ^short = "Código definido en un sistema terminológico"
    * code = #95385-1