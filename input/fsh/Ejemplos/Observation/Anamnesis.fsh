Instance: AnamnesisEjemplo
InstanceOf: ObservationAnamnesisLE
Usage: #example
Title: "Ejemplo de Anamnesis"
Description: "Una pequeña descripción del encuentro y el tratamiento, como relato"

* status = #registered
* code = http://snomed.info/sct#84100007
* code.text = "Anamnesis"

* subject = Reference(EjemploPatientLE)

* encounter = Reference(AtencionEjemplo)

* effectiveDateTime = "2024-01-24T08:30:00-03:00"

* valueString = """
A pesar de la severidad de la condición del paciente, se encuentra estable, por lo que, dar un tratamiento más fuerte podría afectar su condición, lo mejor será iniciar con algo lo suficientemente suave. Hay que mantenerlo vigilado.
"""