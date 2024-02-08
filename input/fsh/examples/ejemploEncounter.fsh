Instance: EjemploEncounter
InstanceOf: EncounterInicioLE
Usage: #example
Title: "Encounter Evento Iniciar"
Description: "Encounter Evento Iniciar"

* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier.value = "1"
* status = #finished
* class = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo#1
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* diagnosis.condition = Reference(EjemploCondition)
* period.start = "2023-10-25T09:00:00Z"
* period.end = "2023-10-25T09:20:00Z"

/* ENCOUNTER ATENDER */

Instance: EjemploEncounterAtender
InstanceOf: EncounterAtenderLE
Usage: #example
Title: "Encounter Evento Atender"
Description: "Encounter Evento Atender"

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdConsultaAPS
* identifier.value = "1"
* status = #finished
* extension[ExtBoolPertinenciaAtencionBox].valueBoolean = true
* basedOn = Reference(EjemploServiceRequest)
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* class = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo#1

// * reasonReference[CondicionAtenderDiagnosticoConfirmacionLE] = Reference(EjemploCondicionAtenderDiagnosticoConfirmacionLE)
// * reasonReference[CondicionAtenderDiagnosticoConfirmacionLE].type = "Condition"
* reasonReference[ObservationAtenderLE] = Reference(EjemploObservationAtender)
* reasonReference[ObservationAtenderLE].type = "Observation"
* diagnosis.condition = Reference(EjemploConditionAtender)
* period.start = "2023-01-22T09:00:00Z"
* period.end = "2023-01-22T10:00:00Z"
* type = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoConsulta#1