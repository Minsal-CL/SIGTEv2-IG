Profile: BundleTerminarLE
Parent: Bundle
Id: BundleTerminarLE
Title: "Bundle Terminar LE"
Description: "Bundle Terminar LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento terminar."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id MS
* id ^short = "Id propio del recurso"
* type MS
* type ^short = "Indica de qué tipo es el Bundle, en este caso de tipo message"
* type = #message
* timestamp 1..1 MS
* timestamp ^short = "Cuando el Bundle fue armado"

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 5..5 MS
* entry ^short = "Entrada en el Bundle: contendrá un recurso o información"
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and practitioner 1..1
        and practitionerRole 1..1
        and organization 1..1

* entry[messageheader] ^short = "Entrada en el Bundle: contendrá un recurso MessageHeader"
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only MessageHeaderLE
* entry[messageheader].resource ^short = "Cabecera del mensaje que facilita el seguimiento, debe ser siempre el primer entry en Bundle.type = message"
* entry[servicerequest] ^short = "Entrada en el Bundle: contendrá un recurso ServiceRequest"
* entry[servicerequest].resource 1..1 MS
* entry[servicerequest].resource only ServiceRequestLE
* entry[servicerequest].resource ^short = "Prestación que se requiere para el paciente, que no pudo ser resuelta en el APS"
* entry[organization] ^short = "Entrada en el Bundle: contendrá un recurso Organization"
* entry[organization].resource 1..1 MS
* entry[organization].resource only OrganizationLE
* entry[organization].resource ^short = "Centro de salud que termina la interconsulta."
* entry[practitioner] ^short = "Entrada en el Bundle: contendrá un recurso Practitioner"
* entry[practitioner].resource 1..1 MS
* entry[practitioner].resource only PractitionerProfesionalLE
* entry[practitioner].resource ^short = "Profesional que prestó la atención al paciente"
* entry[practitionerRole] ^short = "Entrada en el Bundle: contendrá un recurso PractitionerRole"
* entry[practitionerRole].resource 1..1 MS
* entry[practitionerRole].resource only PractitionerRoleLE
* entry[practitionerRole].resource ^short = "Se indica que médico y que organización termina la inteconsulta. code.coding.code=terminador"