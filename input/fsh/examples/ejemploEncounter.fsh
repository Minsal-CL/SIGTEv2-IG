Instance: EjemploEncounter
InstanceOf: EncounterInicioLE
Usage: #example
Title: "Ejemplo de Encounter Evento de Inicio"
Description: "Ejemplo de Encounter Evento de Inicio"

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdConsultaAPS
* identifier.value = "1"
* status = #finished
* appointment = Reference(http://acme.com/ehr/fhir/Appointment/app1)
* class.code = #AMB
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)

Instance: EjemploEncounterAtender
InstanceOf: EncounterAtenderLE
Usage: #example
Title: "Ejemplo de Encounter Evento de Atender"
Description: "Ejemplo de Encounter Evento de Atender"

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdConsultaAPS
* identifier.value = "1"
* status = #finished
* extension[ExtBoolPertinenciaAtencionBox].valueBoolean = true
* extension[ExtStringMotivoNoPertinencia].valueString = "lorem ipsum"
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/ServiceRequestLE)
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
* appointment = Reference(http://acme.com/ehr/fhir/Appointment/EjemploAppointmentAtender)
* class.code = #AMB

* reasonReference[CondicionAtenderDiagnosticoConfirmacionLE] = Reference(http://acme.com/ehr/fhir/Condition/CondicionAtenderDiagnosticoConfirmacionLE)
* reasonReference[ObservationAtenderLE] = Reference(http://acme.com/ehr/fhir/Observation/ObservationAtenderLE)

* diagnosis[CondicionAtenderDiagnosticoSospechaLE].condition = Reference(CondicionAtenderDiagnosticoSospechaLE)
* diagnosis[CondicionAtenderHipotesisDiagnosticaCodigoLE].condition = Reference(CondicionAtenderHipotesisDiagnosticaCodigoLE)


//* diagnosis[0] = Reference(http://acme.com/ehr/fhir/ServiceRequest/ServiceRequestLE)
//* diagnosis[0] = Reference(http://acme.com/ehr/fhir/ServiceRequest/ServiceRequestLE)