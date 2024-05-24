Profile: EncounterAtenderLE
Parent: Encounter
Id: EncounterAtenderLE
Title: "Encounter Atender LE"
Description: "Encounter Atender LE recurso que se utiliza para representar el encuentro médico, cuando se comienza a ejecutar la atención de la interconsulta."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// Obligatorios por estandar

* extension contains ConsecuenciaAtencionCodigo named ConsecuenciaAtencionCodigo 0..1 MS
* extension[ConsecuenciaAtencionCodigo] ^short = "Código de la consecuencia de la atención"

* status MS
* status ^short = "Estado actual del encuentro"
* status = #finished

* class from VSModalidadAtencionCodigo
* class ^short = "Modalidad de Atención"

* identifier 1..1 MS
  * value 1..1 MS
  * value ^short = "Valor de registro"
* identifier ^short = "Id del registro de atención o encuentro del sistema clínico de origen"

* reasonReference 1..* MS
* reasonReference ^short = "Motivo del encuentro (como referencia)"
* reasonReference ^slicing.discriminator.type = #value
* reasonReference ^slicing.discriminator.path = "type"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.description = "Slice creado para almacenar diferentes tipos de reasonReference"
* reasonReference contains  ObservationAtenderLE 0..* MS  // and CondicionAtenderDiagnosticoConfirmacionLE 1..1 MS 

// * reasonReference[CondicionAtenderDiagnosticoConfirmacionLE] only Reference(CondicionAtenderDiagnosticoConfirmacionLE)
// * reasonReference[CondicionAtenderDiagnosticoConfirmacionLE] ^short = "Referencia a la condición diagnosticada en la atención"
// * reasonReference[CondicionAtenderDiagnosticoConfirmacionLE].type = "Condition"

* reasonReference[ObservationAtenderLE] only Reference(ObservationAtenderLE)
* reasonReference[ObservationAtenderLE] ^short = "Referencia a la Observation hecha en la atención"
* reasonReference[ObservationAtenderLE].type = "Observation"


// * diagnosis 1..1 MS
// * diagnosis ^slicing.discriminator.type = #profile
// * diagnosis ^slicing.discriminator.path = "condition.resolve()"
// * diagnosis ^slicing.rules = #open
// * diagnosis ^slicing.description = "Slice creado para almacenar diferentes tipos de diagnosis"

* diagnosis 1..1 MS
* diagnosis ^short = "Lista de diagnósticos relevantes a este encuentro médico"
* diagnosis.condition 1..1 MS
* diagnosis.condition ^short = "Referencia al diagnóstico, relevante para este encuentro médico"
* diagnosis.condition only Reference(ConditionIniciarDiagnosticoLE)

// * diagnosis contains CondicionAtenderDiagnosticoSospechaLE 0..1 MS
// * diagnosis[CondicionAtenderDiagnosticoSospechaLE] 1..1 MS
// * diagnosis[CondicionAtenderDiagnosticoSospechaLE].condition only Reference(CondicionAtenderDiagnosticoSospechaLE)
//* diagnosis[CondicionAtenderHipotesisDiagnosticaCodigoLE] 1..1 MS
//* diagnosis[CondicionAtenderHipotesisDiagnosticaCodigoLE].condition only Reference(CondicionAtenderHipotesisDiagnosticaCodigoLE)

* subject 1..1 MS
* subject ^short = "Referencia al Paciente que se presentará a la Atención APS"
* subject only Reference(PatientLE)

* period ^short = "Fechas de comienzo y término del encuentro Atención APS. El formato queda consignado como YYYY-MM-DDTHH:MMZ"
* period.start 1..1 MS
* period.start ^short = "Fecha Comienzo del encuentro Atención APS"
* period.end 0..1 MS
* period.end ^short = "Fecha de término del encuentro Atención APS"

* type from VSTipoConsulta
* type ^short = "Tipo de consulta"

* basedOn 1..1 MS
* basedOn ^short = "Relación a service request que representa la interconsulta"

* basedOn only Reference(ServiceRequestLE)

* extension contains ExtBoolPertinenciaAtencionBox named PertinenciaAtencionBox 1..1 MS
* extension[PertinenciaAtencionBox] ^short = "Pertinencia de la atención al ser evaluado por el profesional especialista"
* extension contains ExtStringMotivoNoPertinencia named MotivoNoPertinencia 0..1 MS
* extension[MotivoNoPertinencia] ^short = "Indicar Motivo de la No Pertinecia en texto libre (PertinenciaAtencionBox = false)"


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