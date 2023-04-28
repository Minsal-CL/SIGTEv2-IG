Instance: EjemploEncounter
InstanceOf: EncounterInicioLE
Usage: #example
Title: "Encounter Evento de Inicio"
Description: "Encounter Evento de Inicio"

* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier.value = "1"
* status = #finished
* appointment = Reference(http://acme.com/ehr/fhir/Appointment/app1)
* class.code = #AMB
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
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
* class.code = #AMB

* reasonReference[CondicionAtenderDiagnosticoConfirmacionLE] = Reference(http://acme.com/ehr/fhir/Condition/EjemploCondicionAtenderDiagnosticoConfirmacionLE)
* reasonReference[ObservationAtenderLE] = Reference(http://acme.com/ehr/fhir/Observation/EjemploObservationAtender)

* diagnosis[CondicionAtenderDiagnosticoSospechaLE].condition = Reference(http://acme.com/ehr/fhir/Condition/EjemploCondicionAtenderDiagnosticoSospechaLE)
* diagnosis[CondicionAtenderHipotesisDiagnosticaCodigoLE].condition = Reference(http://acme.com/ehr/fhir/Condition/EjemploCondicionAtenderHipotesisDiagnosticaCodigoLE)

* period.start = "2023-01-22T09:00:00Z"
* class.code = #1