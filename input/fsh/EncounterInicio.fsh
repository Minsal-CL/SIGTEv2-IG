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



* identifier.type 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * code = #"IdConsultaAPS"
    * system 1..1 MS
    * display 0..1 MS
* identifier.value 1..1 MS

* diagnosis.condition only Reference(ConditionInicioDiagnosticoSospechaLE)

* appointment 1..1 MS
* appointment only Reference(AppointmentInicioLE)

* subject 1..1 MS
* subject only Reference(PatientLE)