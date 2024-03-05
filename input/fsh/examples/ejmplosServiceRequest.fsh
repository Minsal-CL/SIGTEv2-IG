Instance: EjemploServiceRequest
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento Iniciar"
Description: "ServiceRequest Evento Iniciar"


* authoredOn = "2022-01-20T13:50:20Z"
* status = #draft
* priority = #urgent
* intent = #order
* extension[FundamentoPriorizacion].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtStringFundamentoPriorizacion"
* extension[FundamentoPriorizacion].valueString = "FundamentoPriorizacion"
* extension[CorrespondeGES].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SospechaPatologiaGes"
* extension[CorrespondeGES].valueBoolean = true
* extension[ResolutividadAPS].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtBoolResolutividadAPS"
* extension[ResolutividadAPS].valueBoolean = true
* extension[Alergia].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtBoolAlergia"
* extension[Alergia].valueBoolean = false
* extension[OrigenInterconsulta].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/OrigenInterconsulta"
* extension[OrigenInterconsulta].valueCodeableConcept.coding.code = #1
* extension[OrigenInterconsulta].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSinterconsulta"
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #1
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta"
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* encounter = Reference(EjemploEncounter) "Presencial 2023-10-25 09:00:00 --> 2023-10-25 09:20:00"
* authoredOn = "2022-10-25T09:10:20Z"
* reasonCode = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo#1
* performer = Reference(EjemploPractitionerRole)
* reasonReference = Reference(EjemploObservation) "No presenta exámen"
* supportingInfo[DiagnosticoSospecha] = Reference(EjemploCondition)  "Posible insuficiencia cardiaca, requiere evaluación cardiologo"
* supportingInfo[SospechaPatologiaGes] = Reference(EjemploConditionGES) "Sospecha GES, Insuficiencia Cardiaca"
* supportingInfo[TipoAlergia] = Reference(EjemploAllergyIntolerance)  "Alergia a la penicilina"
* supportingInfo[IndiceComorbilidad] = Reference(EjemploObservation2) " Riesgo Leve, 1 condición crónica"
* supportingInfo[Cuidador] = Reference(EjemploObservationCuidador)  "Cuidador para persona en riesgo"
* supportingInfo[Discapacidad] = Reference(EjemploObservationDiscapacidad) "No presenta"
* supportingInfo[DocCuidador] = Reference(EjemploDocumentReference) "Documento que acredita calidad de cuidador/a del Programa Red Local de Apoyos y Cuidados (MIDESOF)"
* supportingInfo[Prevision] = Reference(EjemploCoverage)  "FONASA"
* supportingInfo[motivoDerivacion] = Reference(EjemploQuestionnaireResponseIniciarLE)  "Posible insuficiencia cardiaca"


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
* extension[FundamentoPriorizacion].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtStringFundamentoPriorizacion"
* extension[FundamentoPriorizacion].valueString = "FundamentoPriorizacion"
* extension[SospechaGES].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SospechaPatologiaGes"
* extension[SospechaGES].valueBoolean = true
* extension[ResolutividadAPS].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtBoolResolutividadAPS"
* extension[ResolutividadAPS].valueBoolean = true
* extension[Alergia].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtBoolAlergia"
* extension[Alergia].valueBoolean = false
* extension[OrigenInterconsulta].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/OrigenInterconsulta"
* extension[OrigenInterconsulta].valueCodeableConcept.coding.code = #1
//* extension[OrigenInterconsulta].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSinterconsulta"
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #1
//* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSEstadoInterconsulta
* extension[Cuidador].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtBoolCuidador"
* extension[Cuidador].valueBoolean = true
* extension[DocAcreditacionCuidadorCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/DocAcreditacionCuidadorCodigoLE"
* extension[DocAcreditacionCuidadorCodigo].valueCodeableConcept.coding.code = #1
//* extension[DocAcreditacionCuidadorCodigo].valueCodeableConcept.coding.system = https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSDocAcreditacionCuidador
* extension[PresentaDiscapacidad].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtBoolPresentaDiscapacidad"
* extension[PresentaDiscapacidad].valueBoolean = false
//* extension[PersonaMayor].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtBoolPersonaMayor"
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
Title: "ServiceRequest Evento Referenciar"
Description: "ServiceRequest Evento Referenciar"

* status = #draft
* intent = #order
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "323121"
* extension[EspecialidadMedicaDestinoCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EspecialidadMedicaDestinoCodigo"
* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #3
* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed"
* extension[SubEspecialidadMedicaDestinoCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SubEspecialidadMedicaDestinoCodigo"
* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #4
* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed"
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #2
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta"
* locationCode.text = "Motivo derivación"
* locationCode.coding.code = #1
* code = http://snomed.info/sct#103696004
* locationCode.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDestinoReferenciaCodigo"
* performer = Reference(EjemploPractitionerRoleReferenciadorMHREFERENCIADA)
* supportingInfo[Discapacidad] = Reference(EjemploObservationDiscapacidad) "No presenta discapacidad"
/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLO PARA BUNDLE TERMINAR*/
Instance: EjemploServiceRequestTerminar
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento Terminar"
Description: "ServiceRequest Evento Terminar"

* status = #draft
* intent = #order
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "323121"
* performer = Reference(EjemploPractitionerRoleTerminar)
* extension[MotivoCierreInterconsulta].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MotivoCierreInterconsulta"
* extension[MotivoCierreInterconsulta].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoCierreInterconsulta#2
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #7
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta"
* supportingInfo[Discapacidad] = Reference(EjemploObservationDiscapacidad) "No presenta discapacidad"
/*FIN PARA BUNDLE TERMINAR*/


/*EJEMPLO PARA BUNDLE REVISAR*/
Instance: EjemploServiceRequestRevisar
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento Revisar"
Description: "ServiceRequest Evento Revisar"

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "323121"
* status = #draft
// * priority = #urgent
* intent = #order
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* performer = Reference(EjemploPractitionerRoleRevisar)
* priority = #routine
* extension[RequiereExamen].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtBoolRequiereExamen"
* extension[RequiereExamen].valueBoolean = false
* extension[PertinenciaInterconsulta].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PertinenciaInterconsulta"
* extension[PertinenciaInterconsulta].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPertinenciaInterconsulta#1
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #3
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta"
* extension[EspecialidadMedicaDestinoCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EspecialidadMedicaDestinoCodigo"
* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #3
* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed"
* extension[SubEspecialidadMedicaDestinoCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SubEspecialidadMedicaDestinoCodigo"
* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.code = #4
* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed"
* category.coding.code = #1
* category.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo"
* category.coding.display = "Presencial"
* performer = Reference(EjemploPractitionerRoleRevisar)
* supportingInfo[Discapacidad] = Reference(EjemploObservationDiscapacidad) "No presenta discapacidad"
/*EJEMPLO PARA BUNDLE REVISAR*/

/*EJEMPLO PARA BUNDLE Agendar*/
Instance: EjemploServiceRequestAgendar
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento Agendar"
Description: "ServiceRequest Evento Agendar"

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "323121"
* status = #draft
* priority = #urgent
* intent = #order
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* performer = Reference(EjemploPractitionerRoleAgendarMH)
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #5
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta"
* supportingInfo[Discapacidad] = Reference(EjemploObservationDiscapacidad) "No presenta discapacidad"
/*
* doNotPerform.extension[MotivoNoPertinenciaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MotivoNoPertinenciaCodigo"
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.coding.code = #1
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.text = "Texto libre"
* priority = #routine
* extension[RequiereExamen].valueBoolean = true
* category.coding.code = #1
* extension[PertinenciaInterconsulta].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PertinenciaInterconsulta"
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
* status = #draft
* intent = #order
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* performer = Reference(EjemploPractitionerRoleAtender)
* performer.reference = "http://acme.com/ehr/fhir/PractitionerRole/atender"
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #6
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta"
* extension[ConsecuenciaAtencionCodigo].valueCodeableConcept.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSConsecuenciaAtencionCodigo#1
* supportingInfo[Discapacidad] = Reference(EjemploObservationDiscapacidad) "No presenta discapacidad"
/*EJEMPLO PARA BUNDLE REVISAR*/


/*EJEMPLO PARA BUNDLE PRIORIZAR*/
Instance: EjemploServiceRequestPriorizar
InstanceOf: ServiceRequestLE
Usage: #example
Title: "ServiceRequest Evento Priorizar"
Description: "ServiceRequest Evento Priorizar"

* identifier.type = http://terminology.cens.cl/CodeSystem/listaespera#IdInterconsulta
* identifier.value = "323121"
* status = #draft
* priority = #urgent
* intent = #order
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* performer = Reference(EjemploPractitionerRolePriorizar)
* extension[EstadoInterconsultaCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EstadoInterconsultaCodigoLE"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.code = #4
* extension[EstadoInterconsultaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta"
* extension[AtencionPreferente].valueBoolean = true
* supportingInfo[Discapacidad] = Reference(EjemploObservationDiscapacidad) "No presenta discapacidad"
/*EJEMPLO PARA BUNDLE PRIORIZAR*/


/*EJEMPLO EXAMEN*/
Instance: EjemploServiceRequestExamen
InstanceOf: ServiceRequestExamenLE
Usage: #example
Title: "ServiceRequest Examen"
Description: "ServiceRequest Examen"


* identifier.value = "dec791f8-406c-11ee-be56-0242ac120002"
* status = #draft
* intent = #order
* requester = Reference(EjemploPractitionerRevisar)
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* occurrenceDateTime = "2022-01-20T13:50:20Z"
* reasonCode.text = "Descartar Insuf. Cardiaca grave"
* note.text = "Realizar sin uso de medio de contaste por mala función renal."
* basedOn = Reference(http://acme.com/ehr/fhir/ServiceRequest/examen)
* code.coding.code = #24627-2
* code.coding.system = "http://loinc.org"
* code.text = "TC de tórax"
