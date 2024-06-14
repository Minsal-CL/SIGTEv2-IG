Profile: QuestionnaireResponseAtenderLE
Parent: QuestionnaireResponse
Id: QuestionnaireResponseAtenderLE
Title: "QuestionnaireResponse Atender LE"
Description: "QuestionnaireResponse Atender LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* item.linkId = "Resumen"
* item.text = "Resumen"
* item.answer[0].valueString 
* encounter 1..1 MS
* encounter only Reference(EncounterAtenderLE)


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

* item 1..1 MS
* item.linkId 1..1 MS
* item.linkId = "MotivoDerivacion"
* item.text = "Motivo Derivación"
* item.answer[0].valueString 
