Profile: ServiceRequestLE
Parent: ServiceRequest
Id: ServiceRequestLE
Title: "ServiceRequest LE"
Description: "ServiceRequest LE recurso utilizado para la representación de los datos de la interconsulta."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* identifier 0..1 MS
* identifier ^short = "Corresponde al Identificador de la Interconsulta. Se asigna desde nivel central."
* identifier.type 1..1 MS
  * coding 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * code = #IdInterconsulta
    * system 0..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * display 0..1 MS
    * display ^short = "Representación visual, definida por el sistema terminológico"
* identifier.type.coding from http://terminology.cens.cl/CodeSystem/listaespera
* identifier.value 1..1 MS
* identifier.value ^short = "Valor del identificador"

// OBLIGATORIOS POR ESTANDAR
* status MS
* status ^short = "Estado de la Interconsulta. Por defecto, se utiliza 'draft'"
* status = #draft

* intent MS
* intent ^short = "Tipo de servicio solicitado" 
* intent = #order

* subject 1..1  MS
* subject ^short = "Paciente a quien se le hace la orden de IC" 

//--de aqui hacia abajo todo es opcional, para que sea generico

* extension contains MotivoCierreInterconsulta named MotivoCierreInterconsulta 0..1 MS
* extension contains ExtBoolRequiereExamen named RequiereExamen 0..1 MS
* extension contains ExtBoolAtencionPreferente named AtencionPreferente 0..1 MS

// ServiceRequest Inicio

* extension contains SospechaPatologiaGes named CorrespondeGES 0..1 MS
* extension[CorrespondeGES] ^short = "Indica si corresponde a GES."

* extension contains ExtBoolResolutividadAPS named ResolutividadAPS 0..1 MS
* extension[ResolutividadAPS] ^short = "Programa de Resolutividad local."

* extension contains ExtBoolAlergia named Alergia 0..1 MS
* extension[Alergia] ^short = "Indica si el paciente tiene alergia(s)."

* extension contains OrigenInterconsulta named OrigenInterconsulta 0..1 MS
* extension[OrigenInterconsulta] ^short = "Origen de la interconsulta"

* extension contains ExtStringFundamentoPriorizacion named FundamentoPriorizacion 0..1 MS
* extension[FundamentoPriorizacion] ^short = " Razones del porque se prioriza esta Interconsulta."

* extension contains EstadoInterconsultaCodigoLE named EstadoInterconsultaCodigo 1..1 MS
* extension[EstadoInterconsultaCodigo] ^short = "Estado de la Interconsulta en relación al proceso de negocio."

* extension contains EspecialidadMedicaDestinoCodigo named EspecialidadMedicaDestinoCodigo 0..1 MS
* extension[EspecialidadMedicaDestinoCodigo] ^short = "Código de la especialidad médica de destino."

* extension contains SubEspecialidadMedicaDestinoCodigo named SubEspecialidadMedicaDestinoCodigo 0..1 MS
* extension[SubEspecialidadMedicaDestinoCodigo] ^short = "Código de la subespecialidad médica de destino."

* extension contains ConsecuenciaAtencionCodigo named ConsecuenciaAtencionCodigo 0..1 MS
* extension[ConsecuenciaAtencionCodigo] ^short = "Código del destino de la atención: Control|Alta|Derivación"

* extension contains PertinenciaInterconsulta named PertinenciaInterconsulta 0..1 MS
* extension[PertinenciaInterconsulta] ^short = "Tipo de pertinencia de la IC: Pertinente|Incompleta|No pertinente."


// fin


* doNotPerform.extension contains MotivoNoPertinenciaCodigo named MotivoNoPertinenciaCodigo 0..1 MS
* doNotPerform 0..1 MS
* doNotPerform ^short = "Si el servicio debiese o no realizarse."
* doNotPerform.extension[MotivoNoPertinenciaCodigo].valueCodeableConcept.text ^short = "Motivo de no pertinencia, como texto libre"

* authoredOn 0..1 MS
* authoredOn ^short = "Fecha en que se solicita la Interconsulta. El formato corresponde a año, mes, día y hora (hh:mm) YYYY-MM-DDTHH:MMZ"

* reasonCode 0..1 MS 
* reasonCode ^short = "Para qué se envia a consulta el paciente."
* reasonCode from VSDerivadoParaCodigo

* priority 0..1 MS
* priority ^short = "Prioridad Recomendada Interconsulta de Origen: routine=normal | urgent=urgente"

* locationCode 0..1 MS
  * coding 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual, definida por el sistema terminológico"
    * system 1..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
* locationCode ^short = "Destino al que se referencia."
* locationCode from VSDestinoReferenciaCodigo

* category 0..1 MS
  * coding 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual, definida por el sistema terminológico"
    * system 0..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
* category ^short = "Modalidad de atención"
* category from VSModalidadAtencionCodigo


* code 0..1 MS
  * coding 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual, definida por el sistema terminológico"
    * system 0..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
* code ^short = "Correspondencia al servicio que se requiere."
* code from VSServicioRequerido

* subject only Reference(PatientLE)
* reasonReference only Reference(ObservationInicioLE)
* reasonReference ^short = "Referencia a la observación"
* encounter only Reference(EncounterInicioLE)
* encounter ^short = "Referencia al encuentro que da inicio a la interconsulta" 
//* requester MS
//* requester only Reference(PractitionerRoleLE)

* performer 0..1 MS
* performer ^short = "Rol del profesional en cada evento"
* performer only Reference(PractitionerRoleLE)



* supportingInfo 0..* MS 
* supportingInfo ^short = "Información clínica adicional"
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice creado para almacenar referencias"
* supportingInfo contains DiagnosticoSospecha 0..1 MS 
and SospechaPatologiaGes 0..1 MS and TipoAlergia 0..1 MS and IndiceComorbilidad 0..1 MS
and Cuidador 0..1 MS and DocCuidador 0..1 MS and Discapacidad 1..1 MS and Prevision 0..1 MS and motivoDerivacion 0..1 MS and Examen 0..1 MS

* supportingInfo[DiagnosticoSospecha] only Reference(ConditionInicioDiagnosticoLE)
* supportingInfo[DiagnosticoSospecha] ^short = "Referencia a la condición que especifica el diagnóstico inicial por el cual se emite la IC"
* supportingInfo[IndiceComorbilidad] only Reference(ObservationInicioIndiceComorbilidadLE)
* supportingInfo[IndiceComorbilidad] ^short = "Referencia al indice de comorbilidad"
* supportingInfo[SospechaPatologiaGes] only Reference(ConditionInicioGesLE)
* supportingInfo[SospechaPatologiaGes] ^short = "Referencia a la condición que especifica si es sospecha de GES"
* supportingInfo[TipoAlergia] only Reference(AllergyIntoleranceInicioLE)
* supportingInfo[TipoAlergia] ^short = "Referencia  a los tipos de alergia"
* supportingInfo[Cuidador] only Reference(ObservationInicioCuidadorLE)
* supportingInfo[Cuidador] ^short = "Referencia a la observación de si el paciente es cuidador"
* supportingInfo[DocCuidador] only Reference(DocumentReferenceInicioLE)
* supportingInfo[DocCuidador] ^short = "Referencia al documento que acredita que el paciente es cuidador"
* supportingInfo[Discapacidad] only Reference(ObservationInicioDiscapacidadLE)
* supportingInfo[Discapacidad] ^short = "Referencia a la observación que indica si el paciente tiene discapacidad"
* supportingInfo[Prevision] only Reference(CoverageInicioLE)
* supportingInfo[Prevision] ^short = "Referencia a la previsión del paciente"
* supportingInfo[motivoDerivacion] only Reference(QuestionnaireResponseInicioLE)
* supportingInfo[motivoDerivacion] ^short = "Referencia al motivo de derivación"
* supportingInfo[Examen] only Reference(ServiceRequestExamenLE)
* supportingInfo[Examen] ^short = "Referencia a los examenes"
