Profile: CarePlanAtenderLE
Parent: CarePlan
Id: CarePlanAtenderLE
Title: "CarePlan Atender LE"
Description: "CarePlan Atender LE es el recurso utilizado para representar las indicaciones entregadas por el profesional como resultado de la atención."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* extension contains ExtensionSolicitudExamenes named Requiere-Examen 1..1 MS
* extension[Requiere-Examen] ^short = "Declaración si el paciente requiere exámenes"

* status MS
* status ^short = "Estado del CarePlan, en este caso 'active'"
* status = #active

* intent MS
* intent ^short = "Intención del CarePlan, en este caso 'plan'"
* intent = #plan

* subject 1..1 MS
* subject ^short = "Referencia al paciente"
* subject only Reference(PatientLE)

* encounter 0..1 MS
* encounter ^short = "Encuentro en el cual se genera el plan de cuidado"
* encounter only Reference(EncounterAtenderLE)

* description 1..1 MS
* description ^short = "Indicaciones del plan de cuidado como texto libre"

* activity 0..* MS
* activity ^slicing.discriminator.type = #profile
* activity ^slicing.discriminator.path = "reference.resolve()"
* activity ^slicing.rules = #open
* activity contains referenciaReceta 0..* MS and referenciaServiceRequestExamenLE 0..* MS

* activity[referenciaServiceRequestExamenLE].reference 1..1 MS
* activity[referenciaServiceRequestExamenLE].reference only Reference(ServiceRequestExamenLE)
* activity[referenciaServiceRequestExamenLE].reference ^short = "Detalles definidos en un recurso específico"

* activity[referenciaReceta].reference 1..1 MS
* activity[referenciaReceta].reference only Reference(MedicationRequest)
* activity[referenciaReceta].reference ^short = "Detalles definidos en un recurso específico"