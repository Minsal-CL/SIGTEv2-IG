Profile: CondicionInicio3LE
Parent: Condition
Id: CondicionInicio3LE
Title: "Condicion Inicio 3 LE"
Description: "Condicion Inicio 3 LE"

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