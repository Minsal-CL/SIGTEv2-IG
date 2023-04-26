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

* reasonReference 2..2 MS
* reasonReference ^slicing.discriminator.type = #value
* reasonReference ^slicing.discriminator.path = "reference"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.description = "Slice creado para almacenar diferentes tipos de reasonReference"
* reasonReference contains CondicionAtenderDiagnosticoConfirmacionLE 1..1 MS and ObservationAtenderLE 1..1 MS
* reasonReference[CondicionAtenderDiagnosticoConfirmacionLE] only Reference(CondicionAtenderDiagnosticoConfirmacionLE)
* reasonReference[ObservationAtenderLE] only Reference(ObservationAtenderLE)

* diagnosis 2..2 MS
* diagnosis ^slicing.discriminator.type = #value
* diagnosis ^slicing.discriminator.path = "reference"
* diagnosis ^slicing.rules = #open
* diagnosis ^slicing.description = "Slice creado para almacenar diferentes tipos de reasonReference"

* diagnosis contains CondicionAtenderDiagnosticoSospechaLE 0..1 MS and CondicionAtenderHipotesisDiagnosticaCodigoLE 0..1 MS
* diagnosis[CondicionAtenderDiagnosticoSospechaLE] 1..1 MS
* diagnosis[CondicionAtenderDiagnosticoSospechaLE].condition only Reference(CondicionAtenderDiagnosticoSospechaLE)
* diagnosis[CondicionAtenderHipotesisDiagnosticaCodigoLE] 1..1 MS
* diagnosis[CondicionAtenderHipotesisDiagnosticaCodigoLE].condition only Reference(CondicionAtenderHipotesisDiagnosticaCodigoLE)

* subject 1..1 MS
* subject only Reference(PatientLE)

* period.start 1..1 MS

* class from VSTipoConsulta
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