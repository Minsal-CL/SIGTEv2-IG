Instance: EjemploAppointment
InstanceOf: AppointmentInicioLE
Usage: #example
Title: "Appointment Evento de Inicio"
Description: "Appointment Evento de Inicio"

* status = #fulfilled
* identifier.value = "21"
* start = "2023-01-22T09:00:00Z"
* end = "2023-01-22T09:05:00Z"
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* participant.status = #accepted
* participant.actor = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)

//revisado JM
Instance: EjemploAppointmentAgendar
InstanceOf: AppointmentAgendarLE
Usage: #example
Title: "Appointment Evento de Inicio"
Description: "Appointment Evento de Inicio"

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
* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.coding = http://minsal.cl/listaespera/CodeSystem/CSMotivoNoContactabilidad#1

* extension[ContactadoLE].extension[Contactado].valueBoolean = true