Profile: ServiceRequestLP
Parent: ServiceRequest
Id: ServiceRequestLP
Title: "ServiceRequestLP"
Description: "ServiceRequestLP"

* extension contains ExtBoolean named SospechaGES 1..1 MS
* extension contains ExtBoolean named ProgramaResolutividadLocal 1..1 MS
* extension contains ExtBoolean named TieneAlergiaPaciente 1..1 MS
* extension contains ExtInteger named PatologiasGES 1..1 MS
* extension contains OrigenInterconsulta named OrigenInterconsulta 1..1 MS

* identifier 1..2 MS 
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice creado para almacenar los identificadores"
* identifier contains identificadorInterconsulta 1..1 MS and identificadorConsultaAPS 1..1 MS



* authoredOn 1..1 MS
* authoredOn ^short = "fecha de la interconsulta"

* priority 1..1 MS
* priority ^short = "Prioridad Recomendada Interconsulta de Origen"


* status MS
* intent MS
* subject MS

* reasonCode MS

* subject only Reference(Patient)



* supportingInfo 1..* MS 
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "use"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice creado para almacenar referencias"
* supportingInfo contains reserva 0..1 MS and paciente 0..1 MS and QuestionnaireResponse 0..1 MS and Condition 0..1 MS and AllergyIntolerance 0..1 MS

* supportingInfo[reserva] only Reference(AppointmentLP)
* supportingInfo[paciente] only Reference(PacienteLP)
* supportingInfo[QuestionnaireResponse] only Reference(QuestionnaireResponseLP)
* supportingInfo[Condition] only Reference(CondicionLP)
* supportingInfo[AllergyIntolerance] only Reference(AllergyIntoleranceLP)