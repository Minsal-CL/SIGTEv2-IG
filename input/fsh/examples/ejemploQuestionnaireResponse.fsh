Instance: EjemploQuestionnaireResponseAtenderLE
InstanceOf: QuestionnaireResponseAtenderLE
Usage: #example
Title: "QuestionnaireResponse Evento de Atender"
Description: "QuestionnaireResponse Evento de Atender"

* item.linkId = "Resumen"
* item.text = "Resumen"
* item.answer.valueString = "Anamnesis"
* status = #completed
* encounter = Reference(http://acme.com/ehr/fhir/Encounter/EjemploEncounterAtender)


Instance: EjemploQuestionnaireResponseInicioLE
InstanceOf: QuestionnaireResponseInicioLE
Usage: #example
Title: "QuestionnaireResponse Evento de Inicio Motivo derivación"
Description: "QuestionnaireResponse Evento de Inicio Motivo derivación"

* item.linkId = "MotivoDerivacion"
* item.text = "Motivo Derivación"
* item.answer.valueString = "Motivo derivación"
* status = #completed

