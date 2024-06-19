Profile: EncounterIniciarLE
Parent: Encounter
Id: EncounterIniciarLE
Title: "Encounter Iniciar LE"
Description: "Encounter Iniciar LE recurso que se utiliza para representar el encuentro médico, que representa el encuentro de cuando se solicita la interconsulta."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* extension contains ExtensionConsecuenciaAtencionCodigo named ConsecuenciaAtencionCodigo 0..1 MS
* extension[ConsecuenciaAtencionCodigo] ^short = "Código de la consecuencia de la atención"
* extension[ConsecuenciaAtencionCodigo].valueCodeableConcept.coding.code = #3

* status MS
* status ^short = "Estado actual del encuentro"
* status = #finished

* identifier 1..1 MS
  * value 1..1 MS
  * value ^short = "Valor de registro real"
  // * type 1..1 MS
  // * type ^short = "Tipo de identificador" 
  // * type.coding.code ^short = "El valor DEBE ser FILL"
  // * type.coding.code = #FILL
* identifier ^short = "Id del registro de atención o encuentro del sistema clínico de origen"

* diagnosis 1..*
* diagnosis ^short = "El o los diagnósticos por cual se crea la solicitud de interconsulta"
* diagnosis.condition only Reference(ConditionDiagnosticoLE)
* diagnosis.condition ^short = "Referencia al diagnóstico de origen"

* class ^short = "Modalidad de Atención"
* class from VSModalidadAtencionCodigo

* period 1..1 MS
  * start 1..1 MS
  * start ^short = "Fecha Comienzo del encuentro Atención APS"
  * end 1..1 MS
  * end ^short = "Fecha de término del encuentro Atención APS"
* period ^short = "Fechas de comienzo y término del encuentro Atención APS. El formato queda consignado como YYYY-MM-DDTHH:MMZ"


* subject 1..1 MS
* subject ^short = "Referencia al Paciente que se presentará a la Atención APS"
* subject only Reference(PatientLE)

* participant.individual only Reference(PractitionerRoleLE)