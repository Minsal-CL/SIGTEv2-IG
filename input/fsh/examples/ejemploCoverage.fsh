Instance: EjemploCoverage
InstanceOf: CoverageInicioLE
Usage: #example
Title: "Coverage Evento de Inicio"
Description: "Coverage Evento de Inicio"

* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP
* status = #active
* class.type = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPrevisionCodigo#1
* class.value = "prevision"
* payor = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
* beneficiary = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)