Instance: EjemploCarePlanLE
InstanceOf: CarePlanAtenderLE
Usage: #example
Title: "CarePlan Evento de Atender"
Description: "de CarePlan Evento de Atender"

* status = #active
* intent = #plan
* description = "test"

* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
* activity.reference.display = "http://link-a-mi-receta.cl/ID"

* extension[SolicitudExamenes].valueBoolean = true


