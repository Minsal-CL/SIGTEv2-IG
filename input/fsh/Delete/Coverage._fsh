Profile: CoverageLE
Parent: Coverage
Id: CoverageLE
Title: "Coverage LE"
Description: "Coverage LE, recurso que permite saber la previsión de un paciente"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type 0..1 MS
* type from VSPrevisionCodigo
* type ^short = "Tipo de previsión de salud"
  * coding 1..1 MS
    * code 1..1 MS
    * system 0..1 MS    

* status MS 
* status = #active
* status ^short = "Estado de la previsión, en este caso por defecto es active"

* beneficiary only Reference(PatientLE)
* payor only Reference(PatientLE)
