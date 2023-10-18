// Instance: EjemploAppointment
// InstanceOf: AppointmentInicioLE
// Usage: #example
// Title: "Appointment Evento de Inicio"
// Description: "Appointment Evento de Inicio"

// * status = #fulfilled
// * identifier.value = "21"
// * start = "2023-01-22T09:00:00Z"
// * end = "2023-01-22T09:05:00Z"
// * basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
// * participant.status = #accepted
// * participant.actor = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)

//revisado JM
Instance: EjemploAppointmentAgendar
InstanceOf: AppointmentAgendarLE
Usage: #example
Title: "Appointment Evento de Agendar"
Description: "Appointment Evento de Agendar"

* status = #booked
* identifier.value = "21"
* start = "2023-01-22T09:00:00Z"
* end = "2023-01-22T09:30:00Z"
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/agendar)

* participant[patientLE].actor = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
// * participant[patientLE].actor.type = #Patient
* participant[practitionerRoleLE].actor = Reference(http://acme.com/ehr/fhir/PractitionerRoleLE/agendarAtendedor)
// * participant[practitionerRoleLE].actor.type = #PractitionerRole
* participant[patientLE].status = #accepted
* participant[practitionerRoleLE].status = #accepted

* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.text = "Otro"
* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoNoContactabilidad#1

* extension[ContactadoLE].extension[Contactado].valueBoolean = true


Instance: EjemploAppointmentAgendarCancelar
InstanceOf: AppointmentAgendarLE
Usage: #example
Title: "Appointment Evento de Agendar(Cancelación)"
Description: "Appointment Evento de Agendar(Cancelación)"

* status = #cancelled
* cancelationReason.coding = http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason#pat
* identifier.value = "21"
* start = "2023-01-22T09:00:00Z"
* end = "2023-01-22T09:30:00Z"
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/agendar)

* participant[patientLE].actor = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
// * participant[patientLE].actor.type = #Patient
* participant[practitionerRoleLE].actor = Reference(http://acme.com/ehr/fhir/PractitionerRoleLE/agendarAtendedor)
// * participant[practitionerRoleLE].actor.type = #PractitionerRole
* participant[patientLE].status = #accepted
* participant[practitionerRoleLE].status = #accepted

* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.text = "Otro"
* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoNoContactabilidad#1

* extension[ContactadoLE].extension[Contactado].valueBoolean = true

Instance: EjemploAppointmentAgendarSinPresentacion
InstanceOf: AppointmentAgendarLE
Usage: #example
Title: "Appointment Evento de Agendar(Sin Presentacion)"
Description: "Appointment Evento de Agendar(Sin Presentacion)"

* status = #noshow
* identifier.value = "21"
* start = "2023-01-22T09:00:00Z"
* end = "2023-01-22T09:10:00Z"
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/agendar)

* participant[patientLE].actor = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
// * participant[patientLE].actor.type = #Patient
* participant[practitionerRoleLE].actor = Reference(http://acme.com/ehr/fhir/PractitionerRoleLE/agendarAtendedor)
// * participant[practitionerRoleLE].actor.type = #PractitionerRole
* participant[patientLE].status = #accepted
* participant[practitionerRoleLE].status = #accepted

* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.text = "Otro"
* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoNoContactabilidad#1

* extension[ContactadoLE].extension[Contactado].valueBoolean = true
