Profile: ServiceRequest2LE
Parent: ServiceRequest
Id: ServiceRequest2LE
Title: "ServiceRequestLE"
Description: "ServiceRequestLE"




* extension contains SospechaPatologiaGes named SospechaGES 0..1 MS
* extension contains ExtBoolean named ResolutividadAPS 0..1 MS
* extension contains ExtBoolean named Alergia 0..1 MS
* extension contains ExtInteger named PatologiasGES 0..1 MS
* extension contains OrigenInterconsulta named OrigenInterconsulta 0..1 MS
* extension contains ExtString named FundamentoPriorizacion 0..1 MS


* extension[FundamentoPriorizacion] ^short = "Fundamente de la Priorización"
* extension[ResolutividadAPS] ^short = "Programa de Resolutividad local"
* extension[Alergia] ^short = "Tiene alergia el paciente"

* identifier 1..2 MS 
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice creado para almacenar los identificadores"
* identifier contains IdInterconsulta 1..1 MS and IdConsultaAPS 0..1 MS



* authoredOn 1..1 MS
* authoredOn ^short = "Fecha Asigna la Interconsulta"


* priority 1..1 MS
* priority ^short = "Prioridad Recomendada Interconsulta de Origen"


* status MS
* intent MS
* subject MS

* reasonCode MS

* locationCode 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * display 1..1 MS
    * system 1..1 MS
* locationCode.coding from VSMotivoDerivacion

* locationReference 1..1 MS
  * reference 1..1 MS
* locationReference only Reference(Location)


* subject only Reference(Patient)
* reasonReference only Reference(Observation)
* encounter only Reference(Encounter)



* supportingInfo 2..* MS 
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "use"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice creado para almacenar referencias"
* supportingInfo contains reserva 0..1 MS and paciente 0..1 MS and QuestionnaireResponse 1..1 MS and Condition 0..1 MS and AllergyIntolerance 1..1 MS

* supportingInfo[reserva] only Reference(AppointmentLE)
* supportingInfo[paciente] only Reference(PacienteLE)
* supportingInfo[QuestionnaireResponse] only Reference(QuestionnaireResponseLE)
* supportingInfo[Condition] only Reference(CondicionLE)
* supportingInfo[AllergyIntolerance] only Reference(AllergyIntoleranceLE)