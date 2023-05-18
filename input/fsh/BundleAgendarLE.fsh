Profile: BundleAgendarLE
Parent: Bundle
Id: BundleAgendarLE
Title: "Bundle Agendar LE"
Description: "Bundle Agendar LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento Agendar."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id MS
* type MS
* type = #message
* timestamp MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 8..8 MS
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and practitioner 2..2
        and practitionerRole 2..2
        and organization 1..1
        and appointment 1..1
* entry[messageheader].resource only MessageHeaderLE
* entry[servicerequest].resource only ServiceRequestLE
* entry[organization].resource only OrganizationLE
* entry[practitioner].resource only PractitionerLE
* entry[practitionerRole].resource only PractitionerRoleLE
* entry[appointment].resource only AppointmentAgendarLE
