Profile: CondicionLE1
Parent: Condition
Id: CondicionLE1
Title: "CondicionLE1"
Description: "CondicionLE1"

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PacienteLE)


* code 1..1 MS
  * coding 1..1 MS
    * system 0..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS

* code.coding.code from VSTipoCodDiagnostica


* category 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 1..1 MS

* category
  * coding
    * code = #encounter-diagnosis
    * system = #http://terminology.hl7.org/CodeSystem/condition-category
  * text = #diagnostico

* note 1..1 MS