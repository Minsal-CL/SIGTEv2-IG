Profile: CondicionAtender2LE
Parent: Condition
Id: CondicionAtender2LE
Title: "Condicion Atender 2 LE"
Description: "Condicion Atender 2 LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

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
