Instance: EjemploCarePlanLE
InstanceOf: CarePlanAtenderLE
Usage: #example
Title: "CarePlan Evento Atender"
Description: "CarePlan Evento Atender"

* status = #active
* intent = #plan
* description = "Benazepril 5mg 1 comp c/24 horas "

* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* activity.reference.display = "http://link-a-mi-receta.cl/ID"

* extension[SolicitudExamenes].valueBoolean = false


