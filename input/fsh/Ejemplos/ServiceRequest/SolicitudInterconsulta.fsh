Instance: SolicitudInterconsultaEjemplo
InstanceOf: ServiceRequestLE
Usage: #example
Title: "Ejemplo de Solicitud de Interconsulta"
Description: "Ejemplo de la solicitud de Interconsulta para un paciente con necesidad de que sea de endocrinología"

// * extension[MotivoCierreInterconsulta] =  ExtensionMotivoCierreInterconsultaEj1
* extension[RequiereExamen] = ExtensionBoolRequiereExamenEj1
* extension[AtencionPreferente] =  ExtensionBoolAtencionPreferenteEj1
* extension[ResolutividadAPS] = ExtensionBoolResolutividadAPSEj1
* extension[OrigenInterconsulta] = ExtensionOrigenInterconsultaEj1
* extension[FundamentoPriorizacion] = ExtensionStringFundamentoPriorizacionEj1
* extension[EstadoInterconsultaCodigo] = ExtensionEstadoInterconsultaCodigoLEEj1
* extension[EspecialidadMedicaDestinoCodigo] = ExtensionEspecialidadMedicaDestinoCodigoEj1
* extension[SubEspecialidadMedicaDestinoCodigo] = ExtensionSubEspecialidadMedicaDestinoCodigoEj1
//* extension[PertinenciaInterconsulta] = ExtensionPertinenciaInterconsultaEj1

* identifier.value = "123"
* status = #draft
* intent = #order

* category
  * coding = CSModalidadAtencionCodigo#1 "Presencial"

* priority = #routine

* code
  * coding = http://snomed.info/sct#103696004
  * text = "Interconsulta para atención presencial"

* subject = Reference(EjemploPatientLE)
* encounter = Reference(EncounterIniciarEjemplo)
* authoredOn = "2024-12-10T09:00:00Z"
* requester = Reference(PractitionerRoleIniciador)
* locationCode
  * coding =  CSDestinoReferenciaCodigo#1 "Nivel Secundario"
* reasonCode
  * coding = CSDerivadoParaCodigo#1 "Confirmación"

* supportingInfo[DiagnosticoInicio] = Reference(ConditionInicialEjemplo)
* supportingInfo[TipoAlergia] = Reference(AllergyIntoleranceExample)
* supportingInfo[IndiceComorbilidad] = Reference(IndiceConmorbilidadEjemplo)
* supportingInfo[Cuidador] = Reference(EjemploObservationCuidador)
* supportingInfo[Discapacidad] = Reference(EjemploObservationDiscapacidadLE)
* supportingInfo[motivoDerivacion] = Reference(MotivoDerivacionEjemplo)
* supportingInfo[SolicitudExamen] = Reference(SolicitudExamenEjemplo)
* supportingInfo[ResultadoExamen] = Reference(AnticuerpoAdrenal)

// Instance: ExtensionMotivoCierreInterconsultaEj1
// InstanceOf: ExtensionMotivoCierreInterconsulta
// Usage: #inline

// * valueCodeableConcept = CSMotivoCierreInterconsulta#2 "Atención Realizada (1)"

Instance: ExtensionBoolRequiereExamenEj1
InstanceOf: ExtensionBoolRequiereExamen
Usage: #inline

* valueBoolean = true

Instance: ExtensionBoolAtencionPreferenteEj1
InstanceOf: ExtensionBoolAtencionPreferente
Usage: #inline

* valueBoolean = true

Instance: ExtensionBoolResolutividadAPSEj1
InstanceOf: ExtensionBoolResolutividadAPS
Usage: #inline

* valueBoolean = true

Instance: ExtensionOrigenInterconsultaEj1
InstanceOf: ExtensionOrigenInterconsulta
Usage: #inline

* valueCodeableConcept = CSorigenInterconsulta#1 "APS"

Instance: ExtensionStringFundamentoPriorizacionEj1
InstanceOf: ExtensionStringFundamentoPriorizacion 
Usage: #inline

* valueString = "Paciente es jefa de hogar y cuidadora de adulto mayor."

Instance: ExtensionEstadoInterconsultaCodigoLEEj1
InstanceOf: ExtensionEstadoInterconsultaCodigoLE
Usage: #inline

* valueCodeableConcept = CSEstadoInterconsulta#1 "A la espera de referencia"

Instance: ExtensionEspecialidadMedicaDestinoCodigoEj1
InstanceOf: ExtensionEspecialidadMedicaDestinoCodigo
Usage: #inline

* valueCodeableConcept = CSEspecialidadMed#30 "MEDICINA INTERNA"

Instance: ExtensionSubEspecialidadMedicaDestinoCodigoEj1
InstanceOf: ExtensionSubEspecialidadMedicaDestinoCodigo 
Usage: #inline

* valueCodeableConcept = CSEspecialidadMed#14 "ENDOCRINOLOGÍA ADULTO"

// Instance: ExtensionPertinenciaInterconsultaEj1
// InstanceOf: ExtensionPertinenciaInterconsulta
// Usage: #inline

//   * extension[EvaluacionPertinenciaInterconsulta] 
//     * valueCodeableConcept = CSPertinenciaInterconsulta#2 "No Pertinente"
//   * extension[MotivoNoPertinencia]
//     * valueString = "Examenes incompletos y/o desactualizados"