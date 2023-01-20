Profile: EncounterAtenderLE
Parent: Encounter
Id: EncounterAtenderLE
Title: "Encounter Atender LE"
Description: "Encounter Atender LE"

* identifier 1..1 MS
  * value 1..1 MS

* extension contains ExtBoolean named PertinenciaAtencionBox 1..1 MS
* extension contains ExtString named MotivoNoPertinencia 0..1 MS

* basedOn 1..1 MS

//* diagnosis.condition only Reference(CondicionLE1)