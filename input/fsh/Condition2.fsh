Profile: ConditionInicioIndiceComorbilidadLE
Parent: Condition
Id: ConditionInicioIndiceComorbilidadLE
Title: "Condition Inicio Indice Comorbilidad LE"
Description: "Condicion Inicio 2 LE recurso que se utiliza para indicar el índice de comorbilidad de un paciente."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)



* code 1..1 MS
  * coding 1..1 MS
    * system 0..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS

* code from VSIndicecomorbilidad

//* code.coding.system = #http://id.who.int/icd/release/11/mms


* category 1..1 MS
  * coding 1..1 MS
    * system 0..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 1..1 MS

* category
  * coding
    * code = #problem-list-item
    * system = #http://terminology.hl7.org/CodeSystem/condition-category
  * text = #"Indice Comorbilidad"

//* note 1..1 MS
