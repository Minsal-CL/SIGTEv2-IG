Instance: EjemploCoverage
InstanceOf: CoverageIniciarLE
Usage: #example
Title: "Coverage Evento Iniciar"
Description: "Coverage Evento Iniciar"

* status = #active
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP
* beneficiary = Reference(EjemploPatient) "Anibal Diaz Cortés"
* payor = Reference(EjemploPatient) "Anibal Diaz Cortés"
* class.type = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPrevisionCodigo#1 "FONASA Fondo Nacional de Salud."
* class.value = "FONASA"