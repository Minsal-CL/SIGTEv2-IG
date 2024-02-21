Profile: BundleAtenderLE
Parent: Bundle
Id: BundleAtenderLE
Title: "Bundle Atender LE"
Description: "Bundle Atender LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento Atender."
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
* entry 0..* MS
* entry ^short = "Entrada en el Bundle: contendrá un recurso o información"
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and practitioner 1..1
        and practitionerRole 1..1
        and organization 1..1
        and encounter 1..1
        and carePlan 1..1
        and questionnaireResponse 1..1
        and observation 0..*


* entry[messageheader] ^short = "Entrada en el Bundle: contendrá un recurso MessageHeader"
* entry[messageheader].resource only MessageHeaderLE
* entry[messageheader].resource ^short = "Cabecera del mensaje que facilita el seguimiento, debe ser siempre el primer entry en Bundle.type = message"
* entry[servicerequest] ^short = "Entrada en el Bundle: contendrá un recurso ServiceRequest"
* entry[servicerequest].resource only ServiceRequestLE
* entry[servicerequest].resource ^short = "Prestación que se requiere para el paciente, que no pudo ser resuelta en el APS"
* entry[practitioner] ^short = "Entrada en el Bundle: contendrá un recurso Practitioner"
* entry[practitioner].resource only PrestadorProfesionalLE
* entry[practitioner].resource ^short = "Profesional que presto la atención al paciente"
* entry[practitionerRole] ^short = "Entrada en el Bundle: contendrá un recurso PractitionerRole"
* entry[practitionerRole].resource only PractitionerRoleLE
* entry[practitionerRole].resource ^short = "Se indica que médico y que organización atiende la IC. code.coding.code=atendedor"
* entry[organization] ^short = "Entrada en el Bundle: contendrá un recurso Organization"
* entry[organization].resource only OrganizationLE
* entry[organization].resource ^short = "Centro de salud que atiende la interconsulta"
* entry[encounter] ^short = "Entrada en el Bundle: contendrá un recurso Encounter"
* entry[encounter].resource only EncounterAtenderLE
* entry[encounter].resource ^short = "Encuentro que ocurre durante la atención del paciente."
* entry[carePlan] ^short = "Entrada en el Bundle: contendrá un recurso CarePlan"
* entry[carePlan].resource only CarePlanAtenderLE  
* entry[carePlan].resource ^short = "Indicaciones clinicas que deja el profesional para el paciente"
* entry[questionnaireResponse] ^short = "Entrada en el Bundle: contendrá un recurso QuestionnaireResponse"
* entry[questionnaireResponse].resource only QuestionnaireResponseAtenderLE  
* entry[questionnaireResponse].resource ^short = "Recurso utilizado para guardar la anamnesis del paciente"
* entry[observation] ^short = "Entrada en el Bundle: contendrá un recurso Observation"
* entry[observation].resource only ObservationAtenderLE  
* entry[observation].resource ^short = "Recurso para indicar el resultado de los examenes realizados con anterioridad"
