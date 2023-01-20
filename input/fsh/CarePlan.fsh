Profile: CarePlanLE
Parent: CarePlan
Id: CarePlanLE
Title: "CarePlanLE"
Description: "CarePlanLE"

// OBLIGATORIOS POR ESTANDAR

* status MS
* intent MS
* subject MS
* subject only Reference(PacienteLE)

* description 1..1 MS
* activity.detail.code  1..1 MS
* activity.detail.kind 1..1 MS
* activity.detail.kind = #MedicationRequest
* activity.detail.status 1..1 MS
* activity.detail.status = #not-started
* activity.detail.productCodeableConcept.text 1..1 MS

* extension contains ExtBoolean named SolicitudExamenes 1..1 MS




 