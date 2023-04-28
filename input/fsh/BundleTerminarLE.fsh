Profile: BundleTerminarLE
Parent: Bundle
Id: BundleTerminarLE
Title: "Bundle Terminar LE"
Description: "Bundle Terminar LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento terminar."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id MS
* id
* type MS
* type = #message
* timestamp MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 5..5 MS
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and practitioner 1..1
        and practitionerRole 1..1
        and organization 1..1
        
* entry[messageheader].resource only MessageHeaderLE
* entry[servicerequest].resource only ServiceRequestLE
* entry[organization].resource only OrganizationLE
* entry[practitioner].resource only PractitionerLE
* entry[practitionerRole].resource only PractitionerRoleLE