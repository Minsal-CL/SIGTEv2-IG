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
* entry 10..14 MS
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and encounter 1..1 
        and appointment 1..1 
        and patient 1..1 
        and questionnaireresponse 1..1 
        and conditionDiagnostico 1..1 
        and conditionComorbilidad 0..1 
        and conditionGes 0..1 
        and observation 0..1 
        and allergyintolerance 0..1
        and practitionerrole 1..1
        and practitioner 1..1
        and organization 1..1
* entry[messageheader].resource only MessageHeaderLE
* entry[servicerequest].resource only ServiceRequestLE
* entry[encounter].resource only EncounterInicioLE
* entry[observation].resource only ObservationInicioLE
* entry[conditionDiagnostico].resource only ConditionInicioDiagnosticoSospechaLE
* entry[conditionComorbilidad].resource only ConditionInicioIndiceComorbilidadLE
* entry[conditionGes].resource only ConditionInicioSospechaGesLE
* entry[appointment].resource only AppointmentInicioLE
* entry[allergyintolerance].resource only AllergyIntoleranceInicioLE
* entry[practitionerrole].resource only PractitionerRoleLE
* entry[questionnaireresponse].resource only QuestionnaireResponseInicioLE
* entry[patient].resource only PatientLE
* entry[organization].resource only OrganizationLE
* entry[practitioner].resource only PractitionerLE