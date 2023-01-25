Profile: EncounterAtenderLE
Parent: Encounter
Id: EncounterAtenderLE
Title: "Encounter Atender LE"
Description: "Encounter Atender LE"

// Obligatorios por estandar
* status MS
* status = #in-progress

* identifier 1..1 MS
  * value 1..1 MS

* extension contains ExtBoolPertinenciaAtencionBox named PertinenciaAtencionBox 1..1 MS
* extension contains ExtStringMotivoNoPertinencia named MotivoNoPertinencia 0..1 MS

* basedOn 1..1 MS

