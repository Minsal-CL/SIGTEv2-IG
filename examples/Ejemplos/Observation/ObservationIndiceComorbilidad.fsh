Instance: IndiceConmorbilidadEjemplo
InstanceOf: ObservationIndiceComorbilidadLE
Usage: #example
Title: "Indice Conmorbilidad Ejemplo"
Description: "Indica el nivel de conmorbilidad que posee un paciente"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code 
  * coding = CSTipoObservacionMinsal#ECICEP
  * text = "Indice Comorbilidad"
* subject = Reference(EjemploPatientLE)
* encounter = Reference(EncounterIniciarEjemplo)
* valueCodeableConcept
  * coding = CSIndicecomorbilidad#G2 "Riesgo Moderado, 2 a 4 condiciones crónicas"
