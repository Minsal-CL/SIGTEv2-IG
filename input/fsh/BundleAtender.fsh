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

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "profile"
* entry ^slicing.rules = #closed
* entry 0..14 MS
* entry contains messageheader 1..1 
        and servicerequest 1..1 
        and practitioner 1..1
        and practitionerRole 1..1
        and organization 1..1
        and appointment 1..1
        and encounter 1..1
        and patient 1..1
        and carePlan 1..1
        and questionnaireResponse 1..1
        and observation 1..1
        and conditionHipotesis 1..1
        and conditionDiagnosticoSospecha 1..1
        and conditionDiagnosticoConfirmacion 1..1



* entry[messageheader].resource only MessageHeaderLE
* entry[servicerequest].resource only ServiceRequestLE
* entry[practitioner].resource only PractitionerLE
* entry[practitionerRole].resource only PractitionerRoleLE
* entry[organization].resource only OrganizationLE
* entry[appointment].resource only AppointmentLE
* entry[encounter].resource only EncounterAtenderLE
* entry[patient].resource only PatientLE  
* entry[carePlan].resource only CarePlanAtenderLE  
* entry[questionnaireResponse].resource only QuestionnaireResponseAtenderLE  
* entry[observation].resource only ObservationAtenderLE  
* entry[conditionHipotesis].resource only CondicionAtenderHipotesisDiagnosticaCodigoLE  
* entry[conditionDiagnosticoSospecha].resource only CondicionAtenderDiagnosticoSospechaLE  
* entry[conditionDiagnosticoConfirmacion].resource only CondicionAtenderDiagnosticoConfirmacionLE
