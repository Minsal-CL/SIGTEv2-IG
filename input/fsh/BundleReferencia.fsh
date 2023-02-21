Profile: BundleReferenciaLE
Parent: Bundle
Id: BundleReferenciaLE
Title: "Bundle Referencia LE"
Description: "Bundle Referencia LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento referenciada."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id MS
* id
* type MS
* type = #message
* timestamp MS

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "profile"
* entry ^slicing.rules = #closed
* entry 7..7 MS
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and practitioner 1..1
        and practitionerRole 2..2
        and organization 2..2
        
* entry[messageheader].resource only MessageHeaderLE
* entry[servicerequest].resource only ServiceRequestLE
* entry[organization].resource only OrganizationLE
* entry[practitioner].resource only PractitionerLE
* entry[practitionerRole].resource only PractitionerRoleLE