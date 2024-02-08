Profile: EncounterInicioLE
Parent: Encounter
Id: EncounterInicioLE
Title: "Encounter Iniciar LE"
Description: "Encounter Iniciar LE recurso que se utiliza para representar el encuentro médico, que representa el encuentro de cuando se solicita la interconsulta."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// Obligatorios por estandar
* status MS
* status ^short = "Estado actual del encuentro"
* status = #finished

* identifier 1..1 MS
  * value 1..1 MS
  * value ^short = "Valor de registro real"
  * type 1..1 MS
  * type ^short = "Descripción del identificador, por defecto es FILL"
  * type.coding.code = #FILL
* identifier ^short = "Id del registro de atención o encuentro del sistema clínico de origen"

* diagnosis 1..1
* diagnosis.condition only Reference(ConditionInicioDiagnosticoLE)
* diagnosis.condition ^short = "Referencia al diagnóstico, relevante para este encuentro médico"

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