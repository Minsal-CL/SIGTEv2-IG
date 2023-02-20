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


Instance: EjemploAppointmentAgendar
InstanceOf: AppointmentLE
Usage: #example
Title: "Ejemplo de Appointment Evento de Inicio"
Description: "Ejemplo de Appointment Evento de Inicio"

* status = #booked
* identifier.value = "21"
* created = "2023-01-22T09:00:00Z"
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* participant.status = #accepted
* participant.actor = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)

* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.text = "Otro"
* extension[ContactadoLE].extension[MotivoNoContactabilidad].valueCodeableConcept.coding.code = #1

* extension[ExtBoolMedioNotificacion].valueBoolean = true