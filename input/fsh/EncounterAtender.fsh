Profile: EncounterAtenderLE
Parent: Encounter
Id: EncounterAtenderLE
Title: "Encounter Atender LE"
Description: "Encounter Atender LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// Obligatorios por estandar
* status MS
* status = #finished

* identifier 1..1 MS
  * value 1..1 MS



* extension contains ExtBoolPertinenciaAtencionBox named PertinenciaAtencionBox 1..1 MS
* extension contains ExtStringMotivoNoPertinencia named MotivoNoPertinencia 0..1 MS

* basedOn 1..1 MS

