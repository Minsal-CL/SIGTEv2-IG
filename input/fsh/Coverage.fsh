Profile: CoverageLE
Parent: Coverage
Id: CoverageLE
Title: "Coverage LE"
Description: "Coverage LE, recurso que permite saber la previsión de un paciente"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type 0..1 MS
* type from http://terminology.hl7.org/ValueSet/v3-ActCoverageTypeCode
* type ^short = "Categoría de algún plan de salud, como médico o de accidente"
  * coding ^short = "Codigo definido por un sistema terminológico"
    * system ^short = "Identidad del sistema terminológico"
    * code = #HIP
    * code ^short = "Código definido en un sistema terminológico"

* status MS 
* status = #active
* status ^short = "Estado de la previsión, en este caso por defecto es active"

* class MS
* class ^short = "Clasificaciones adicionales"
  * type MS
  * type ^short = "Tipo de previsión"
    * coding MS
    * coding ^short = "Codigos definidos por un sistema terminológico"
      * system 0..1 MS
      * system ^short = "Sistema terminológico, url/uri/uuid"
      * code 1..1 MS
      * code ^short = "Código definido en un sistema terminológico"
* class.type from VSPrevisionCodigo

* beneficiary only Reference(PatientLE)