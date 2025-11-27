Instance: EjemploObservationCuidador
InstanceOf: ObservationIniciarCuidadorLE
Usage: #example
Title: "Ejemplo Observation Cuidador"
Description: "Ejemplo del recurso que indica si el paciente es cuidador o no"

* status = #final
* code
  * coding = http://loinc.org#95385-1 "Cuidador de personas con molestias relacionadas con la edad, enfermedades crónicas o fragilidad.: Paciente:Punto temporal:Tipo:Ordinal:"
  * text = "Cuidador de una persona con dolencias relacionadas con la edad o enfermedades crónicas."
* valueBoolean = true
* subject = Reference(EjemploPatientLE)


