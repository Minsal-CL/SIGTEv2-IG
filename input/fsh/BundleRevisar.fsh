Profile: BundleRevisarLE
Parent: Bundle
Id: BundleRevisarLE
Title: "Bundle Revisar LE"
Description: "Bundle Revisar LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento revisar."
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
* entry 5..* MS
* entry ^short = "Entrada en el Bundle: contendrá un recurso o información"
* entry contains messageheader 1..1 MS
        and servicerequest 1..1 MS
        and practitioner 1..1 MS
        and practitionerRole 1..2 MS
        and organization 1..2 MS
        and servicerequestexamen 0..* MS

* entry[messageheader] ^short = "Entrada en el Bundle: contendrá un recurso MessageHeader"
  * fullUrl 0..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only MessageHeaderLE
  * resource ^short = "Cabecera del mensaje que facilita el seguimiento, debe ser siempre el primer entry en Bundle.type = message"
* entry[servicerequest] ^short = "Entrada en el Bundle: contendrá un recurso ServiceRequest"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ServiceRequestLE
  * resource ^short = "Prestación que se requiere para el paciente, que no pudo ser resuelta en el APS"
* entry[organization] ^short = "Entrada en el Bundle: contendrá un recurso Organization"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only OrganizationLE
  * resource ^short = "Centro de salud que revisa la interconsulta"
* entry[practitioner] ^short = "Entrada en el Bundle: contendrá un recurso Practitioner"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerProfesionalLE
  * resource ^short = "Médico que revisa la interconsulta"
* entry[practitionerRole] ^short = "Entrada en el Bundle: contendrá un recurso PractitionerRole"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerRoleLE
  * resource ^short = "Se indica que médico y que organización que revisa la inteconsulta" 
* entry[servicerequestexamen] ^short = "Entrada en el Bundle: contendrá un recurso ServiceRequest"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ServiceRequestExamenLE
  * resource ^short = "Exámenes requeridos"
