Profile: CoverageInicioLE
Parent: Coverage
Id: CoverageInicioLE
Title: "Coverage Iniciar LE"
Description: "Coverage Iniciar LE, recurso que permite saber la previsión de un paciente"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type 1..1 MS
* type ^short = "Categoría de algún plan de salud, como médico o de accidente"
  * coding ^short = "Codigo definido por un sistema terminológico"
    * system ^short = "Identidad del sistema terminológico"
    * code ^short = "Código definido en un sistema terminológico"
* type = 	http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP

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