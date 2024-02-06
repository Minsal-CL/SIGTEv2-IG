Instance: EjemploObservation
InstanceOf: ObservationInicioLE
Usage: #example
Title: "Observation Evento Iniciar"
Description: "Observation Evento Iniciar"

* status = #registered
* code.text = "examenes"
* valueString = "Exámen que se realizó"

Instance: EjemploObservationAtender
InstanceOf: ObservationAtenderLE
Usage: #example
Title: "Observation Evento Atender"
Description: "Observation Evento Atender"

* status = #registered
* code.text = "examenes anteriores"
* valueString = "No se presentan exámenes anteriores"

Instance: EjemploObservation2
InstanceOf: ObservationInicioIndiceComorbilidadLE
Usage: #example
Title: "Observation Índice Comorbilidad Evento Iniciar"
Description: "Observation Índice Comorbilidadn Evento Iniciar"

* code = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSIndicecomorbilidad#G1
* code.text = "Riesgo Leve, 1 condición crónica"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category.text = "Indice Comorbilidad"
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"


Instance: EjemploObservationCuidador
InstanceOf: ObservationInicioCuidadorLE
Usage: #example
Title: "Observation Cuidador Evento Iniciar"
Description: "Observation Cuidador Evento Iniciar"

* code = http://loinc.org#95385-1
* status = #final
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"

Instance: EjemploObservationDiscapacidad
InstanceOf: ObservationInicioDiscapacidadLE
Usage: #example
Title: "Observation Discapacidad Evento Iniciar"
Description: "Observation Discapacidad Evento Iniciar"

* code = http://loinc.org#75326-9
* status = #final
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* extension[PresentaDiscapacidad].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtBoolPresentaDiscapacidad"
* extension[PresentaDiscapacidad].valueBoolean = false