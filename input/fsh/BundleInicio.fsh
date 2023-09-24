Profile: BundleInicioLE
Parent: Bundle
Id: BundleInicioLE
Title: "BundleInicio LE"
Description: "Bundle LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento iniciar."
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
* entry 8..17 MS
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and encounter 1..1 
        and patient 1..1 
        and conditionDiagnostico 1..1 
        and observationComorbilidad 0..1
        and observationCuidador 0..1 
        and conditionGes 0..1 
        and observation 0..1 
        and allergyintolerance 0..1
        and practitionerrole 1..1
        and practitioner 1..1
        and organization 1..1
        and docCuidador 0..1
        and prevision 0..1
        and motivoDerivacion 0..1
* entry[messageheader].resource only MessageHeaderLE
* entry[servicerequest].resource only ServiceRequestLE
* entry[encounter].resource only EncounterInicioLE
* entry[observation].resource only ObservationInicioLE
* entry[conditionDiagnostico].resource only ConditionInicioDiagnosticoLE
* entry[observationComorbilidad].resource only ObservationInicioIndiceComorbilidadLE
* entry[observationCuidador].resource only ObservationInicioCuidadorLE
* entry[conditionGes].resource only ConditionInicioGesLE
* entry[allergyintolerance].resource only AllergyIntoleranceInicioLE
* entry[practitionerrole].resource only PractitionerRoleLE
* entry[patient].resource only PacienteMinsalMPI
* entry[organization].resource only OrganizationLE
* entry[practitioner].resource only PractitionerLE
* entry[docCuidador].resource only DocumentReferenceInicioLE
* entry[prevision].resource only CoverageInicioLE
* entry[motivoDerivacion].resource only QuestionnaireResponseInicioLE