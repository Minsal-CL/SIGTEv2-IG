Instance: EjemploServiceRequest
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento de Inicio"
Description: "ServiceRequest Evento de Inicio"


* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
* priority = #urgent
* intent = #proposal
* extension[FundamentoPriorizacion].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtStringFundamentoPriorizacion"
* extension[FundamentoPriorizacion].valueString = "FundamentoPriorizacion"
* extension[CorrespondeGES].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/SospechaPatologiaGes"
* extension[CorrespondeGES].valueBoolean = true
* extension[ResolutividadAPS].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtBoolResolutividadAPS"
* extension[ResolutividadAPS].valueBoolean = true
* extension[Alergia].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtBoolAlergia"
* extension[Alergia].valueBoolean = false
* extension[OrigenInterconsulta].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/OrigenInterconsulta"
* extension[OrigenInterconsulta].valueCodeableConcept.coding.code = #1
* extension[OrigenInterconsulta].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSinterconsulta"
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #1
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEstadoInterconsulta"
//* extension[PersonaMayor].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtBoolPersonaMayor"
//* extension[PersonaMayor].valueBoolean = false
* subject.reference = "http://acme.com/ehr/fhir/Patient/EjemploPatient"
* reasonReference = Reference(http://acme.com/ehr/fhir/Observation/obs1)
* encounter = Reference(http://acme.com/ehr/fhir/Encounter/enc1)
* reasonCode.coding.code = #1
* reasonCode.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSDerivadoParaCodigo"
* supportingInfo[0] = Reference(http://acme.com/ehr/fhir/AllergyIntolerance/all1)
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
* extension[FundamentoPriorizacion].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtStringFundamentoPriorizacion"
* extension[FundamentoPriorizacion].valueString = "FundamentoPriorizacion"
* extension[SospechaGES].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/SospechaPatologiaGes"
* extension[SospechaGES].valueBoolean = true
* extension[ResolutividadAPS].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtBoolResolutividadAPS"
* extension[ResolutividadAPS].valueBoolean = true
* extension[Alergia].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtBoolAlergia"
* extension[Alergia].valueBoolean = false
* extension[OrigenInterconsulta].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/OrigenInterconsulta"
* extension[OrigenInterconsulta].valueCodeableConcept.coding.code = #1
//* extension[OrigenInterconsulta].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSinterconsulta"
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #1
//* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/ValueSet/VSEstadoInterconsulta
* extension[Cuidador].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtBoolCuidador"
* extension[Cuidador].valueBoolean = true
* extension[DocAcreditacionCuidadorCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/DocAcreditacionCuidadorCodigoLE"
* extension[DocAcreditacionCuidadorCodigo].valueCodeableConcept.coding.code = #1
//* extension[DocAcreditacionCuidadorCodigo].valueCodeableConcept.coding.system = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/ValueSet/VSDocAcreditacionCuidador
* extension[PresentaDiscapacidad].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtBoolPresentaDiscapacidad"
* extension[PresentaDiscapacidad].valueBoolean = false
//* extension[PersonaMayor].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtBoolPersonaMayor"
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
* extension[EspecialidadMedicaDestinoCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/EspecialidadMedicaDestinoCodigo"
* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #3
* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEspecialidadMed"
* extension[SubEspecialidadMedicaDestinoCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/SubEspecialidadMedicaDestinoCodigo"
* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #4
* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEspecialidadMed"
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #2
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEstadoInterconsulta"
* locationCode.text = "Motivo derivación"
* locationCode.coding.code = #1
* code = http://snomed.info/sct#758598006
* locationCode.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSDestinoReferenciaCodigo"
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
* extension[MotivoCierreInterconsulta].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/MotivoCierreInterconsulta"
* extension[MotivoCierreInterconsulta].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSMotivoCierreInterconsulta#2
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #7
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEstadoInterconsulta"

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
* doNotPerform.extension[MotivoNoPertinenciaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/MotivoNoPertinenciaCodigo"
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSMotivoNoPertinenciaCodigo#1
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.text = "Texto libre"
* priority = #routine
* extension[RequiereExamen].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtBoolRequiereExamen"
* extension[RequiereExamen].valueBoolean = true
* extension[PertinenciaInterconsulta].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/PertinenciaInterconsulta"
* extension[PertinenciaInterconsulta].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSPertinenciaInterconsulta#1
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #3
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEstadoInterconsulta"
* extension[EspecialidadMedicaDestinoCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/EspecialidadMedicaDestinoCodigo"
* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #3
* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEspecialidadMed"
* extension[SubEspecialidadMedicaDestinoCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/SubEspecialidadMedicaDestinoCodigo"
* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #4
* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEspecialidadMed"
* category.coding.code = #1
* category.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSModalidadAtencionCodigo"
* category.coding.display = "Presencial"
* performer = Reference(http://acme.com/ehr/fhir/PractitionerRole/revisar)
* supportingInfo[Examen] = Reference(http://acme.com/ehr/fhir/ServiceRequest/examen)

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
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #5
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEstadoInterconsulta"
/*
* doNotPerform.extension[MotivoNoPertinenciaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/MotivoNoPertinenciaCodigo"
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.coding.code = #1
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.text = "Texto libre"
* priority = #routine
* extension[RequiereExamen].valueBoolean = true
* category.coding.code = #1
* extension[PertinenciaInterconsulta].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/PertinenciaInterconsulta"
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
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #6
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEstadoInterconsulta"
* extension[DestinoAtencionCodigo].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSDestinoAtencionCodigo#1
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
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #4
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEstadoInterconsulta"
/*EJEMPLO PARA BUNDLE PRIORIZAR*/


/*EJEMPLO EXAMEN*/
Instance: EjemploServiceRequestExamen
InstanceOf: ServiceRequestExamenLE
Usage: #example
Title: "ServiceRequest Examen"
Description: "ServiceRequest Examen"


* identifier.value = "dec791f8-406c-11ee-be56-0242ac120002"
* status = #draft
* intent = #proposal
* requester = Reference(http://acme.com/ehr/fhir/Practitioner/revisar)
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
* occurrenceDateTime = "2022-01-20T13:50:20Z"
* reasonCode.text = "Descartar enfermedad metastásica."
* note.text = "Realizar sin uso de medio de contaste por mala función renal."
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/examen)
* code.coding.code = #24627-2
* code.coding.system = "http://loinc.org"
* code.text = "TC de tórax"
