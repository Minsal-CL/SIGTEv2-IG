Profile: CondicionAtenderLE2
Parent: Condition
Id: CondicionAtenderLE2
Title: "CondicionAtenderLE2"
Description: "CondicionAtenderLE2"

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
  
* verificationStatus.coding.code = #unconfirmed
