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