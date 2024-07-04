Profile: ObservationAnamnesisLE
Parent: Observation
Id: ObservationAnamnesisLE
Title: "Observation Anamnesis LE"
Description: "Observation Anamnesis LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* status 1..1 MS
* status ^short = "Estado de la observación, en este caso #registered"
* status = #registered

* code 1..1 MS
  * ^short = "Tipo de observación"
  * coding 1..1 MS
    * system 1..1 MS
    * system ^short =  "Sistema terminológico, url/uri/uuid"
    * system = "http://snomed.info/sct"
    * code 1..1 MS
    * code = #84100007
    * display 0..1 MS
  * text 0..1 MS
  * text ^short = "Anamnesis"
* code ^short = "Anamnesis" 

* subject 1..1 MS
* subject only Reference(PatientLE)

* encounter 1..1 MS
* encounter ^short = "Encuentro del cual nace la observación"
* encounter only Reference(EncounterAtenderLE)

* effectiveDateTime 0..1 MS
* effectiveDateTime ^short = "Tiempo o momento en que se realizo anamnesis"

* value[x] 1..1 MS
* value[x] only string
* valueString ^short = "Anamnesis"