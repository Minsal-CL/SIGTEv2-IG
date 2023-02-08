Profile: ObservationAtenderLE
Parent: Observation
Id: ObservationAtenderLE
Title: "Observation Atender LE"
Description: "ObservationAtender LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft


* valueString 1..1 MS
* status 1..1 MS
* status = #registered

* code 1..1 MS
  * text 1..1 MS

* code
  * text = #"examenes anteriores"