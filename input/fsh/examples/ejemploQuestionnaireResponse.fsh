Instance: EjemploQuestionnaireResponse
InstanceOf: QuestionnaireResponseInicioLE
Usage: #example
Title: "Ejemplo de QuestionnaireResponseEvento de Inicio"
Description: "Ejemplo de QuestionnaireResponseEvento de Inicio"

* item.linkId = "Resumen"
* item.text = "Resumen"
* item.answer.valueString = "Anamnesis"
* status = #completed

Instance: EjemploQuestionnaireResponseAtenderLE
InstanceOf: QuestionnaireResponseAtenderLE
Usage: #example
Title: "Ejemplo de QuestionnaireResponseEvento de Inicio"
Description: "Ejemplo de QuestionnaireResponseEvento de Inicio"

* item.linkId = "Resumen"
* item.text = "Resumen"
* item.answer.valueString = "Anamnesis"
* status = #completed
* subject = Reference(http://acme.com/ehr/fhir/Patient/atender)

