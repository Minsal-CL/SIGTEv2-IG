Profile: EncounterAtenderLE
Parent: Encounter
Id: EncounterAtenderLE
Title: "Encounter Atender LE"
Description: "Encounter Atender LE recurso que se utiliza para representar el encuentro médico, cuando se comienza a ejecutar la atención de la interconsulta."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* extension contains ExtensionPertinenciaAtencionBox named PertinenciaAtencionBox 1..1 MS
* extension[PertinenciaAtencionBox] ^short = "Pertinencia de la atención al ser evaluado por el profesional especialista"
* extension contains ExtensionMotivoNoPertinencia named MotivoNoPertinencia 0..1 MS
* extension[MotivoNoPertinencia] ^short = "Indicar Motivo de la No Pertinecia en texto libre (PertinenciaAtencionBox = false)"

* extension contains ExtensionConsecuenciaAtencionCodigo named ConsecuenciaAtencionCodigo 0..1 MS
* extension[ConsecuenciaAtencionCodigo] ^short = "Código de la consecuencia de la atención"

// Obligatorios por estandar
* status MS
* status ^short = "Estado actual del encuentro"
* status = #finished

* class from VSModalidadAtencionCodigo
* class ^short = "Modalidad de Atención"

* identifier 1..1 MS
  * value 1..1 MS
  * value ^short = "Valor de registro"
* identifier ^short = "Id del registro de atención o encuentro del sistema clínico de origen"


//* reasonReference only Reference(QuestionnaireResponse)
//* reasonReference ^short = "Referencia al cuestionario"
//* reasonReference.type = "QuestionnaireResponse"


// * diagnosis 1..1 MS
// * diagnosis ^slicing.discriminator.type = #profile
// * diagnosis ^slicing.discriminator.path = "condition.resolve()"
// * diagnosis ^slicing.rules = #open
// * diagnosis ^slicing.description = "Slice creado para almacenar diferentes tipos de diagnosis"

* diagnosis 1..* MS
* diagnosis ^short = "Lista de diagnósticos relevantes a este encuentro médico"
* diagnosis.condition 1..1 MS
* diagnosis.condition ^short = "Referencia al diagnóstico, relevante para este encuentro médico"
* diagnosis.condition only Reference(ConditionDiagnosticoLE)

// * diagnosis contains CondicionAtenderDiagnosticoInicioLE 0..1 MS
// * diagnosis[CondicionAtenderDiagnosticoInicioLE] 1..1 MS
// * diagnosis[CondicionAtenderDiagnosticoInicioLE].condition only Reference(CondicionAtenderDiagnosticoInicioLE)
//* diagnosis[CondicionAtenderHipotesisDiagnosticaCodigoLE] 1..1 MS
//* diagnosis[CondicionAtenderHipotesisDiagnosticaCodigoLE].condition only Reference(CondicionAtenderHipotesisDiagnosticaCodigoLE)

* subject 1..1 MS
* subject ^short = "Referencia al paciente que fue atendido en APS"
* subject only Reference(PatientLE)

* period 1..1 MS
  * start 1..1 MS
  * start ^short = "Fecha Comienzo del encuentro atención de especialidad"
  * end 1..1 MS
  * end ^short = "Fecha de término del encuentro atención de especialidad"
* period ^short = "Fechas de comienzo y término del encuentro atención de especialidad. El formato queda consignado como YYYY-MM-DDTHH:MMZ"

* type from VSTipoConsulta
* type ^short = "Tipo de consulta"
* type 0..1 MS

* basedOn 1..1 MS
* basedOn ^short = "Relación a service request que representa la interconsulta"

* basedOn only Reference(ServiceRequestLE)
* participant.individual only Reference(PractitionerRoleLE)


/*
* extension contains ExtensionPertinenciaAtencionBox named PertinenciaAtencionBox 1..1 MS
* extension contains ExtensionMotivoNoPertinencia named MotivoNoPertinencia 0..1 MS

* appointment 1..1 MS
  * reference 1..1 MS
* appointment only Reference(AppointmentAgendarLE)

* class MS
*/