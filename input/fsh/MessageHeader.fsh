Profile: MessageHeaderLE
Parent: MessageHeader
Id: MessageHeaderLE
Title: "MessageHeader LE"
Description: "MessageHeaderLE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft


* meta.lastUpdated 1..1 MS
* meta.lastUpdated ^short = "Fecha del Evento. El formato corresponde a año, mes, día y hora (hh:mm) y se representa de la siguiente forma: YYYY-MM-DDTHH:MMZ"
* source.software 1..1 MS
* source.software ^short = "Solución Informática. Corresponde al nombre (un string human-friendly) del aplicativo de Registro Clínico Electronico, que realiza el envío de la información."
* source.endpoint 1..1 MS
* source.endpoint ^short = "Dirección o ID de origen del mensaje real."

* author 1..1 MS
* author ^short = "Referencia al rol del profesional que realiza la acción asociada al evento."
* focus 1..2 MS
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "resolve()"
* focus ^slicing.rules = #closed
* focus contains ServiceRequestLE 1..1 and AppointmentAgendarLE 0..1 and EncounterAtenderLE 0..1 
* focus[ServiceRequestLE] ^short = "Referencia a la prestación requerida por el paciente, debe ir en cada uno de los eventos"
* focus[AppointmentAgendarLE] ^short = "Referencia a la prestación requerida por el paciente, representa la cita médica y se agrega SOLO en el evento agendar"
* focus[EncounterAtenderLE] ^short = "Referencia a la prestación requerida por el paciente, representa la atención realizada y se agrega SOLO en el evento atender"
* focus ^short = "Referencia a la prestación requerida para el paciente en cada evento"
* eventCoding 1..1 MS
* eventCoding ^short = "Código para el evento que representa este mensaje o enlace a la definición del evento"

* author only Reference(PractitionerRoleLE)
* focus[ServiceRequestLE] only Reference(ServiceRequestLE) 
* focus[AppointmentAgendarLE] only Reference(AppointmentAgendarLE) 
* focus[EncounterAtenderLE] only Reference(EncounterAtenderLE)
* eventCoding from VSTipoEventoLE

