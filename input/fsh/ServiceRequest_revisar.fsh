Profile: ServiceRequestRevisarLE
Parent: ServiceRequest
Id: ServiceRequestRevisarLE
Title: "Service Request LE Revisar"
Description: "Service Request LE Revisar"

/*
* extension contains SospechaPatologiaGes named SospechaGES 1..1 MS
* extension contains ExtBoolean named ResolutividadAPS 1..1 MS
* extension contains ExtBoolean named Alergia 1..1 MS
* extension contains ExtBoolean named Cuidador 1..1 MS
* extension contains ExtBoolean named PresentaDiscapacidad 1..1 MS
* extension contains ExtBoolean named PersonaMayor 1..1 MS
//* extension contains ExtInteger named PatologiasGES 1..1 MS
* extension contains OrigenInterconsulta named OrigenInterconsulta 1..1 MS
* extension contains ExtString named FundamentoPriorizacion 1..1 MS
* extension contains EstadoInterconsultaCodigoLE named EstadoInterconsultaCodigo 1..1 MS
* extension contains DocAcreditacionCuidadorCodigoLE named DocAcreditacionCuidadorCodigo 1..1 MS

* extension[FundamentoPriorizacion] ^short = "Fundamente de la Priorización"
* extension[ResolutividadAPS] ^short = "Programa de Resolutividad local"
* extension[Alergia] ^short = "Tiene alergia el paciente"



* identifier 1..1 MS 
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice creado para almacenar el identificadores"
* identifier contains IdInterconsulta 1..1 MS // and IdConsultaAPS 1..1 MS
*/

* extension contains ExtBoolean named RequiereExamen 1..1 MS

// OBLIGATORIOS POR ESTANDAR
* status MS
* intent MS
* subject MS

* identifier 1..1 MS
  * value 1..1 MS

* doNotPerform 1..1 MS
* doNotPerform.extension contains MotivoNoPertinenciaLE named MotivoNoPertinenciaCodigo 1..1 MS
* priority 1..1 MS
* priority ^short = "Prioridad Recomendada Interconsulta de Origen"

* category 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * display 1..1 MS
    * system 1..1 MS
* category.coding.code from VSModalidadAtencionCodigo




//* authoredOn 1..1 MS
//* authoredOn ^short = "Fecha Asigna la Interconsulta"



/*
* reasonCode MS

* subject only Reference(Patient)
* reasonReference only Reference(Observation)
* encounter only Reference(Encounter)

* supportingInfo 1..* MS 
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "use"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice creado para almacenar referencias"
* supportingInfo contains reserva 0..1 MS and paciente 0..1 MS and QuestionnaireResponse 0..1 MS and Condition 0..1 MS and AllergyIntolerance 0..1 MS

* supportingInfo[reserva] only Reference(AppointmentLE)
//* supportingInfo[paciente] only Reference(PacienteLE)
* supportingInfo[QuestionnaireResponse] only Reference(QuestionnaireResponseLE)
* supportingInfo[Condition] only Reference(CondicionLE1)
* supportingInfo[AllergyIntolerance] only Reference(AllergyIntoleranceLE)

*/