Profile: EncounterAtenderLE
Parent: Encounter
Id: EncounterAtenderLE
Title: "Encounter Atender LE"
Description: "Encounter Atender LE recurso que se utiliza para representar el encuentro médico, cuando se comienza a ejecutar la atención de la interconsulta."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// Obligatorios por estandar
* status MS
* status = #finished

* identifier 1..1 MS
  * value 1..1 MS


/*
* extension contains ExtBoolPertinenciaAtencionBox named PertinenciaAtencionBox 1..1 MS
* extension contains ExtStringMotivoNoPertinencia named MotivoNoPertinencia 0..1 MS

* basedOn 1..1 MS
* basedOn only Reference(ServiceRequestLE)

* diagnosis 2..2 MS
  * condition 1..1 MS
* diagnosis.condition only Reference(CondicionAtenderDiagnosticoSospechaLE or CondicionAtenderHipotesisDiagnosticaCodigoLE)
* reasonReference 2..2 MS
* reasonReference only Reference(CondicionAtenderDiagnosticoConfirmacionLE or ObservationAtenderLE)

* appointment 1..1 MS
  * reference 1..1 MS
* appointment only Reference(AppointmentLE)

* subject 1..1 MS
  * reference 1..1 MS
* subject only Reference(PatientLE)

* class MS
*/