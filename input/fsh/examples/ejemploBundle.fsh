Instance: EjemploBundle
InstanceOf: BundleInicioLE
Usage: #example
Title: "Ejemplo de Bundle Evento de Inicio"
Description: ""

* type = #message
* meta.lastUpdated = "2023-01-20T14:12:10Z"
* timestamp = "2023-02-09T17:15:22Z"

* entry[messageheader].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/mh1"
* entry[messageheader].resource = EjemploMessageHeader

* entry[servicerequest].fullUrl = "http://acme.com/ehr/fhir/ServiceRequest/ser1"
* entry[servicerequest].resource = EjemploServiceRequest

* entry[encounter].fullUrl = "http://acme.com/ehr/fhir/Encounter/enc1"
* entry[encounter].resource = EjemploEncounter

* entry[appointment].fullUrl = "http://acme.com/ehr/fhir/Appointment/app1"
* entry[appointment].resource = EjemploAppointment

* entry[patient].fullUrl = "http://acme.com/ehr/fhir/Patient/pat1"
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

* entry[practitionerrole].fullUrl = "http://acme.com/ehr/fhir/EjemploPractitionerRole/praR1"
* entry[practitionerrole].resource = EjemploPractitionerRole

* entry[practitioner].fullUrl = "http://acme.com/ehr/fhir/Practitioner/pra1"
* entry[practitioner].resource = EjemploPractitioner

* entry[organization].fullUrl = "http://acme.com/ehr/fhir/Organization/org1"
* entry[organization].resource = EjemploOrganization

