Instance: AgendaEjemplo
InstanceOf: AppointmentAgendarLE
Usage: #example
Title: "Ejemplo Agenda"
Description: "Ejemplo de la agenda de un paciente"

* extension[ExtensionMediodeContacto] = ExtensionMediodeContactoEjemplo
* extension[ExtensionContactadoLE] = ExtensionContactadoLEEjemplo

* identifier
  * value = "123"

* status = #booked
* start = "2024-02-22T08:00:00-03:00"
* end = "2024-02-22T08:30:00-03:00"
* created = "2024-02-20T16:00:00-03:00"

* participant[patientLE]
  * actor = Reference(EjemploPatientLE)
  * status = #accepted 

* participant[practitionerRoleLE]
  * actor = Reference(PractitionerRoleAtendedor)
  * status = #accepted

Instance: ExtensionMediodeContactoEjemplo
InstanceOf: ExtensionMediodeContacto
Usage: #inline

* valueCodeableConcept = CSMediodeContacto#3 "Llamada"

Instance: ExtensionContactadoLEEjemplo
InstanceOf: ExtensionContactadoLE
Usage: #inline

* extension[Contactado].valueBoolean = true