Profile: CarePlanAtenderLE
Parent: CarePlan
Id: CarePlanAtenderLE
Title: "CarePlan Atender LE"
Description: "CarePlan Atender LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// OBLIGATORIOS POR ESTANDAR

* status MS
* intent MS
* subject MS
* subject only Reference(PatientLE)

* description 1..1 MS
* activity.reference MS
* extension contains ExtBoolSolicitudExamenes named SolicitudExamenes 1..1 MS



 