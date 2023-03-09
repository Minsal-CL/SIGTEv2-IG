Profile: MessageHeaderLE
Parent: MessageHeader
Id: MessageHeaderLE
Title: "MessageHeader LE"
Description: "MessageHeaderLE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft


* meta.lastUpdated 1..1 MS
* source.software 1..1 MS
* source.endpoint 1..1 MS


//* focus only Reference(ServiceRequestLE)
* author 1..1 MS
* focus 1..1 MS
* eventCoding 1..1 MS
//* eventCoding.code 1..1

* author only Reference(PractitionerRoleLE)
* focus only Reference(ServiceRequestLE or AppointmentInicioLE)
* eventCoding from VSTipoEventoLE

