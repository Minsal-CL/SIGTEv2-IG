Instance: EjemploObservationCuidador
InstanceOf: ObservationIniciarCuidadorLE
Usage: #example
Title: "EjemploObservationCuidador"
Description: "Ejemplo del recurso que indica si el paciente es cuidador o no"

* status = #final
* code
  * coding = http://loinc.org#95385-1 "Caregiver for person with age-related complaints, chronic diseases or frailty"
  * text = "Cuidador de una persona con dolencias relacionadas con la edad o enfermedades crónicas."
* valueBoolean = true
* subject = Reference(EjemploPatientLE)


