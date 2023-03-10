Instance: EjemploAppointment
InstanceOf: AppointmentInicioLE
Usage: #example
Title: "Ejemplo de Appointment Evento de Inicio"
Description: "Ejemplo de Appointment Evento de Inicio"

* status = #fulfilled
* identifier.value = "21"
* start = "2023-01-22T09:00:00Z"
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* participant.status = #accepted
* participant.actor = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)

//revisado JM
Instance: EjemploAppointmentAgendar
InstanceOf: AppointmentLE
Usage: #example
Title: "Ejemplo de Appointment Evento de Inicio"
Description: "Ejemplo de Appointment Evento de Inicio"

* status = #booked
* identifier.value = "21"
* start = "2023-01-22T09:00:00Z"
* end = "2023-01-22T09:30:00Z"
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/agendar)
* participant.status = #accepted
* participant.actor = Reference(http://acme.com/ehr/fhir/PractitionerRoleLE/agendarAtendedor)

* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.text = "Otro"
* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.coding.code = #1

* extension[ContactadoLE].extension[Contactado].valueBoolean = true


//ejemplo bundle atender
Instance: EjemploAppointmentAtender
InstanceOf: AppointmentLE
Usage: #example
Title: "Ejemplo de Appointment Evento de Atender"
Description: "Ejemplo de Appointment Evento de Atender"

* status = #booked
* identifier.value = "21"
* start = "2023-01-22T09:00:00Z"
* end = "2023-01-22T09:00:30Z"
* participant.status = #accepted
* participant.actor = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
* appointmentType.coding.code = #ROUNTINE
* appointmentType.coding.system = "http://hl7.org/fhir/r4/v2/0276/index.html"