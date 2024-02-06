Profile: ObservationAtenderLE
Parent: Observation
Id: ObservationAtenderLE
Title: "Observation Atender LE"
Description: "ObservationAtender LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft


* valueString 1..1 MS
* valueString ^short = "Resultado de los exámenes, en texto libre"

* status 1..1 MS
* status ^short = "Estado de la observación, en este caso #registered"
* status = #registered

* code 1..1 MS
  * text 1..1 MS
  * text ^short = "Exámenes anteriores en texto libre"
* code ^short = "Exámenes anteriores" 