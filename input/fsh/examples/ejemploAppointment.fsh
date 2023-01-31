Instance: EjemploAppointment
InstanceOf: AppointmentInicioLE
Usage: #example
Title: "Ejemplo de Appointment Evento de Inicio"
Description: ""

* status = #fulfilled
* identifier.value = "21"
* start = "2023-01-22T09:00:00Z"
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* participant.status = #accepted
* participant.actor = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)