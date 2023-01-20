Profile: CondicionAtenderLE1
Parent: Condition
Id: CondicionAtenderLE1
Title: "CondicionAtenderLE1"
Description: "CondicionAtenderLE1"


//OBLIGATORIO POR ESTANDAR
* subject only Reference(PacienteLE)


* verificationStatus 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
