Instance: EjemploServiceRequest
InstanceOf: ServiceRequestLE
Usage: #example
Title: "Ejemplo de Service Request Evento de Inicio"
Description: ""

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "1"
* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
* priority = #urgent
* intent = #proposal
* extension[FundamentoPriorizacion].url = "http://minsal.cl/listaespera/StructureDefinition/ExtStringFundamentoPriorizacion"
* extension[FundamentoPriorizacion].valueString = "FundamentoPriorizacion"
* extension[SospechaGES].url = "http://minsal.cl/listaespera/StructureDefinition/SospechaPatologiaGes"
* extension[SospechaGES].valueBoolean = true
* extension[ResolutividadAPS].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolResolutividadAPS"
* extension[ResolutividadAPS].valueBoolean = true
* extension[Alergia].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolAlergia"
* extension[Alergia].valueBoolean = false
* extension[OrigenInterconsulta].url = "http://minsal.cl/listaespera/StructureDefinition/OrigenInterconsulta"
* extension[OrigenInterconsulta].valueCodeableConcept.coding.code = #1
//* extension[OrigenInterconsulta].valueCodeableConcept.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSinterconsulta"
* extension[EstadoInterconsultaCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #1
//* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = http://minsal.cl/listaespera/ValueSet/VSEstadoInterconsulta
* extension[Cuidador].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolCuidador"
* extension[Cuidador].valueBoolean = true
* extension[DocAcreditacionCuidadorCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/DocAcreditacionCuidadorCodigoLE"
* extension[DocAcreditacionCuidadorCodigo].valueCodeableConcept.coding.code = #1
//* extension[DocAcreditacionCuidadorCodigo].valueCodeableConcept.coding.system = http://minsal.cl/listaespera/ValueSet/VSDocAcreditacionCuidador
* extension[PresentaDiscapacidad].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolPresentaDiscapacidad"
* extension[PresentaDiscapacidad].valueBoolean = false
//* extension[PersonaMayor].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolPersonaMayor"
//* extension[PersonaMayor].valueBoolean = false
* subject.reference = "http://acme.com/ehr/fhir/Patient/pat1"
* reasonReference = Reference(http://acme.com/ehr/fhir/Observation/obs1)
* encounter = Reference(http://acme.com/ehr/fhir/Encounter/enc1)
* reasonCode = http://terminology.cens.cl/codigosDeis/motivoInterconsulta#1 "confirmacion"
* supportingInfo[0] = Reference(http://acme.com/ehr/fhir/Appointment/app1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/QuestionnaireResponse/que1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/AllergyIntolerance/all1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/con1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/con2)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/con3)

Instance: EjemploServiceRequest2
InstanceOf: ServiceRequestLE
Usage: #example
Title: "Ejemplo de Service Request 2"
Description: ""

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "1"
* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
* priority = #urgent
* intent = #proposal
* extension[FundamentoPriorizacion].url = "http://minsal.cl/listaespera/StructureDefinition/ExtStringFundamentoPriorizacion"
* extension[FundamentoPriorizacion].valueString = "FundamentoPriorizacion"
* extension[SospechaGES].url = "http://minsal.cl/listaespera/StructureDefinition/SospechaPatologiaGes"
* extension[SospechaGES].valueBoolean = true
* extension[ResolutividadAPS].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolResolutividadAPS"
* extension[ResolutividadAPS].valueBoolean = true
* extension[Alergia].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolAlergia"
* extension[Alergia].valueBoolean = false
* extension[OrigenInterconsulta].url = "http://minsal.cl/listaespera/StructureDefinition/OrigenInterconsulta"
* extension[OrigenInterconsulta].valueCodeableConcept.coding.code = #1
//* extension[OrigenInterconsulta].valueCodeableConcept.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSinterconsulta"
* extension[EstadoInterconsultaCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #1
//* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = http://minsal.cl/listaespera/ValueSet/VSEstadoInterconsulta
* extension[Cuidador].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolCuidador"
* extension[Cuidador].valueBoolean = true
* extension[DocAcreditacionCuidadorCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/DocAcreditacionCuidadorCodigoLE"
* extension[DocAcreditacionCuidadorCodigo].valueCodeableConcept.coding.code = #1
//* extension[DocAcreditacionCuidadorCodigo].valueCodeableConcept.coding.system = http://minsal.cl/listaespera/ValueSet/VSDocAcreditacionCuidador
* extension[PresentaDiscapacidad].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolPresentaDiscapacidad"
* extension[PresentaDiscapacidad].valueBoolean = false
//* extension[PersonaMayor].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolPersonaMayor"
//* extension[PersonaMayor].valueBoolean = false
* subject.reference = "http://acme.com/ehr/fhir/Patient/pat12"
* reasonReference = Reference(http://acme.com/ehr/fhir/Observation/obs1)
* encounter = Reference(http://acme.com/ehr/fhir/Encounter/enc1)
* reasonCode = http://terminology.cens.cl/codigosDeis/motivoInterconsulta#1 "confirmacion"
* supportingInfo[0] = Reference(http://acme.com/ehr/fhir/Appointment/app1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/QuestionnaireResponse/que1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/AllergyIntolerance/all1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/cond1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/cond2)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/cond3)

