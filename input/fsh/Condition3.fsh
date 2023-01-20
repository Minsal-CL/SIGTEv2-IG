Profile: CondicionLE3
Parent: Condition
Id: CondicionLE3
Title: "CondicionLE3"
Description: "CondicionLE3"

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PacienteLE)



* code 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS

* code.coding.code from VSSospechaPatologiaGes




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