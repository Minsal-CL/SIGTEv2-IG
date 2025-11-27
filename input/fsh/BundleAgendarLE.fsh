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
* timestamp 1..1 MS
* timestamp ^short = "Cuando el Bundle fue armado"

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 8..8 MS
* entry ^short = "Entrada en el Bundle: contendrá un recurso o información"
* entry contains messageheader 1..1 MS
        and servicerequest 1..1 MS
        and practitionerAdministrativo 1..1 MS
        and practitionerProfesional 1..1 MS
        and practitionerRole 2..2 MS
        and organization 1..1 MS
        and appointment 1..1 MS
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
  * resource ^short = "Centro de salud que agenda y atiende la interconsulta"
* entry[practitionerProfesional] ^short = "Entrada en el Bundle: contendrá un recurso Practitioner"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerProfesionalLE
  * resource ^short = "Profesional que atendera la interconsulta"
* entry[practitionerAdministrativo] ^short = "Entrada en el Bundle: contendrá un recurso Practitioner"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerAdministrativoLE
  * resource ^short = "Profesional que agenda la interconsulta"
* entry[practitionerRole] ^short = "Entrada en el Bundle: contendrá un recurso PractitionerRole"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerRoleLE
  * resource ^short = "Se indica el administrativo y organización que agenda la interconsulta, o el profesional que realizará la atención"
* entry[appointment] ^short = "Entrada en el Bundle: contendrá un recurso Appointment"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only AppointmentAgendarLE
  * resource ^short = "Recurso donde se indica el agendamiento para la atención del paciente."
