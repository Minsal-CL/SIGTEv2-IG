Instance: EjemploServiceRequest
InstanceOf: ServiceRequestLE
Usage: #example
Title: "Ejemplo de Service Request Evento de Inicio"
Description: "Ejemplo de Service Request Evento de Inicio"

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
Description: "Ejemplo de Service Request 2"

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
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/cond1)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/cond2)
* supportingInfo[+] = Reference(http://acme.com/ehr/fhir/Condition/cond3)

/*EJEMPLO PARA BUNDLE REFERENCIA*/
Instance: EjemploServiceRequestReferencia
InstanceOf: ServiceRequestLE
Usage: #example
Title: "Ejemplo de Service Request Evento de Referencia"
Description: "Ejemplo de Service Request Evento de Referencia"

* status = #draft
* intent = #proposal
* subject.reference = "http://acme.com/ehr/fhir/Patient/pat1"
* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "1"
* extension[EspecialidadMedicaDestinoCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/EspecialidadMedicaDestinoCodigo"
* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #1
* extension[SubEspecialidadMedicaDestinoCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/SubEspecialidadMedicaDestinoCodigo"
* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #1
* locationCode.text = "Motivo derivación"
* locationCode.coding.code = #1
* locationCode.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSDestinoReferenciaCodigo"
* performer = Reference(http://acme.com/ehr/fhir/Organization/org2)
/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLO PARA BUNDLE TERMINAR*/
Instance: EjemploServiceRequestTerminar
InstanceOf: ServiceRequestLE
Usage: #example
Title: "Ejemplo de Service Request Evento de Terminar"
Description: "Ejemplo de Service Request Evento de Terminar"

* status = #draft
* intent = #proposal
* subject.reference = "http://acme.com/ehr/fhir/Patient/pat1"
* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "1"
* extension[MotivoCierreInterconsulta].url = "http://minsal.cl/listaespera/StructureDefinition/MotivoCierreInterconsulta"
* extension[MotivoCierreInterconsulta].valueCodeableConcept.coding.code = #2

/*FIN PARA BUNDLE TERMINAR*/


/*EJEMPLO PARA BUNDLE REVISAR*/
Instance: EjemploServiceRequestRevisar
InstanceOf: ServiceRequestLE
Usage: #example
Title: "Ejemplo de Service Request Evento Revisar"
Description: "Ejemplo de Service Request Evento Revisar"

* identifier.type.coding.system = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.type.coding.code = #IdInterconsulta
* identifier.value = "1"
* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
* priority = #urgent
* intent = #proposal
* subject.reference = "http://acme.com/ehr/fhir/Patient/pat1"
* doNotPerform.extension[MotivoNoPertinenciaCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/MotivoNoPertinenciaCodigo"
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.coding.code = #1
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.text = "Texto libre"
* priority = #routine
* extension[RequiereExamen].valueBoolean = true
* category.coding.code = #1
* extension[PertinenciaInterconsulta].url = "http://minsal.cl/listaespera/StructureDefinition/PertinenciaInterconsulta"
* extension[PertinenciaInterconsulta].valueCodeableConcept.coding.code = #1
/*EJEMPLO PARA BUNDLE REVISAR*/

/*EJEMPLO PARA BUNDLE Agendar*/
Instance: EjemploServiceRequestAgendar
InstanceOf: ServiceRequestLE
Usage: #example
Title: "Ejemplo de Service Request Evento Agendar"
Description: "Ejemplo de Service Request Evento Agendar"

* identifier.type.coding.system = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.type.coding.code = #IdInterconsulta
* identifier.value = "1"
* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
* priority = #urgent
* intent = #proposal
* subject.reference = "http://acme.com/ehr/fhir/Patient/pat1"

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
Title: "Ejemplo de Service Request Evento Atender"
Description: "Ejemplo de Service Request Evento Atender"

* identifier.type.coding.system = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.type.coding.code = #IdInterconsulta
* identifier.value = "323121"
* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
* priority = #urgent
* intent = #proposal
* subject.reference = "http://acme.com/ehr/fhir/Patient/pat1"
* extension[DestinoAtencionCodigo].valueCodeableConcept.coding.code = #1



* doNotPerform.extension[MotivoNoPertinenciaCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/MotivoNoPertinenciaCodigo"
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.coding.code = #1
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.text = "Texto libre"
* priority = #routine
* extension[RequiereExamen].valueBoolean = true
* category.coding.code = #1
* extension[PertinenciaInterconsulta].url = "http://minsal.cl/listaespera/StructureDefinition/PertinenciaInterconsulta"
* extension[PertinenciaInterconsulta].valueCodeableConcept.coding.code = #1
/*EJEMPLO PARA BUNDLE REVISAR*/