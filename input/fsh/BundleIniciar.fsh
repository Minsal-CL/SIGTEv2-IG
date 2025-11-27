Profile: BundleIniciarLE
Parent: Bundle
Id: BundleIniciarLE
Title: "Bundle Iniciar LE"
Description: "Bundle Iniciar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento iniciar."
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
* entry contains messageheader 1..1 MS
        and servicerequest 1..1 MS
        and encounter 1..1 MS
        and patient 1..1 MS
        and conditionDiagnostico 1..1 MS
        and observationComorbilidad 0..1 MS
        and observationDiscapacidad 0..1 MS
        and observationCuidador 0..1 MS
        // and conditionGes 0..1 
        and ObservationResultadoExamen 0..* MS
        and allergyintolerance 0..* MS
        and practitionerrole 1..1 MS
        and practitioner 1..1 MS
        and organization 1..1 MS
        //and docCuidador 0..1
        //and prevision 0..1
        and motivoDerivacion 0..1 MS
        and SolicitudExamen 0..* MS

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
* entry[encounter] ^short = "Entrada en el Bundle: contendrá un recurso Encounter"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only EncounterIniciarLE
  * resource ^short = "Encuentro que ocurre en el APS y donde se solicita la interconsulta"
* entry[ObservationResultadoExamen] ^short = "Entrada en el Bundle: contendrá un recurso Observation de resultado de examen"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationResultadoExamen
  * resource ^short = "Observación para indicar los examenes realizados al paciente"
* entry[conditionDiagnostico] ^short = "Entrada en el Bundle: contendrá un recurso Condition"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ConditionDiagnosticoLE
  * resource ^short = "Condición que especifica el diagnóstico inicial por el cual se emite la IC"
* entry[observationComorbilidad] ^short = "Entrada en el Bundle: contendrá un recurso Observation de indice de Comorbilidad"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationIndiceComorbilidadLE
  * resource ^short = "Indice de Comorbilidad del paciente"
* entry[observationDiscapacidad] ^short = "Entrada en el Bundle: contendrá un recurso Observation de Discapacidad"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationDiscapacidadLE
  * resource ^short = "Observación para indicar si el paciente tiene una discapacidad o no"
* entry[observationCuidador] ^short = "Entrada en el Bundle: contendrá un recurso Observation de Cuidador"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationIniciarCuidadorLE
  * resource ^short = "Observación para indicar si el paciente tiene un cuidador o no"
// * entry[conditionGes] ^short = "Entrada en el Bundle: contendrá un recurso Condition"
// * entry[conditionGes].resource only ConditionIniciarGesLE
// * entry[conditionGes].resource ^short = "Se indica si la Condición que especifica si es diagnostico factible de considerarse bajo GES"
* entry[allergyintolerance] ^short = "Entrada en el Bundle: contendrá un recurso AllergyIntolerance"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only AllergyIntoleranceIniciarLE
  * resource ^short = "Alergias que padece el paciente"
* entry[practitionerrole] ^short = "Entrada en el Bundle: contendrá un recurso PractitionerRole"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerRoleLE
  * resource ^short = "Se indica que médico y que organización solicita la inteconsulta"
* entry[patient] ^short = "Entrada en el Bundle: contendrá un recurso Patient"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PatientLE
  * resource ^short = "Información del paciente que se atiende"
* entry[organization] ^short = "Entrada en el Bundle: contendrá un recurso Organization"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only OrganizationLE
  * resource ^short = "Centro de salud que inicia la interconsulta"
* entry[practitioner] ^short = "Entrada en el Bundle: contendrá un recurso Practitioner"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerProfesionalLE
  * resource ^short = "Profesional que inicia la interconsulta"
//* entry[docCuidador] ^short = "Entrada en el Bundle: contendrá un recurso DocumentReference"
//* entry[docCuidador].resource only DocumentReferenceIniciarLE
//* entry[docCuidador].resource ^short = "Documento que acredita que el paciente es cuidador."
// * entry[prevision] ^short = "Entrada en el Bundle: contendrá un recurso Coverage"
// * entry[prevision].resource only CoverageLE
// * entry[prevision].resource ^short = "Información de la previsión del paciente"
* entry[motivoDerivacion] ^short = "Entrada en el Bundle: contendrá un recurso QuestionnaireResponse"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only QuestionnaireResponseIniciarLE
  * resource ^short = "Recurso donde se registra el motivo de la derivación del paciente"
* entry[SolicitudExamen] ^short = "Entrada en el Bundle: Solicitud Examen"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ServiceRequestExamenLE
  * resource ^short = "Solicitud de examen"