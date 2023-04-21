Instance: EjemploAllergyIntolerance
InstanceOf: AllergyIntoleranceInicioLE
Usage: #example
Title: "AllergyIntolerance Evento de Inicio"
Description: "AllergyIntolerance Evento de Inicio"


* code.text = "tipo alergia"
* patient = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"
