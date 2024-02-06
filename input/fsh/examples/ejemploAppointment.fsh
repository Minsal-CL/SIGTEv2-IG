// Instance: EjemploAppointment
// InstanceOf: AppointmentInicioLE
// Usage: #example
// Title: "Appointment Evento Iniciar"
// Description: "Appointment Evento Iniciar"

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
Title: "Appointment Evento Agendar"
Description: "Appointment Evento Agendar"

* status = #booked
* identifier.value = "21"
* start = "2023-01-22T09:00:00Z"
* end = "2023-01-22T09:30:00Z"
* basedOn = Reference(EjemploServiceRequestAgendar)

* participant[patientLE].actor = Reference(EjemploPatient) "Anibal Diaz Cortés"
* participant[practitionerRoleLE].actor = Reference(EjemploPractitionerRoleAgendarAPPO)
* participant[patientLE].status = #accepted
* participant[practitionerRoleLE].status = #accepted

* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.text = "Otro"
* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoNoContactabilidad#1

* extension[ContactadoLE].extension[Contactado].valueBoolean = false


Instance: EjemploAppointmentAgendarCancelar
InstanceOf: AppointmentAgendarLE
Usage: #example
Title: "Appointment Evento Agendar(Cancelación)"
Description: "Appointment Evento Agendar(Cancelación)"

* status = #cancelled
* cancelationReason.coding = http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason#pat
* identifier.value = "21"
* start = "2023-01-22T09:00:00Z"
* end = "2023-01-22T09:30:00Z"
* basedOn = Reference(EjemploServiceRequestAgendar)

* participant[patientLE].actor = Reference(EjemploPatient) "Anibal Diaz Cortés"
* participant[practitionerRoleLE].actor = Reference(EjemploPractitionerRoleAgendarAPPO)
* participant[patientLE].status = #accepted
* participant[practitionerRoleLE].status = #accepted
* participant[patientLE].status = #accepted
* participant[practitionerRoleLE].status = #accepted

* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.text = "Otro"
* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoNoContactabilidad#1

* extension[ContactadoLE].extension[Contactado].valueBoolean = false

Instance: EjemploAppointmentAgendarSinPresentacion
InstanceOf: AppointmentAgendarLE
Usage: #example
Title: "Appointment Evento Agendar(Sin Presentacion)"
Description: "Appointment Evento Agendar(Sin Presentacion)"

* status = #noshow
* identifier.value = "21"
* start = "2023-01-22T09:00:00Z"
* end = "2023-01-22T09:10:00Z"
* basedOn = Reference(EjemploServiceRequestAgendar)

* participant[patientLE].actor = Reference(EjemploPatient) "Anibal Diaz Cortés"
* participant[practitionerRoleLE].actor = Reference(EjemploPractitionerRoleAgendarAPPO)
* participant[patientLE].status = #accepted
* participant[practitionerRoleLE].status = #accepted

* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.text = "Otro"
* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoNoContactabilidad#1

* extension[ContactadoLE].extension[Contactado].valueBoolean = false
