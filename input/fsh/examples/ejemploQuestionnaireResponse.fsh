Instance: EjemploQuestionnaireResponse
InstanceOf: QuestionnaireResponseInicioLE
Usage: #example
Title: "QuestionnaireResponseEvento de Inicio"
Description: "QuestionnaireResponseEvento de Inicio"

* item.linkId = "Resumen"
* item.text = "Resumen"
* item.answer.valueString = "Anamnesis"
* status = #completed

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

