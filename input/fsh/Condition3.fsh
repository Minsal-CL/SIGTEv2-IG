Profile: ConditionIniciarGesLE
Parent: Condition
Id: ConditionIniciarGesLE
Title: "Condition GES"
Description: "Condition GES"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)
* subject 1..1 MS
* subject ^short = "Paciente con la patología"

* code 1..1 MS
  * coding 1..1 MS
  * coding ^short = "Código definido por un sistema terminológico"
    * system 1..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual definida por el sistema terminológico"
  * text 0..1 MS 
  * text ^short = "Representación textual del concepto"
* code ^short = "Código para la Patología ges"
* code from VSProblemaGES




* category 1..1 MS
  * coding 1..1 MS
  * coding ^short = "Código definido por un sistema terminológico"
    * system 1..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * system = #http://terminology.hl7.org/CodeSystem/condition-category
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * code = #problem-list-item
    * display 0..1 MS
    * display ^short = "Representación visual definida por el sistema terminológico"
  * text 1..1 MS
  * text = #sospechaGes
* category ^short = ""