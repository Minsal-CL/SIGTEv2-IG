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


Profile: QuestionnaireResponseInicioLE
Parent: QuestionnaireResponse
Id: QuestionnaireResponseInicioLE
Title: "QuestionnaireResponse Iniciar Motivo de la Derivación LE"
Description: "QuestionnaireResponse Iniciar para Motivo de Derivación LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* item.linkId = "MotivoDerivacion"
* item.text = "Motivo Derivación"
* item.answer[0].valueString 
