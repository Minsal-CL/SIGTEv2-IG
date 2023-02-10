Profile: BundleInicioLE
Parent: Bundle
Id: BundleInicioLE
Title: "BundleInicio LE"
Description: "Bundle LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento inicio."
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
* entry 13..14 MS
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and encounter 1..1 
        and appointment 1..1 
        and patient 1..1 
        and questionnaireresponse 1..1 
        and condition1 1..1 
        and condition2 1..1 
        and condition3 1..1 
        and observation 1..1 
        and allergyintolerance 0..1
        and practitionerrole 1..1
        and practitioner 1..1
        and organization 1..1
* entry[messageheader].resource only MessageHeaderLE
* entry[servicerequest].resource only ServiceRequestLE
* entry[encounter].resource only EncounterInicioLE
* entry[observation].resource only ObservationInicioLE
* entry[condition1].resource only ConditionInicioDiagnosticoSospechaLE
* entry[condition2].resource only ConditionInicioIndiceComorbilidadLE
* entry[condition3].resource only ConditionInicioSospechaGesLE
* entry[appointment].resource only AppointmentInicioLE
* entry[allergyintolerance].resource only AllergyIntoleranceInicioLE
* entry[practitionerrole].resource only PractitionerRoleLE
* entry[questionnaireresponse].resource only QuestionnaireResponseInicioLE
* entry[patient].resource only PatientLE
* entry[organization].resource only OrganizationLE
* entry[practitioner].resource only PractitionerLE
