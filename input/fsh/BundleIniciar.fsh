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
* entry 9..* MS
* entry ^short = "Entrada en el Bundle: contendrá un recurso o información"
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and encounter 1..1 
        and patient 1..1 
        and conditionDiagnostico 1..1 
        and observationComorbilidad 0..1
        and observationDiscapacidad 1..1 
        and observationCuidador 0..1 
        // and conditionGes 0..1 
        and ObservationResultadoExamen 0..* 
        and allergyintolerance 0..*
        and practitionerrole 1..1
        and practitioner 1..1
        and organization 1..1
        //and docCuidador 0..1
        //and prevision 0..1
        and motivoDerivacion 0..1
        and SolicitudExamen 0..*

* entry[messageheader] ^short = "Entrada en el Bundle: contendrá un recurso MessageHeader"
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only MessageHeaderLE
* entry[messageheader].resource ^short = "Cabecera del mensaje que facilita el seguimiento, debe ser siempre el primer entry en Bundle.type = message"
* entry[servicerequest] ^short = "Entrada en el Bundle: contendrá un recurso ServiceRequest"
* entry[servicerequest].resource 1..1 MS
* entry[servicerequest].resource only ServiceRequestLE
* entry[servicerequest].resource ^short = "Prestación que se requiere para el paciente, que no pudo ser resuelta en el APS"
* entry[encounter] ^short = "Entrada en el Bundle: contendrá un recurso Encounter"
* entry[encounter].resource 1..1 MS
* entry[encounter].resource only EncounterIniciarLE
* entry[encounter].resource ^short = "Encuentro que ocurre en el APS y donde se solicita la interconsulta"
* entry[ObservationResultadoExamen] ^short = "Entrada en el Bundle: contendrá un recurso Observation de resultado de examen"
* entry[ObservationResultadoExamen].resource 1..1 MS
* entry[ObservationResultadoExamen].resource only ObservationResultadoExamen
* entry[ObservationResultadoExamen].resource ^short = "Observación para indicar los examenes realizados al paciente."
* entry[conditionDiagnostico] ^short = "Entrada en el Bundle: contendrá un recurso Condition"
* entry[conditionDiagnostico].resource 1..1 MS
* entry[conditionDiagnostico].resource only ConditionDiagnosticoLE
* entry[conditionDiagnostico].resource ^short = "Condición que especifica el diagnóstico inicial por el cual se emite la IC"
* entry[observationComorbilidad] ^short = "Entrada en el Bundle: contendrá un recurso Observation de indice de Comorbilidad"
* entry[observationComorbilidad].resource 1..1 MS
* entry[observationComorbilidad].resource only ObservationIndiceComorbilidadLE
* entry[observationComorbilidad].resource ^short = "Indice de Comorbilidad del paciente"
* entry[observationDiscapacidad] ^short = "Entrada en el Bundle: contendrá un recurso Observation de Discapacidad"
* entry[observationDiscapacidad].resource 1..1 MS
* entry[observationDiscapacidad].resource only ObservationDiscapacidadLE
* entry[observationDiscapacidad].resource ^short = "Observación para indicar si el paciente tiene una discapacidad o no"
* entry[observationCuidador] ^short = "Entrada en el Bundle: contendrá un recurso Observation de Cuidador"
* entry[observationCuidador].resource 1..1 MS
* entry[observationCuidador].resource only ObservationIniciarCuidadorLE
* entry[observationCuidador].resource ^short = "Observación para indicar si el paciente es cuidador o no"
// * entry[conditionGes] ^short = "Entrada en el Bundle: contendrá un recurso Condition"
// * entry[conditionGes].resource only ConditionIniciarGesLE
// * entry[conditionGes].resource ^short = "Se indica si la Condición que especifica si es diagnostico factible de considerarse bajo GES"
* entry[allergyintolerance] ^short = "Entrada en el Bundle: contendrá un recurso AllergyIntolerance"
* entry[allergyintolerance].resource 1..1 MS
* entry[allergyintolerance].resource only AllergyIntoleranceIniciarLE
* entry[allergyintolerance].resource ^short = "Alergias que padece el paciente."
* entry[practitionerrole] ^short = "Entrada en el Bundle: contendrá un recurso PractitionerRole"
* entry[practitionerrole].resource 1..1 MS
* entry[practitionerrole].resource only PractitionerRoleLE
* entry[practitionerrole].resource ^short = "Se indica que médico y que organización solicita la inteconsulta"
* entry[patient] ^short = "Entrada en el Bundle: contendrá un recurso Patient"
* entry[patient].resource 1..1 MS
* entry[patient].resource only PatientLE
* entry[patient].resource ^short = "Paciente que se atiende"
* entry[organization] ^short = "Entrada en el Bundle: contendrá un recurso Organization"
* entry[organization].resource 1..1 MS
* entry[organization].resource only OrganizationLE
* entry[organization].resource ^short = "Centro de salud que inicia la interconsulta"
* entry[practitioner] ^short = "Entrada en el Bundle: contendrá un recurso Practitioner"
* entry[practitioner].resource 1..1 MS
* entry[practitioner].resource only PractitionerProfesionalLE
* entry[practitioner].resource ^short = "Profesional que inicia la interconsulta"
//* entry[docCuidador] ^short = "Entrada en el Bundle: contendrá un recurso DocumentReference"
//* entry[docCuidador].resource only DocumentReferenceIniciarLE
//* entry[docCuidador].resource ^short = "Documento que acredita que el paciente es cuidador."
// * entry[prevision] ^short = "Entrada en el Bundle: contendrá un recurso Coverage"
// * entry[prevision].resource only CoverageLE
// * entry[prevision].resource ^short = "Información de la previsión del paciente"
* entry[motivoDerivacion] ^short = "Entrada en el Bundle: contendrá un recurso QuestionnaireResponse"
* entry[motivoDerivacion].resource 1..1 MS
* entry[motivoDerivacion].resource only QuestionnaireResponseIniciarLE
* entry[motivoDerivacion].resource ^short = "Recurso donde se registra el motivo de la derivación del paciente"
* entry[SolicitudExamen] ^short = "Entrada en el Bundle: Solicitud Examen"
* entry[SolicitudExamen].resource 1..1 MS
* entry[SolicitudExamen].resource only ServiceRequestExamenLE
* entry[SolicitudExamen].resource ^short = "Solicitud de examen"