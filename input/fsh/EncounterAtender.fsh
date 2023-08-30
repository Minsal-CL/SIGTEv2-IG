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
* class from VSModalidadAtencionCodigo
* identifier 1..1 MS
  * value 1..1 MS

* reasonReference 1..* MS
* reasonReference ^slicing.discriminator.type = #value
* reasonReference ^slicing.discriminator.path = "type"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.description = "Slice creado para almacenar diferentes tipos de reasonReference"
* reasonReference contains CondicionAtenderDiagnosticoConfirmacionLE 1..1 MS and ObservationAtenderLE 0..* MS
* reasonReference[CondicionAtenderDiagnosticoConfirmacionLE] only Reference(CondicionAtenderDiagnosticoConfirmacionLE)
* reasonReference[ObservationAtenderLE] only Reference(ObservationAtenderLE)
* reasonReference[ObservationAtenderLE].type = "Observation"
* reasonReference[CondicionAtenderDiagnosticoConfirmacionLE].type = "Condition"
// * diagnosis 1..1 MS
// * diagnosis ^slicing.discriminator.type = #profile
// * diagnosis ^slicing.discriminator.path = "condition.resolve()"
// * diagnosis ^slicing.rules = #open
// * diagnosis ^slicing.description = "Slice creado para almacenar diferentes tipos de diagnosis"

* diagnosis 1..1 MS
* diagnosis.condition 1..1 MS
* diagnosis.condition only Reference(ConditionInicioDiagnosticoLE)

// * diagnosis contains CondicionAtenderDiagnosticoSospechaLE 0..1 MS
// * diagnosis[CondicionAtenderDiagnosticoSospechaLE] 1..1 MS
// * diagnosis[CondicionAtenderDiagnosticoSospechaLE].condition only Reference(CondicionAtenderDiagnosticoSospechaLE)
//* diagnosis[CondicionAtenderHipotesisDiagnosticaCodigoLE] 1..1 MS
//* diagnosis[CondicionAtenderHipotesisDiagnosticaCodigoLE].condition only Reference(CondicionAtenderHipotesisDiagnosticaCodigoLE)

* subject 1..1 MS
* subject only Reference(PacienteMinsalMPI)

* period.start 1..1 MS

* type from VSTipoConsulta
* basedOn 1..1 MS
* basedOn only Reference(ServiceRequestLE)
/*
* extension contains ExtBoolPertinenciaAtencionBox named PertinenciaAtencionBox 1..1 MS
* extension contains ExtStringMotivoNoPertinencia named MotivoNoPertinencia 0..1 MS









* appointment 1..1 MS
  * reference 1..1 MS
* appointment only Reference(AppointmentAgendarLE)

* subject 1..1 MS
  * reference 1..1 MS
* subject only Reference(PatientLE)

* class MS
*/