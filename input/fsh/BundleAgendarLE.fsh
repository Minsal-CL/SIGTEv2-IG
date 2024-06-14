Profile: BundleAgendarLE
Parent: Bundle
Id: BundleAgendarLE
Title: "Bundle Agendar LE"
Description: "Bundle Agendar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento Agendar."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id MS
* id ^short = "Id propio del recurso"
* type MS
* type ^short = "Indica de qué tipo es el Bundle, en este caso de tipo message"
* type = #message
* timestamp MS
* timestamp ^short = "Cuando el Bundle fue armado"

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 8..8 MS
* entry ^short = "Entrada en el Bundle: contendrá un recurso o información"
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and practitionerAdministrativo 1..1
        and practitionerProfesional 1..1
        and practitionerRole 2..2
        and organization 1..1
        and appointment 1..1
* entry[messageheader] ^short = "Entrada en el Bundle: contendrá un recurso MessageHeader"
* entry[messageheader].resource only MessageHeaderLE
* entry[messageheader].resource ^short = "Cabecera del mensaje que facilita el seguimiento, debe ser siempre el primer entry en Bundle.type = message"
* entry[servicerequest] ^short = "Entrada en el Bundle: contendrá un recurso ServiceRequest"
* entry[servicerequest].resource only ServiceRequestLE
* entry[servicerequest].resource ^short = "Prestación que se requiere para el paciente, que no pudo ser resuelta en el APS"
* entry[organization] ^short = "Entrada en el Bundle: contendrá un recurso Organization"
* entry[organization].resource only OrganizationLE
* entry[organization].resource ^short = "Centro de salud que agenda y atiende la interconsulta"
* entry[practitionerProfesional] ^short = "Entrada en el Bundle: contendrá un recurso Practitioner"
* entry[practitionerProfesional].resource only PractitionerProfesionalLE
* entry[practitionerProfesional].resource ^short = "Profesional que atendera la interconsulta"
* entry[practitionerAdministrativo] ^short = "Entrada en el Bundle: contendrá un recurso Practitioner"
* entry[practitionerAdministrativo].resource only PractitionerAdministrativoLE
* entry[practitionerAdministrativo].resource ^short = "Profesional que revisa la interconsulta"
* entry[practitionerRole] ^short = "Entrada en el Bundle: contendrá un recurso PractitionerRole"
* entry[practitionerRole].resource only PractitionerRoleLE
* entry[practitionerRole].resource ^short = "Se indica el administrativo y organización que agenda la interconsulta"
* entry[appointment] ^short = "Entrada en el Bundle: contendrá un recurso Appointment"
* entry[appointment].resource only AppointmentAgendarLE
* entry[appointment].resource ^short = "Recurso donde se indica el agendamiento para la atención del paciente."
