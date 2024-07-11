// Profile: QuestionnaireResponseAtenderLE
// Parent: QuestionnaireResponse
// Id: QuestionnaireResponseAtenderLE
// Title: "QuestionnaireResponse Atender LE"
// Description: "QuestionnaireResponse Atender LE"
// * ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
// * ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// * item.linkId = "Resumen"
// * item.text = "Resumen"
// * item.answer[0].valueString 
// * encounter 1..1 MS
// * encounter only Reference(EncounterAtenderLE)

Instance: MotivoDerivacion
InstanceOf: Questionnaire
Usage: #definition
Title: "Motivo Derivacion"
Description: "Permite describir el motivo de derivacion de un paciente"

* title = "Motivo de Derivación"
* status = #draft
* experimental = true
* subjectType[0] = #Patient
* date = "2024-07-04"
* item[0]
  * linkId = "MotivoDerivacion"
  * text = "Motivo Derivación"
  * type = #text
  * required = true
  * repeats = false
  * maxLength = 3000

  
Profile: QuestionnaireResponseIniciarLE
Parent: QuestionnaireResponse
Id: QuestionnaireResponseIniciarLE
Title: "QuestionnaireResponse Iniciar Motivo de la Derivación LE"
Description: "QuestionnaireResponse Iniciar para Motivo de Derivación LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft


* subject only Reference(PatientLE)
* encounter only Reference(EncounterIniciarLE)
* author only Reference(PractitionerProfesionalLE)
* questionnaire = Canonical(MotivoDerivacion)

* item 1..1 MS
* item.linkId 1..1 MS
* item.linkId = "MotivoDerivacion"
* item.text = "Motivo Derivación"
* item.answer[0].valueString 
