Profile: BundleAtenderLE
Parent: Bundle
Id: BundleAtenderLE
Title: "Bundle Atender LE"
Description: "Bundle Atender LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento Atender."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id MS

* type MS
* type = #message
* timestamp MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 0..13 MS
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and practitioner 1..1
        and practitionerRole 1..1
        and organization 1..1
        and encounter 1..1
        and patient 1..1
        and carePlan 1..1
        and questionnaireResponse 1..1
        and observation 1..1
        and conditionDiagnosticoSospecha 1..1
        and conditionDiagnosticoConfirmacion 1..1



* entry[messageheader].resource only MessageHeaderLE
* entry[servicerequest].resource only ServiceRequestLE
* entry[practitioner].resource only PractitionerLE
* entry[practitionerRole].resource only PractitionerRoleLE
* entry[organization].resource only OrganizationLE
* entry[encounter].resource only EncounterAtenderLE
* entry[patient].resource only PatientLE  
* entry[carePlan].resource only CarePlanAtenderLE  
* entry[questionnaireResponse].resource only QuestionnaireResponseAtenderLE  
* entry[observation].resource only ObservationAtenderLE  
* entry[conditionDiagnosticoConfirmacion].resource only CondicionAtenderDiagnosticoConfirmacionLE
* entry[conditionDiagnosticoSospecha].resource only CondicionAtenderDiagnosticoSospechaLE  

//* entry[conditionHipotesis].resource only CondicionAtenderHipotesisDiagnosticaCodigoLE  