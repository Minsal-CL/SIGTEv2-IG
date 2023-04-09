Instance: EjemploCarePlanLE
InstanceOf: CarePlanAtenderLE
Usage: #example
Title: "CarePlan Evento de Atender"
Description: "de CarePlan Evento de Atender"

* status = #active
* intent = #plan
* description = "test"

* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
* activity.detail.productCodeableConcept.text = "123323"
* activity
  * detail.kind = #MedicationRequest
  * detail.status = #not-started

  * detail.code.coding.code = #farmacos
  * detail.code.coding.system = "http://snomed.info/sct"

* extension[SolicitudExamenes].valueBoolean = true


