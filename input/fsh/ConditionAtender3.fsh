Profile: CondicionAtenderDiagnosticoConfirmacionLE
Parent: Condition
Id: CondicionAtenderDiagnosticoConfirmacionLE
Title: "Condicion Atender Diagnostico Confirmacion LE"
Description: """
Condicion Atender Diagnostico Confirmacion LE
"""
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PacienteMinsalMPI)

* code 1..1 MS
  * coding 1..1 MS
    * system 0..1 MS
    * code 1..1 MS
    * display 1..1 MS
  * text 0..1 MS


* verificationStatus 0..0