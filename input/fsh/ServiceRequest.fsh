Profile: ServiceRequestLE
Parent: ServiceRequest
Id: ServiceRequestLE
Title: "ServiceRequest LE"
Description: "ServiceRequest LE recurso utilizado para la representación de los datos de la interconsulta."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* identifier MS
  * value MS
  * value ^short = "Identificador de la Interconsulta"
* identifier ^short = "Identificador de la Interconsulta (Se asigna a nivel central)"

//* identifier 0..1 MS
//* identifier ^short = "Corresponde al Identificador de la Interconsulta. Se asigna desde nivel central."
//* identifier.type from VSTipoIdentificadorSR
//* identifier.type 1..1 MS
//  * coding 1..1 MS
//  * coding ^short = "Códigos definidos por un sistema terminológico"
//    * code 1..1 MS
//    * code ^short = "Código definido en un sistema terminológico"
//    * code = #01
//    * system 0..1 MS
//    * system ^short = "Sistema terminológico, url/uri/uuid"
//    * display 0..1 MS
//    * display ^short = "Representación visual, definida por el sistema terminológico"
//* identifier.value 1..1 MS
//* identifier.value ^short = "Valor del identificador"

// OBLIGATORIOS POR ESTANDAR
* status MS
* status ^short = "Estado de la Interconsulta. Por defecto, se utiliza 'draft'"
* status = #draft

* intent MS
* intent ^short = "Tipo de solicitud" 
* intent = #order

* subject 1..1  MS
* subject ^short = "Paciente a quien se le hace la orden de IC" 

//--de aqui hacia abajo todo es opcional, para que sea generico

* extension contains ExtensionMotivoCierreInterconsulta named MotivoCierreInterconsulta 0..1 MS
* extension contains ExtensionBoolRequiereExamen named RequiereExamen 0..1 MS
* extension contains ExtensionBoolAtencionPreferente named AtencionPreferente 0..1 MS

* extension contains ExtensionBoolResolutividadAPS named ResolutividadAPS 0..1 MS
* extension[ResolutividadAPS] ^short = "Programa de Resolutividad local."

* extension contains ExtensionOrigenInterconsulta named OrigenInterconsulta 0..1 MS
* extension[OrigenInterconsulta] ^short = "Origen de la interconsulta"

* extension contains ExtensionStringFundamentoPriorizacion named FundamentoPriorizacion 0..1 MS
* extension[FundamentoPriorizacion] ^short = "Razones del porque se prioriza esta Interconsulta."

* extension contains ExtensionEstadoInterconsultaCodigoLE named EstadoInterconsultaCodigo 1..1 MS
* extension[EstadoInterconsultaCodigo] ^short = "Estado de la Interconsulta en relación al proceso de negocio."

* extension contains ExtensionEspecialidadMedicaDestinoCodigo named EspecialidadMedicaDestinoCodigo 0..1 MS
* extension[EspecialidadMedicaDestinoCodigo] ^short = "Código de la especialidad médica de destino."

* extension contains ExtensionSubEspecialidadMedicaDestinoCodigo named SubEspecialidadMedicaDestinoCodigo 0..1 MS
* extension[SubEspecialidadMedicaDestinoCodigo] ^short = "Código de la subespecialidad médica de destino"

* extension contains ExtensionPertinenciaInterconsulta named PertinenciaInterconsulta 0..1 MS
* extension[PertinenciaInterconsulta] ^short = "Descripción de la evaluación de pertinencia de la interconsulta"

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
* code from VSServicioRequerido (required)

* subject only Reference(PatientLE)

* encounter only Reference(EncounterIniciarLE)
* encounter ^short = "Referencia al encuentro que da Iniciar a la interconsulta" 
* requester 0..1 MS
* requester ^short = "Rol del médico que solicita la interconsulta"
* requester only Reference(PractitionerRoleLE)

* performer 0..1 MS
* performer ^short = "Rol especialista que resuelve la solicitud de interconsulta"
* performer only Reference(PractitionerRoleLE)

* supportingInfo 0..* MS 
* supportingInfo ^short = "Información clínica adicional"
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice creado para almacenar referencias"
* supportingInfo contains 
   DiagnosticoInicio 0..1 MS 
   and TipoAlergia 0..* MS 
   and IndiceComorbilidad 0..1 MS
   and Cuidador 0..1 MS 
   and Discapacidad 0..1 MS 
   and motivoDerivacion 0..1 MS 
   and SolicitudExamen 0..* MS
   and ResultadoExamen 0..* MS
 //and Prevision 0..1 MS 
 //and ProblemaGES 0..1 MS

* supportingInfo[DiagnosticoInicio] only Reference(ConditionDiagnosticoLE)
* supportingInfo[DiagnosticoInicio] ^short = "Referencia a la condición que especifica el diagnóstico inicial por el cual se emite la IC"
* supportingInfo[IndiceComorbilidad] only Reference(ObservationIndiceComorbilidadLE)
* supportingInfo[IndiceComorbilidad] ^short = "Referencia al indice de comorbilidad"
// * supportingInfo[ProblemaGES] only Reference(ConditionIniciarGesLE)
// * supportingInfo[ProblemaGES] ^short = "Referencia a la condición que especifica si es sospecha de GES"
* supportingInfo[TipoAlergia] only Reference(AllergyIntoleranceIniciarLE)
* supportingInfo[TipoAlergia] ^short = "Referencia  a los tipos de alergia"
* supportingInfo[Cuidador] only Reference(ObservationIniciarCuidadorLE)
* supportingInfo[Cuidador] ^short = "Referencia a la observación de si el paciente es cuidador"
//* supportingInfo[DocCuidador] only Reference(DocumentReferenceIniciarLE)
//* supportingInfo[DocCuidador] ^short = "Referencia al documento que acredita que el paciente es cuidador"
* supportingInfo[Discapacidad] only Reference(ObservationDiscapacidadLE)
* supportingInfo[Discapacidad] ^short = "Referencia a la observación que indica si el paciente tiene discapacidad"
// * supportingInfo[Prevision] only Reference(CoverageLE)
// * supportingInfo[Prevision] ^short = "Referencia a la previsión del paciente"
* supportingInfo[motivoDerivacion] only Reference(QuestionnaireResponseIniciarLE)
* supportingInfo[motivoDerivacion] ^short = "Referencia al motivo de derivación"
* supportingInfo[SolicitudExamen] only Reference(ServiceRequestExamenLE)
* supportingInfo[SolicitudExamen] ^short = "Referencia a las solicitudes de examenes"
* supportingInfo[ResultadoExamen] only Reference(ObservationResultadoExamen)
* supportingInfo[ResultadoExamen] ^short = "Referencia al los resultados de examenes"