Profile: DocumentReferenceInicioLE
Parent: DocumentReference
Id: DocumentReferenceInicioLE
Title: "DocumentReference Inicio LE"
Description: "DocumentReference Inicio LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type 1..1 MS
  * coding 1..1 MS
    * system 0..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS

* type from VSDocAcreditacionCuidador
* status MS 
* status = #current
* content MS
  * attachment MS
    * title 1..1 MS
    * url 1..1 MS