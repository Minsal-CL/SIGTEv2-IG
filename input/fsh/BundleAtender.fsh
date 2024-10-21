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
* timestamp 1..1 MS
* timestamp ^short = "Cuando el Bundle fue armado"

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 8..* MS
* entry ^short = "Entrada en el Bundle: contendrá un recurso o información"
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and practitioner 1..1 
        and practitionerRole 1..1 
        and organization 1..1 
        and encounter 1..1 
        and carePlan 1..1
        and Condition 1..* 
        and AllergyIntolerance 0..*
        and ObservationResultadoExamen 0..*
        and SolicitudMedicamento 0..*
        and SolicitudExamen 0..*
        and Anamnesis 0..1 
        

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
* entry[practitioner] ^short = "Entrada en el Bundle: contendrá un recurso Practitioner"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerProfesionalLE
  * resource ^short = "Profesional que presto la atención al paciente"
* entry[practitionerRole] ^short = "Entrada en el Bundle: contendrá un recurso PractitionerRole"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerRoleLE
  * resource ^short = "Se indica que médico y que organización atiende la IC. code.coding.code=atendedor"
* entry[organization] ^short = "Entrada en el Bundle: contendrá un recurso Organization"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only OrganizationLE
  * resource ^short = "Centro de salud que atiende la interconsulta"
* entry[encounter] ^short = "Entrada en el Bundle: contendrá un recurso Encounter"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only EncounterAtenderLE
  * resource ^short = "Encuentro que ocurre durante la atención del paciente."
* entry[carePlan] ^short = "Entrada en el Bundle: contendrá un recurso CarePlan"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only CarePlanAtenderLE 
  * resource ^short = "Indicaciones clinicas que deja el profesional para el paciente"
// * entry[questionnaireResponse] ^short = "Entrada en el Bundle: contendrá un recurso QuestionnaireResponse"
// * entry[questionnaireResponse].resource only QuestionnaireResponseAtenderLE  
// * entry[questionnaireResponse].resource ^short = "Recurso utilizado para guardar la anamnesis del paciente"
* entry[ObservationResultadoExamen] ^short = "Entrada en el Bundle: contendrá un recurso Observation"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationResultadoExamen  
  * resource ^short = "Recurso para indicar el resultado de los examenes realizados con anterioridad"
* entry[AllergyIntolerance] ^short = "Entrada en el Bundle: contendrá un recurso AllergyIntolerance"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only AllergyIntoleranceIniciarLE  
  * resource ^short = "Recurso para indicar si el paciente posee alguna alergia"
* entry[SolicitudMedicamento] ^short = "Entrada en el Bundle: Solicitud Medicamento"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only MedicationRequestLE
  * resource ^short = "Prescripción de algún medicamento indicado en el CarePlan"
* entry[SolicitudExamen] ^short = "Entrada en el Bundle: Solicitud Examen"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ServiceRequestExamenLE
  * resource ^short = "Solicitud de examen"
* entry[Anamnesis] ^short = "Entrada en el Bundle: Anamnesis"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationAnamnesisLE
  * resource ^short = "Anamnesis del paciente"
* entry[Condition] ^short = "Entrada en el Bundle: ConditionDiagnosticoLE"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ConditionDiagnosticoLE
  * resource ^short = "Diagnóstico por la cual será tratado el paciente"