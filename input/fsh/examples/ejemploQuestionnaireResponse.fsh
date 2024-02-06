Instance: EjemploQuestionnaireResponseAtenderLE
InstanceOf: QuestionnaireResponseAtenderLE
Usage: #example
Title: "QuestionnaireResponse Evento Atender"
Description: "QuestionnaireResponse Evento Atender"

* item.linkId = "Resumen"
* item.text = "Resumen"
* item.answer.valueString = "Insuficiencia Cardiaca Crónica"
* status = #completed
* encounter = Reference(EjemploEncounterAtender)


Instance: EjemploQuestionnaireResponseInicioLE
InstanceOf: QuestionnaireResponseInicioLE
Usage: #example
Title: "QuestionnaireResponse Evento Iniciar Motivo derivación"
Description: "QuestionnaireResponse Evento Iniciar Motivo derivación"

* item.linkId = "MotivoDerivacion"
* item.text = "Motivo Derivación"
* item.answer.valueString = "Motivo derivación"
* status = #completed

