Instance: EjemploEncounter
InstanceOf: EncounterInicioLE
Usage: #example
Title: "Encounter Evento de Inicio"
Description: "Encounter Evento de Inicio"

* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier.value = "1"
* status = #finished
* period.start = "2023-01-22T09:00:00Z"
* period.end = "2023-01-22T09:00:00Z"
* appointment = Reference(http://acme.com/ehr/fhir/Appointment/app1)
* class = http://minsal.cl/listaespera/CodeSystem/CSModalidadAtencionCodigo#1
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)

Instance: EjemploEncounterAtender
InstanceOf: EncounterAtenderLE
Usage: #example
Title: "Encounter Evento de Atender"
Description: "Encounter Evento de Atender"

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdConsultaAPS
* identifier.value = "1"
* status = #finished
* extension[ExtBoolPertinenciaAtencionBox].valueBoolean = true
* extension[ExtStringMotivoNoPertinencia].valueString = "lorem ipsum"
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/ServiceRequestLE)
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
//* appointment = Reference(http://acme.com/ehr/fhir/Appointment/EjemploAppointmentAtender)
* class = http://minsal.cl/listaespera/CodeSystem/CSModalidadAtencionCodigo#1

* reasonReference[CondicionAtenderDiagnosticoConfirmacionLE] = Reference(http://acme.com/ehr/fhir/Condition/EjemploCondicionAtenderDiagnosticoConfirmacionLE)
* reasonReference[ObservationAtenderLE] = Reference(http://acme.com/ehr/fhir/Observation/EjemploObservationAtender)
//* reasonReference[CondicionAtenderDiagnosticoConfirmacionLE].reference = http://acme.com/ehr/fhir/Condition/EjemploCondicionAtenderDiagnosticoConfirmacionLE
* reasonReference[CondicionAtenderDiagnosticoConfirmacionLE].type = "Condition"
//* reasonReference[ObservationAtenderLE].reference = http://acme.com/ehr/fhir/Observation/EjemploObservationAtender
* reasonReference[ObservationAtenderLE].type = "Observation"
 
* diagnosis.condition = Reference(http://acme.com/ehr/fhir/Condition/EjemploCondition)
//* diagnosis[CondicionAtenderHipotesisDiagnosticaCodigoLE].condition = Reference(http://acme.com/ehr/fhir/Condition/EjemploCondicionAtenderHipotesisDiagnosticaCodigoLE)

* period.start = "2023-01-22T09:00:00Z"
* period.end = "2023-01-22T10:00:00Z"
* type = http://minsal.cl/listaespera/CodeSystem/CSTipoConsulta#1