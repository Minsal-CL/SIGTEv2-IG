Profile: EncounterInicioLE
Parent: Encounter
Id: EncounterInicioLE
Title: "Encounter Inicio LE"
Description: "Encounter Inicio LE recurso que se utiliza para representar el encuentro médico, que representa el encuentro de cuando se solicita la interconsulta."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// Obligatorios por estandar
* status MS
* status = #finished

* identifier 1..1 MS
  * value 1..1 MS
  * type 1..1 MS
  * type = #FILL

* diagnosis.condition only Reference(ConditionInicioDiagnosticoLE)
* class from VSModalidadAtencionCodigo
* period 1..1 MS
  * start 1..1 MS
  * start ^short = "Fecha Comienzo del encuentro Atención APS"
  * end 1..1 MS
  * end ^short = "Fecha de término del encuentro Atención APS"


* subject 1..1 MS
* subject only Reference(PacienteMinsalMPI)