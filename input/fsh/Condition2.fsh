Profile: CondicionInicio2LE
Parent: Condition
Id: CondicionInicio2LE
Title: "Condicion Inicio 2 LE"
Description: "Condicion Inicio 2 LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PacienteLE)



* code 1..1 MS
  * coding 1..1 MS
    * system 0..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS

* code.coding.code from VSIndicecomorbilidad

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

* note 1..1 MS
