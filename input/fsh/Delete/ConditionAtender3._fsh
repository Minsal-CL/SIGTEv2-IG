/* Profile: CondicionAtenderDiagnosticoConfirmacionLE
Parent: Condition
Id: CondicionAtenderDiagnosticoConfirmacionLE
Title: "Condicion Atender Diagnostico Confirmacion LE"
Description: """
Condicion Atender Diagnostico Confirmacion LE
"""
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject 1..1 MS 
* subject ^short = "Referencia al paciente"
* subject only Reference(PatientLE)

* code 1..1 MS
  * coding 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system 0..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 1..1 MS
    * display ^short = "Representación visual del concepto definido por el sistema terminológico"
  * text 0..1 MS
  * text ^short = "Representación textual del concepto"
* code ^short = "Problema, condición o diagnostico del paciente"

* verificationStatus 0..0 */