Instance: MotivoDerivacionEjemplo
InstanceOf: QuestionnaireResponseIniciarLE
Usage: #example
Title: "Ejemplo del QuestionnaireResponse"
Description: "Ejemplo del QuestionnaireResponse para describir el motivo de derivación"

* status = #completed
* questionnaire = Canonical(MotivoDerivacion)
* subject = Reference(EjemploPatientLE)
* encounter = Reference(EncounterIniciarEjemplo)
* author = Reference(PractitionerProfesionalLEEjemplo)
* item
  * linkId = "MotivoDerivacion"
  * text = "Motivo Derivación"
  * answer[0].valueString = "Paciente sufre de alzas constantes de presión no manejadas en APS. Comienza con precordalgia aguda."