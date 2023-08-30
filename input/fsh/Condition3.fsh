Profile: ConditionInicioGesLE
Parent: Condition
Id: ConditionInicioGesLE
Title: "Patología GES (número)"
Description: "Patología GES (número)"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PacienteMinsalMPI)



* code 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS

* code from VSSospechaPatologiaGes




* category 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 1..1 MS
* category
  * coding
    * code = #problem-list-item
    * system = #http://terminology.hl7.org/CodeSystem/condition-category
  * text = #sospechaGes