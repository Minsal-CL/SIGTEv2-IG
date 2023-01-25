Profile: CondicionAtender1LE
Parent: Condition
Id: CondicionAtender1LE
Title: "Condicion Atender 1 LE"
Description: "Condicion Atender 1 LE"


//OBLIGATORIO POR ESTANDAR
* subject only Reference(PacienteLE)


* verificationStatus 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
