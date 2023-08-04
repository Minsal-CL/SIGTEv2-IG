Profile: ObservationInicioCuidadorLE
Parent: Observation
Id: ObservationInicioCuidadorLE
Title: "Observation Inicio Cuidador LE"
Description: "Observation Inicio para describir si necesita cuidador"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)
* status = #final

* code 1..1 MS
* code = http://loinc.org#95385-1

* extension contains ExtBoolPresentaDiscapacidad named PresentaDiscapacidad 1..1 MS
