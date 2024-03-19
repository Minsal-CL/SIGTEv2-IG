Instance: EjemploBundleIniciar
InstanceOf: BundleIniciarLE
Usage: #example
Title: "Bundle Evento Iniciar"
Description: "Bundle Evento Iniciar"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/EjemploMessageHeader"
* entry[messageheader].resource = EjemploMessageHeader


* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/EjemploServiceRequest"
* entry[servicerequest].resource = EjemploServiceRequest

* entry[encounter].fullUrl = "http://acme.com/ehr/fhir/Encounter/EjemploEncounter"
* entry[encounter].resource = EjemploEncounter

// * entry[appointment].fullUrl = "http://acme.com/ehr/fhir/Appointment/app1"
// * entry[appointment].resource = EjemploAppointment

* entry[patient].fullUrl = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* entry[patient].resource = EjemploPatient

* entry[conditionDiagnostico].fullUrl = "http://acme.com/ehr/fhir/Condition/EjemploCondition"
* entry[conditionDiagnostico].resource = EjemploCondition

* entry[observationComorbilidad].fullUrl = "http://acme.com/ehr/fhir/Observation/EjemploObservation2"
* entry[observationComorbilidad].resource = EjemploObservation2

* entry[conditionGes].fullUrl = "http://acme.com/ehr/fhir/Condition/EjemploConditionGES"
* entry[conditionGes].resource = EjemploConditionGES

* entry[observation].fullUrl = "http://acme.com/ehr/fhir/Observation/EjemploObservation"
* entry[observation].resource = EjemploObservation

* entry[observationCuidador].fullUrl = "http://acme.com/ehr/fhir/Observation/EjemploObservationCuidador"
* entry[observationCuidador].resource = EjemploObservationCuidador

* entry[observationDiscapacidad].fullUrl = "http://acme.com/ehr/fhir/Observation/EjemploObservationDiscapacidad"
* entry[observationDiscapacidad].resource = EjemploObservationDiscapacidad

* entry[allergyintolerance].fullUrl = "http://acme.com/ehr/fhir/AllergyIntolerance/EjemploAllergyIntolerance"
* entry[allergyintolerance].resource = EjemploAllergyIntolerance

* entry[practitionerrole].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/EjemploPractitionerRole"
* entry[practitionerrole].resource = EjemploPractitionerRole

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/EjemploPractitionerIniciar"
* entry[practitioner].resource = EjemploPractitionerIniciar

* entry[organization].fullUrl = "http://acme.com/ehr/fhir/Organization/EjemploOrganization"
* entry[organization].resource = EjemploOrganization

* entry[docCuidador].fullUrl = "http://acme.com/ehr/fhir/DocumentReference/EjemploDocumentReference"
* entry[docCuidador].resource = EjemploDocumentReference

* entry[prevision].fullUrl = "http://acme.com/ehr/fhir/Coverage/EjemploCoverage"
* entry[prevision].resource = EjemploCoverage

* entry[motivoDerivacion].fullUrl = "http://acme.com/ehr/fhir/QuestionnaireResponse/EjemploQuestionnaireResponseIniciarLE"
* entry[motivoDerivacion].resource = EjemploQuestionnaireResponseIniciarLE


/*Budle Referencia*/
Instance: EjemploBundleReferenciar
InstanceOf: BundleReferenciarLE
Usage: #example
Title: "Bundle Evento Referenciar"
Description: "Bundle Evento Referenciar"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/EjemploMessageHeaderReferencia"
* entry[messageheader].resource = EjemploMessageHeaderReferencia

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/EjemploServiceRequestReferenciada"
* entry[servicerequest].resource = EjemploServiceRequestReferenciada

* entry[practitionerRole][0].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/EjemploPractitionerRoleReferenciarReferenciador"
* entry[practitionerRole][0].resource = EjemploPractitionerRoleReferenciarReferenciador

* entry[practitionerRole][1].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/EjemploPractitionerRoleReferenciarAtendedor"
* entry[practitionerRole][1].resource = EjemploPractitionerRoleReferenciarAtendedor

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/EjemploPractitionerReferenciarReferenciador"
* entry[practitioner].resource = EjemploPractitionerReferenciarReferenciador

* entry[organization][0].fullUrl = "http://acme.com/ehr/fhir/Organization/EjemploOrganizationReferenciarReferenciador"
* entry[organization][=].resource = EjemploOrganizationReferenciarReferenciador

* entry[organization][1].fullUrl = "http://acme.com/ehr/fhir/Organization/EjemploOrganizationAtender"
* entry[organization][=].resource = EjemploOrganizationAtender

/*FIN BUNDLE REFERENCIA*/

/*Budle Terminar*/
Instance: EjemploBundleTerminar
InstanceOf: BundleTerminarLE
Usage: #example
Title: "Bundle Evento Terminar"
Description: "Bundle Evento Terminar"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/EjemploMessageHeaderTerminar"
* entry[messageheader].resource = EjemploMessageHeaderTerminar

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/EjemploServiceRequestTerminar"
* entry[servicerequest].resource = EjemploServiceRequestTerminar

* entry[practitionerRole].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/EjemploPractitionerRoleTerminar"
* entry[practitionerRole].resource = EjemploPractitionerRoleTerminar

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/EjemploPractitionerTerminar"
* entry[practitioner].resource = EjemploPractitionerTerminar

* entry[organization][0].fullUrl = "http://acme.com/ehr/fhir/Organization/EjemploOrganizationTerminar"
* entry[organization][=].resource = EjemploOrganizationTerminar
/*FIN BUNDLE Terminar*/

/*Budle Revisar*/
Instance: EjemploBundleRevisar
InstanceOf: BundleRevisarLE
Usage: #example
Title: "Bundle Evento Revisar"
Description: "Bundle Evento Revisar"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/EjemploMessageHeaderRevisar"
* entry[messageheader].resource = EjemploMessageHeaderRevisar

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/EjemploServiceRequestRevisar"
* entry[servicerequest].resource = EjemploServiceRequestRevisar

* entry[practitionerRole][0].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/EjemploPractitionerRoleReferenciarReferenciador"
* entry[practitionerRole][=].resource = EjemploPractitionerRoleReferenciarReferenciador

* entry[practitionerRole][1].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/EjemploPractitionerRoleRevisar"
* entry[practitionerRole][=].resource = EjemploPractitionerRoleRevisar

* entry[organization][0].fullUrl = "http://acme.com/ehr/fhir/Organization/EjemploOrganizationReferencia"
* entry[organization][=].resource = EjemploOrganizationReferencia

* entry[organization][1].fullUrl = "http://acme.com/ehr/fhir/Organization/EjemploOrganizationRevisar"
* entry[organization][=].resource = EjemploOrganizationRevisar

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/EjemploPractitionerRevisar"
* entry[practitioner].resource = EjemploPractitionerRevisar

* entry[servicerequestexamen].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/EjemploServiceRequestExamen"
* entry[servicerequestexamen].resource = EjemploServiceRequestExamen

/*FIN BUNDLE revisar*/

/*Budle Agendar*/
Instance: EjemploBundleAgendar
InstanceOf: BundleAgendarLE
Usage: #example
Title: "Bundle Evento Agendar"
Description: "Bundle Evento Agendar"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/EjemploMessageHeaderAgendar"
* entry[messageheader].resource = EjemploMessageHeaderAgendar

* entry[appointment].fullUrl = "http://acme.com/ehr/fhir/Appointment/EjemploAppointmentAgendar"
* entry[appointment].resource = EjemploAppointmentAgendar

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/EjemploServiceRequestAgendar"
* entry[servicerequest].resource = EjemploServiceRequestAgendar

* entry[practitionerRole][0].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/EjemploPractitionerRoleAgendarMH"
* entry[practitionerRole][0].resource = EjemploPractitionerRoleAgendarMH

* entry[practitionerRole][1].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/EjemploPractitionerRoleAgendarAPPO"
* entry[practitionerRole][1].resource = EjemploPractitionerRoleAgendarAPPO

* entry[practitionerProfesional].fullUrl = "http://acme.com/ehr/fhir/Practitioner/EjemploPractitionerAgendarAtendedor"
* entry[practitionerProfesional].resource = EjemploPractitionerAgendarAtendedor

* entry[practitionerAdministrativo].fullUrl = "http://acme.com/ehr/fhir/Practitioner/EjemploPractitionerAgendarAgendador"
* entry[practitionerAdministrativo].resource = EjemploPractitionerAgendarAgendador

* entry[organization].fullUrl = "http://acme.com/ehr/fhir/Organization/EjemploOrganizationAgendar"
* entry[organization].resource = EjemploOrganizationAgendar

* entry[appointment].fullUrl = "http://acme.com/ehr/fhir/Appointment/EjemploAppointmentAgendar"
* entry[appointment].resource = EjemploAppointmentAgendar

/*FIN BUNDLE Agendar*/



/*BUNDLE PRIORIZAR*/
Instance: EjemploBundlePriorizar
InstanceOf: BundlePriorizarLE
Usage: #example
Title: "Bundle Evento Priorizar"
Description: "Bundle Evento Priorizar"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/EjemploMessageHeaderPriorizar"
* entry[messageheader].resource = EjemploMessageHeaderPriorizar

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/EjemploServiceRequestPriorizar"
* entry[servicerequest].resource = EjemploServiceRequestPriorizar

* entry[practitionerRole].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/EjemploPractitionerRolePriorizar"
* entry[practitionerRole].resource = EjemploPractitionerRolePriorizar

* entry[organization].fullUrl = "http://acme.com/ehr/fhir/Organization/EjemploOrganizationPriorizar"
* entry[organization].resource = EjemploOrganizationPriorizar

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/EjemploPractitionerPriorizar"
* entry[practitioner].resource = EjemploPractitionerPriorizar

/* * entry[patient].fullUrl = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* entry[patient].resource = EjemploPatient */

/*FIN BUNDLE PRIORIZAR*/



/*Bundle Atender*/

Instance: EjemploBundleAtender
InstanceOf: BundleAtenderLE
Usage: #example
Title: "Bundle Evento Atender"
Description: "Bundle Evento Atender"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/EjemploMessageHeaderAtender"
* entry[messageheader].resource = EjemploMessageHeaderAtender

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/EjemploServiceRequestAtender"
* entry[servicerequest].resource = EjemploServiceRequestAtender

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/EjemploPractitionerAtender"
* entry[practitioner].resource = EjemploPractitionerAtender

* entry[practitionerRole].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/EjemploPractitionerRoleAtender"
* entry[practitionerRole].resource = EjemploPractitionerRoleAtender

* entry[organization].fullUrl = "http://acme.com/ehr/fhir/Organization/EjemploOrganizationAtender"
* entry[organization].resource = EjemploOrganizationAtender

* entry[encounter].fullUrl = "http://acme.com/ehr/fhir/Encounter/EjemploEncounterAtender"
* entry[encounter].resource = EjemploEncounterAtender

// * entry[patient].fullUrl = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
// * entry[patient].resource = EjemploPatient

* entry[carePlan].fullUrl = "http://acme.com/ehr/fhir/CarePlan/EjemploCarePlanLE"
* entry[carePlan].resource = EjemploCarePlanLE

* entry[questionnaireResponse].fullUrl = "http://acme.com/ehr/fhir/QuestionnaireResponse/EjemploQuestionnaireResponseAtenderLE"
* entry[questionnaireResponse].resource = EjemploQuestionnaireResponseAtenderLE

* entry[observation].fullUrl = "http://acme.com/ehr/fhir/Observation/EjemploObservationAtender"
* entry[observation].resource = EjemploObservationAtender

// * entry[conditionDiagnosticoSospecha].fullUrl = "http://acme.com/ehr/fhir/Condition/EjemploCondition"
// * entry[conditionDiagnosticoSospecha].resource = EjemploCondition

// * entry[conditionDiagnosticoConfirmacion].fullUrl = "http://acme.com/ehr/fhir/Condition/EjemploCondicionAtenderDiagnosticoConfirmacionLE"
// * entry[conditionDiagnosticoConfirmacion].resource = EjemploCondicionAtenderDiagnosticoConfirmacionLE
/*FIN BUNDLE Atender*/

