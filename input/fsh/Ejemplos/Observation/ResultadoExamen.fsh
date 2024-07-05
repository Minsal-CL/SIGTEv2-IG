Instance: AnticuerpoAdrenal
InstanceOf: ObservationResultadoExamen
Usage: #example
Title: "Ejemplo Resultado Examen"
Description: "Ejemplo de un resultado de laboratorio de Anticuerpo Adrenal"

* status = #registered
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

* code
  * coding = http://loinc.org#8059-8
  * text = "Ab adrenal en Sérum"

* subject = Reference(EjemploPatientLE)

* encounter = Reference(EncounterIniciarEjemplo)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* valueQuantity
  * value = 10
  * unit = "arb'U/mL"
  * system = "http://unitsofmeasure.org"
  * code = #[arb'U]/mL