Profile: ServiceRequestLE
Parent: ServiceRequest
Id: ServiceRequestLE
Title: "ServiceRequest LE"
Description: "ServiceRequest LE recurso utilizado para la representación de los datos de la interconsulta."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft


* identifier.type 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * code = #IdInterconsulta
    * system 1..1 MS
    * display 0..1 MS
* identifier.type.coding from http://terminology.cens.cl/CodeSystem/listaespera
* identifier.value 1..1 MS

// OBLIGATORIOS POR ESTANDAR
* status MS
* intent MS
* subject MS

//--de aqui hacia abajo todo es opcional, para que sea generico

* extension contains MotivoCierreInterconsulta named MotivoCierreInterconsulta 0..1 MS
* extension contains ExtBoolRequiereExamen named RequiereExamen 0..1 MS

// ServiceRequest Inicio
* extension contains SospechaPatologiaGes named SospechaGES 0..1 MS
* extension contains ExtBoolResolutividadAPS named ResolutividadAPS 0..1 MS
* extension contains ExtBoolAlergia named Alergia 0..1 MS
* extension contains ExtBoolCuidador named Cuidador 0..1 MS
* extension contains ExtBoolPresentaDiscapacidad named PresentaDiscapacidad 0..1 MS
//* extension contains ExtBoolPersonaMayor named PersonaMayor 0..1 MS
* extension contains OrigenInterconsulta named OrigenInterconsulta 0..1 MS
* extension contains ExtStringFundamentoPriorizacion named FundamentoPriorizacion 0..1 MS
* extension contains EstadoInterconsultaCodigoLE named EstadoInterconsultaCodigo 0..1 MS
* extension contains DocAcreditacionCuidadorCodigoLE named DocAcreditacionCuidadorCodigo 0..1 MS
* extension contains EspecialidadMedicaDestinoCodigo named EspecialidadMedicaDestinoCodigo 0..1 MS
* extension contains SubEspecialidadMedicaDestinoCodigo named SubEspecialidadMedicaDestinoCodigo 0..1 MS
* extension contains DestinoAtencionCodigo named DestinoAtencionCodigo 0..1 MS
* extension contains PrevisionCodigoLE named PrevisionCodigo 0..1 MS

* extension contains PertinenciaInterconsulta named PertinenciaInterconsulta 0..1 MS
* extension[FundamentoPriorizacion] ^short = "Fundamente de la Priorización"
* extension[ResolutividadAPS] ^short = "Programa de Resolutividad local"
* extension[Alergia] ^short = "Tiene alergia el paciente"
// fin


* doNotPerform.extension contains MotivoNoPertinenciaCodigo named MotivoNoPertinenciaCodigo 0..1 MS
* doNotPerform 0..1 MS

* authoredOn 0..1 MS
* authoredOn ^short = "Fecha Asigna la Interconsulta"

* reasonCode 0..1 MS

* priority 0..1 MS
* priority ^short = "Pertinencia Interconsulta"

* locationCode 0..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
    * system 1..1 MS
* locationCode from VSDestinoReferenciaCodigo

* category 0..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
    * system 0..1 MS
* category from VSModalidadAtencionCodigo


* code 0..1 MS
  * text 1..1 MS
* code.text = "derivado a especialidad"
* subject only Reference(PatientLE)
* reasonReference only Reference(ObservationInicioLE)
* encounter only Reference(EncounterInicioLE)
//* requester MS
//* requester only Reference(PractitionerRoleLE)

* performer 0..1 MS
* performer only Reference(PractitionerRoleLE)



* supportingInfo 0..* MS 
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice creado para almacenar referencias"
* supportingInfo contains cita 0..1 MS and paciente 0..1 MS and Anamnesis 0..1 MS and DiagnosticoSospecha 0..1 MS 
and SospechaPatologiaGes 0..1 MS and TipoAlergia 0..1 MS and IndiceComorbilidad 0..1 MS 

* supportingInfo[cita] only Reference(AppointmentInicioLE)
//* supportingInfo[paciente] only Reference(PatientLE)
* supportingInfo[Anamnesis] only Reference(QuestionnaireResponseInicioLE)
* supportingInfo[DiagnosticoSospecha] only Reference(ConditionInicioDiagnosticoSospechaLE)
* supportingInfo[IndiceComorbilidad] only Reference(ConditionInicioIndiceComorbilidadLE)
* supportingInfo[SospechaPatologiaGes] only Reference(ConditionInicioSospechaGesLE)
* supportingInfo[TipoAlergia] only Reference(AllergyIntoleranceInicioLE)
