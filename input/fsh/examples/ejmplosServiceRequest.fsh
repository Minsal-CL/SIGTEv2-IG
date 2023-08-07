Instance: EjemploServiceRequest
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento de Inicio"
Description: "ServiceRequest Evento de Inicio"


* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
* priority = #urgent
* intent = #proposal
* extension[FundamentoPriorizacion].url = "http://minsal.cl/listaespera/StructureDefinition/ExtStringFundamentoPriorizacion"
* extension[FundamentoPriorizacion].valueString = "FundamentoPriorizacion"
* extension[CorrespondeGES].url = "http://minsal.cl/listaespera/StructureDefinition/SospechaPatologiaGes"
* extension[CorrespondeGES].valueBoolean = true
* extension[ResolutividadAPS].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolResolutividadAPS"
* extension[ResolutividadAPS].valueBoolean = true
* extension[Alergia].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolAlergia"
* extension[Alergia].valueBoolean = false
* extension[OrigenInterconsulta].url = "http://minsal.cl/listaespera/StructureDefinition/OrigenInterconsulta"
* extension[OrigenInterconsulta].valueCodeableConcept.coding.code = #1
* extension[OrigenInterconsulta].valueCodeableConcept.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSinterconsulta"
* extension[EstadoInterconsultaCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #1
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSEstadoInterconsulta"
//* extension[PersonaMayor].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolPersonaMayor"
//* extension[PersonaMayor].valueBoolean = false
* subject.reference = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* reasonReference = Reference(http://acme.com/ehr/fhir/Observation/obs1)
* encounter = Reference(http://acme.com/ehr/fhir/Encounter/enc1)
* reasonCode.coding.code = #1
* reasonCode.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSDerivadoParaCodigo"
* supportingInfo[0] = Reference(http://acme.com/ehr/fhir/Appointment/app1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/AllergyIntolerance/all1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/con1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Observvation/obs2)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/con3)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Observation/obs3)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/DocumentReference/doc1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Coverage/cov1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/QuestionnaireResponse/que1)


/*

Instance: EjemploServiceRequest2
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest 2"
Description: "ServiceRequest 2"

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
* subject.reference = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* reasonReference = Reference(http://acme.com/ehr/fhir/Observation/obs1)
* encounter = Reference(http://acme.com/ehr/fhir/Encounter/enc1)
* reasonCode = http://terminology.cens.cl/codigosDeis/motivoInterconsulta#1 "confirmacion"
* supportingInfo[0] = Reference(http://acme.com/ehr/fhir/Appointment/app1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/QuestionnaireResponse/que1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/AllergyIntolerance/all1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/cond1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/cond2)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/cond3)

*/


/*EJEMPLO PARA BUNDLE REFERENCIA*/
Instance: EjemploServiceRequestReferenciada
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento de Referenciada"
Description: "ServiceRequest Evento de Referenciada"

* status = #draft
* intent = #proposal
* subject.reference = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "1"
* extension[EspecialidadMedicaDestinoCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/EspecialidadMedicaDestinoCodigo"
* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #3
* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSEspecialidadMed"
* extension[SubEspecialidadMedicaDestinoCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/SubEspecialidadMedicaDestinoCodigo"
* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #4
* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSEspecialidadMed"
* extension[EstadoInterconsultaCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #2
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSEstadoInterconsulta"
* locationCode.text = "Motivo derivación"
* locationCode.coding.code = #1
* code = http://snomed.info/sct#758598006
* locationCode.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSDestinoReferenciaCodigo"
* performer = Reference(http://acme.com/ehr/fhir/PractitionerRole/referenciaAtendedor)
/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLO PARA BUNDLE TERMINAR*/
Instance: EjemploServiceRequestTerminar
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento de Terminar"
Description: "ServiceRequest Evento de Terminar"

* status = #draft
* intent = #proposal
* subject.reference = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "1"
* extension[MotivoCierreInterconsulta].url = "http://minsal.cl/listaespera/StructureDefinition/MotivoCierreInterconsulta"
* extension[MotivoCierreInterconsulta].valueCodeableConcept.coding = http://minsal.cl/listaespera/CodeSystem/CSMotivoCierreInterconsulta#2

/*FIN PARA BUNDLE TERMINAR*/


/*EJEMPLO PARA BUNDLE REVISAR*/
Instance: EjemploServiceRequestRevisar
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento Revisar"
Description: "ServiceRequest Evento Revisar"

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "1"
* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
//* priority = #urgent
* intent = #proposal
* subject.reference = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* doNotPerform = true
* doNotPerform.extension[MotivoNoPertinenciaCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/MotivoNoPertinenciaCodigo"
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.coding = http://minsal.cl/listaespera/CodeSystem/CSMotivoNoPertinenciaCodigo#1
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.text = "Texto libre"
* priority = #routine
* extension[RequiereExamen].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolRequiereExamen"
* extension[RequiereExamen].valueBoolean = true
* extension[PertinenciaInterconsulta].url = "http://minsal.cl/listaespera/StructureDefinition/PertinenciaInterconsulta"
* extension[PertinenciaInterconsulta].valueCodeableConcept.coding = http://minsal.cl/listaespera/CodeSystem/CSPertinenciaInterconsulta#1
* category.coding.code = #1
* category.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSModalidadAtencionCodigo"
* category.coding.display = "Presencial"


/*EJEMPLO PARA BUNDLE REVISAR*/

/*EJEMPLO PARA BUNDLE Agendar*/
Instance: EjemploServiceRequestAgendar
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento Agendar"
Description: "ServiceRequest Evento Agendar"

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "1"
* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
//* priority = #urgent
* intent = #proposal
* subject.reference = "http://acme.com/ehr/fhir/Patient/EjemploPatient"

/*
* doNotPerform.extension[MotivoNoPertinenciaCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/MotivoNoPertinenciaCodigo"
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.coding.code = #1
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.text = "Texto libre"
* priority = #routine
* extension[RequiereExamen].valueBoolean = true
* category.coding.code = #1
* extension[PertinenciaInterconsulta].url = "http://minsal.cl/listaespera/StructureDefinition/PertinenciaInterconsulta"
* extension[PertinenciaInterconsulta].valueCodeableConcept.coding.code = #1
*/
/*EJEMPLO PARA BUNDLE Agendar*/


/*EJEMPLO PARA BUNDLE Atender*/
Instance: EjemploServiceRequestAtender
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento Atender"
Description: "ServiceRequest Evento Atender"

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "323121"
* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
* intent = #proposal
* subject.reference = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* performer.reference = "http://acme.com/ehr/fhir/PractitionerRole/atender"

* extension[DestinoAtencionCodigo].valueCodeableConcept.coding = http://minsal.cl/listaespera/CodeSystem/CSDestinoAtencionCodigo#1
/*EJEMPLO PARA BUNDLE REVISAR*/


/*EJEMPLO PARA BUNDLE PRIORIZAR*/
Instance: EjemploServiceRequestPriorizar
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento Priorizar"
Description: "ServiceRequest Evento Priorizar"

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "323121"
* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
* priority = #urgent
* intent = #proposal
* subject.reference = "http://acme.com/ehr/fhir/Patient/EjemploPatient"

/*EJEMPLO PARA BUNDLE PRIORIZAR*/