Profile: DocumentReferenceLE
Parent: DocumentReference
Id: DocumentReferenceLE
Title: "Document Reference LE"
Description: "Document Reference LE"

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