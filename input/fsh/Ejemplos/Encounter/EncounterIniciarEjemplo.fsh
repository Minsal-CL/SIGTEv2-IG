Instance: EncounterIniciarEjemplo
InstanceOf: EncounterIniciarLE
Usage: #example
Title: "Ejemplo de un Encuentro inicial"
Description: "Es un ejemplo de un encuentro que genera una interconsulta"

* extension[ConsecuenciaAtencionCodigo] = ConsecuenciaAtencionCodigoEncuentroIniciar

* identifier
  * use = #official
  * system = "http://example.org/sampleencounter-identifier"
  * value = "123"
* status = #finished
* class = CSModalidadAtencionCodigo#1 "Presencial"
* subject = Reference(EjemploPatientLE)
* participant[0]
  * individual = Reference(PractitionerRoleIniciador)
* period
  * start = "2024-01-17T16:00:00+10:00"
  * end = "2024-01-17T16:30:00+10:00"
* diagnosis[0]
  * condition = Reference(ConditionInicialEjemplo)
  * rank = 1
  
Instance: ConsecuenciaAtencionCodigoEncuentroIniciar
InstanceOf: ExtensionConsecuenciaAtencionCodigo
Usage: #inline

* valueCodeableConcept =  CSConsecuenciaAtencionCodigo#3 "Derivación"
