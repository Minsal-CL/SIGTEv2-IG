Profile: DocumentReferenceLE
Parent: DocumentReference
Id: DocumentReferenceLE
Title: "DocumentReference LE"
Description: "DocumentReference LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// OBLIGATORIOS POR ESTANDAR
* status MS
* content MS
  * attachment MS

* type 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * display 0..1 MS

* type.coding.code = #51851-4
* type.coding.display = "Administrative Note"
* type.text = "Licencia Medica"

* extension contains ExtInteger named CantidadLicenciaMédica 1..1 MS