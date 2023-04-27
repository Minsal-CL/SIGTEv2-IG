Instance: EjemploBundleInicio
InstanceOf: BundleInicioLE
Usage: #example
Title: "Bundle Evento de Inicio"
Description: "Bundle Evento de Inicio"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/mh1"
* entry[messageheader].resource = EjemploMessageHeader


* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/serv1"
* entry[servicerequest].resource = EjemploServiceRequest

* entry[encounter].fullUrl = "http://acme.com/ehr/fhir/Encounter/enc1"
* entry[encounter].resource = EjemploEncounter

* entry[appointment].fullUrl = "http://acme.com/ehr/fhir/Appointment/app1"
* entry[appointment].resource = EjemploAppointment

* entry[patient].fullUrl = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* entry[patient].resource = EjemploPatient

* entry[questionnaireresponse].fullUrl = "http://acme.com/ehr/fhir/QuestionnaireResponse/que1"
* entry[questionnaireresponse].resource = EjemploQuestionnaireResponse

* entry[conditionDiagnostico].fullUrl = "http://acme.com/ehr/fhir/Condition/con1"
* entry[conditionDiagnostico].resource = EjemploCondition

* entry[conditionComorbilidad].fullUrl = "http://acme.com/ehr/fhir/Condition/con2"
* entry[conditionComorbilidad].resource = EjemploCondition2

* entry[conditionGes].fullUrl = "http://acme.com/ehr/fhir/Condition/con3"
* entry[conditionGes].resource = EjemploCondition3

* entry[observation].fullUrl = "http://acme.com/ehr/fhir/Observation/obs1"
* entry[observation].resource = EjemploObservation

* entry[allergyintolerance].fullUrl = "http://acme.com/ehr/fhir/AllergyIntolerance/all1"
* entry[allergyintolerance].resource = EjemploAllergyIntolerance

* entry[practitionerrole].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/praR1"
* entry[practitionerrole].resource = EjemploPractitionerRole

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/pra1"
* entry[practitioner].resource = EjemploPractitioner

* entry[organization].fullUrl = "http://acme.com/ehr/fhir/Organization/org1"
* entry[organization].resource = EjemploOrganization


/*Budle Referencia*/
Instance: EjemploBundleReferencia
InstanceOf: BundleReferenciaLE
Usage: #example
Title: "Bundle Evento de Referencia"
Description: "Bundle Evento de Referencia"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/referencia"
* entry[messageheader].resource = EjemploMessageHeaderReferencia

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/referencia"
* entry[servicerequest].resource = EjemploServiceRequestReferenciada

* entry[practitionerRole][0].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/referenciaAgendador"
* entry[practitionerRole][0].resource = EjemploPractitionerRoleAgendadorSRREFERENCIADA

* entry[practitionerRole][1].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/referenciaAtendedor"
* entry[practitionerRole][1].resource = EjemploPractitionerRoleReferenciadorMHREFERENCIADA

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/referencia"
* entry[practitioner].resource = EjemploPractitionerReferenciadorMHREFERENCIADA

* entry[organization][0].fullUrl = "http://acme.com/ehr/fhir/Organization/referenciaAgendador"
* entry[organization][=].resource = EjemploOrganizationAgendadorSRREFERENCIADA

* entry[organization][1].fullUrl = "http://acme.com/ehr/fhir/Organization/referenciaAtendedor"
* entry[organization][1].resource = EjemploOrganizationReferenciadorMHREFERENCIADA
/*FIN BUNDLE REFERENCIA*/

/*Budle Terminar*/
Instance: EjemploBundleTerminar
InstanceOf: BundleTerminarLE
Usage: #example
Title: "Bundle Evento de Terminar"
Description: "Bundle Evento de Terminar"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/terminar"
* entry[messageheader].resource = EjemploMessageHeaderTerminar

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/terminar"
* entry[servicerequest].resource = EjemploServiceRequestTerminar

* entry[practitionerRole].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/terminar"
* entry[practitionerRole].resource = EjemploPractitionerRoleTerminar

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/terminar"
* entry[practitioner].resource = EjemploPractitionerTerminar

* entry[organization][0].fullUrl = "http://acme.com/ehr/fhir/Organization/terminar"
* entry[organization][=].resource = EjemploOrganizationTerminar
/*FIN BUNDLE Terminar*/

/*Budle Revisar*/
Instance: EjemploBundleRevisar
InstanceOf: BundleRevisarLE
Usage: #example
Title: "Bundle Evento de Revisar"
Description: "Bundle Evento de Revisar"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/revisar"
* entry[messageheader].resource = EjemploMessageHeaderRevisar

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/revisar"
* entry[servicerequest].resource = EjemploServiceRequestRevisar

* entry[practitionerRole].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/revisar"
* entry[practitionerRole].resource = EjemploPractitionerRoleRevisar


* entry[organization].fullUrl = "http://acme.com/ehr/fhir/Organization/revisar"
* entry[organization].resource = EjemploOrganizationRevisar

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/revisar"
* entry[practitioner].resource = EjemploPractitionerRevisar

/*FIN BUNDLE revisar*/

/*Budle Agendar*/
Instance: EjemploBundleAgendar
InstanceOf: BundleAgendarLE
Usage: #example
Title: "Bundle Evento de Agendar"
Description: "Bundle Evento de Agendar"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/agendar"
* entry[messageheader].resource = EjemploMessageHeaderAgendar

* entry[appointment].fullUrl = "http://acme.com/ehr/fhir/Appointment/agendar"
* entry[appointment].resource = EjemploAppointmentAgendar

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/agendar"
* entry[servicerequest].resource = EjemploServiceRequestAgendar

* entry[practitionerRole][1].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/agendarAtendedor"
* entry[practitionerRole][1].resource = EjemploPractitionerRoleAgendarAPPO

* entry[practitioner][0].fullUrl = "http://acme.com/ehr/fhir/Practitioner/agendarAtendedor"
* entry[practitioner][0].resource = EjemploPractitionerAgendarAtendedor

* entry[practitioner][1].fullUrl = "http://acme.com/ehr/fhir/Practitioner/agendarAgendador"
* entry[practitioner][1].resource = EjemploPractitionerAgendarAgendador

* entry[practitionerRole][0].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/agendarAgendador"
* entry[practitionerRole][0].resource = EjemploPractitionerRoleAgendarMH

* entry[organization].fullUrl = "http://acme.com/ehr/fhir/Organization/agendar"
* entry[organization].resource = EjemploOrganizationAgendar



//* entry[practitionerRole].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/praR1"
//* entry[practitionerRole].resource = EjemploPractitionerRoleAgendar

/*FIN BUNDLE Agendar*/



/*BUNDLE PRIORIZAR*/
Instance: EjemploBundlePriorizar
InstanceOf: BundlePriorizarLE
Usage: #example
Title: "Bundle Evento de Priorizar"
Description: "Bundle Evento de Priorizar"

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/priorizar"
* entry[messageheader].resource = EjemploMessageHeaderPriorizar

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/priorizar"
* entry[servicerequest].resource = EjemploServiceRequestPriorizar

* entry[practitionerRole].fullUrl = "http://acme.com/ehr/fhir/PractitionerRole/priorizar"
* entry[practitionerRole].resource = EjemploPractitionerRolePriorizar

* entry[organization].fullUrl = "http://acme.com/ehr/fhir/Organization/priorizar"
* entry[organization].resource = EjemploOrganizationPriorizar

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/priorizar"
* entry[practitioner].resource = EjemploPractitionerPriorizar

* entry[patient].fullUrl = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* entry[patient].resource = EjemploPatient

/*FIN BUNDLE PRIORIZAR*/



/*Bundle Atender*/

Instance: EjemploBundleAtender
InstanceOf: BundleAtenderLE
Usage: #example
Title: "Bundle Evento de Atender"
Description: "Bundle Evento de Atender"

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

* entry[patient].fullUrl = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* entry[patient].resource = EjemploPatient

* entry[carePlan].fullUrl = "http://acme.com/ehr/fhir/CarePlan/EjemploCarePlanLE"
* entry[carePlan].resource = EjemploCarePlanLE

* entry[questionnaireResponse].fullUrl = "http://acme.com/ehr/fhir/QuestionnaireResponse/EjemploQuestionnaireResponseAtenderLE"
* entry[questionnaireResponse].resource = EjemploQuestionnaireResponseAtenderLE

* entry[observation].fullUrl = "http://acme.com/ehr/fhir/Observation/EjemploObservationAtender"
* entry[observation].resource = EjemploObservationAtender

* entry[conditionHipotesis].fullUrl = "http://acme.com/ehr/fhir/Condition/EjemploCondicionAtenderHipotesisDiagnosticaCodigoLE"
* entry[conditionHipotesis].resource = EjemploCondicionAtenderHipotesisDiagnosticaCodigoLE

* entry[conditionDiagnosticoSospecha].fullUrl = "http://acme.com/ehr/fhir/Condition/EjemploCondicionAtenderDiagnosticoSospechaLE"
* entry[conditionDiagnosticoSospecha].resource = EjemploCondicionAtenderDiagnosticoSospechaLE

* entry[conditionDiagnosticoConfirmacion].fullUrl = "http://acme.com/ehr/fhir/Condition/EjemploCondicionAtenderDiagnosticoConfirmacionLE"
* entry[conditionDiagnosticoConfirmacion].resource = EjemploCondicionAtenderDiagnosticoConfirmacionLE
/*FIN BUNDLE Atender*/

