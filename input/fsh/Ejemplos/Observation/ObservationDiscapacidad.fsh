Instance: EjemploObservationDiscapacidadLE
InstanceOf: ObservationDiscapacidadLE
Usage: #example
Title: "Ejemplo Observation Discapacidad LE"
Description: "Ejemplo que inidica si el paciente tiene discapacidad"

* status = #final
* code
  * coding = http://loinc.org#101720-1 "Disability status"
  * text = "Discapacidad"

* valueBoolean = true
* subject = Reference(EjemploPatientLE)
