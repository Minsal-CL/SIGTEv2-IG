Profile: ServiceRequestLE
Parent: ServiceRequest
Id: ServiceRequestLE
Title: "ServiceRequestLE"
Description: "ServiceRequestLE"

* extension contains SospechaPatologiaGes named SospechaGES 1..1 MS
* extension contains ExtBoolean named ResolutividadAPS 1..1 MS
* extension contains ExtBoolean named Alergia 1..1 MS
* extension contains ExtInteger named PatologiasGES 1..1 MS
* extension contains OrigenInterconsulta named OrigenInterconsulta 1..1 MS
* extension contains ExtString named FundamentoPriorizacion 1..1 MS


* extension[FundamentoPriorizacion] ^short = "Fundamente de la Priorización"
* extension[ResolutividadAPS] ^short = "Programa de Resolutividad local"
* extension[Alergia] ^short = "Tiene alergia el paciente"

* identifier 1..2 MS 
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice creado para almacenar los identificadores"
* identifier contains identificadorInterconsulta 1..1 MS and identificadorConsultaAPS 1..1 MS



* authoredOn 1..1 MS
* authoredOn ^short = "Fecha Asigna la Interconsulta"


* priority 1..1 MS
* priority ^short = "Prioridad Recomendada Interconsulta de Origen"


* status MS
* intent MS
* subject MS

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
* supportingInfo[paciente] only Reference(PacienteLE)
* supportingInfo[QuestionnaireResponse] only Reference(QuestionnaireResponseLE)
* supportingInfo[Condition] only Reference(CondicionLE)
* supportingInfo[AllergyIntolerance] only Reference(AllergyIntoleranceLE)