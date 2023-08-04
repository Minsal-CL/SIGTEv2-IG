Profile: CoverageInicioLE
Parent: Coverage
Id: CoverageInicioLE
Title: "Coverage Inicio LE"
Description: "Coverage Inicio LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type 1..1 MS
* type = 	http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP
* status MS 
* status = #active
* class MS
  * type MS
    * coding MS
      * system 0..1 MS
      * code 1..1 MS
* class.type from VSPrevisionCodigo