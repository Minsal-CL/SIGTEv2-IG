Profile: CarePlanAtenderLE
Parent: CarePlan
Id: CarePlanAtenderLE
Title: "CarePlan Atender LE"
Description: "CarePlan Atender LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// OBLIGATORIOS POR ESTANDAR

* status MS
* status ^short = "Estado del CarePlan, en este caso 'active'"
* status = #active

* intent MS
* intent ^short = "Intención del CarePlan, en este caso 'plan'"
* intent = #plan

* subject 1..1 MS
* subject ^short = "Referencia al paciente"
* subject only Reference(PatientLE)

* description 1..1 MS
* description ^short = "Descripción como texto libre"

* activity.reference MS
* activity.reference ^short = "Detalles definidos en un recurso específico"

* extension contains ExtBoolSolicitudExamenes named SolicitudExamenes 1..1 MS
* extension[SolicitudExamenes] ^short = "Solicitud de exámenes"



 