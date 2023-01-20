Profile: CondicionAtenderLE3
Parent: Condition
Id: CondicionAtenderLE3
Title: "CondicionAtenderLE3"
Description: "CondicionAtenderLE3"

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PacienteLE)

* code 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 1..1 MS

* code.coding.code from VSTipoCodDiagnostica

* verificationStatus 1..1 MS
  * coding 1..1 MS
    * system 0..1 MS
    * code 1..1 MS
    * display 0..1 MS
  
* verificationStatus.coding.code = #confirmed