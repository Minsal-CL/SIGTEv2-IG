Instance: EjemploObservation
InstanceOf: ObservationInicioLE
Usage: #example
Title: "Observation Evento de Inicio"
Description: "Observation Evento de Inicio"

* status = #registered
* code.text = "examenes"
* valueString = "examenes realizados"

Instance: EjemploObservationAtender
InstanceOf: ObservationAtenderLE
Usage: #example
Title: "Observation Evento de Atender"
Description: "Observation Evento de Atender"

* status = #registered
* code.text = "examenes anteriores"
* valueString = "examenes anteriores"

Instance: EjemploObservation2
InstanceOf: ObservationInicioIndiceComorbilidadLE
Usage: #example
Title: "Observation Índice Comorbilidad Evento de Inicio"
Description: "Observation Índice Comorbilidadn Evento de Inicio"

* code = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSIndicecomorbilidad#G1
* code.text = "Riesgo Leve, 1 condición crónica"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category.text = "Indice Comorbilidad"
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)


Instance: EjemploObservationCuidador
InstanceOf: ObservationInicioCuidadorLE
Usage: #example
Title: "Observation Cuidador Evento de Inicio"
Description: "Observation Cuidador Evento de Inicio"

* code = http://loinc.org#95385-1
* status = #final
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
* extension[PresentaDiscapacidad].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtBoolPresentaDiscapacidad"
* extension[PresentaDiscapacidad].valueBoolean = false