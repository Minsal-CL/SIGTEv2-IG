Instance: PrednisonaEjemplo
InstanceOf: MedicationRequestLE
Usage: #example
Title: "Ejemplo de Prescipción"
Description: "Ejemplo de una prescripción de ejemplo de una prednisona como resultado de una atención, más como parte del plan de cuidados"

* status = #draft
* intent = #order
* subject = Reference(EjemploPatientLE)
* encounter = Reference(AtencionEjemplo)
* requester = Reference(PractitionerProfesionalLEAtendedor)
* medicationCodeableConcept.text = "Prednisona 5mg"
* note.text = "2 veces al día por 1 mes"
