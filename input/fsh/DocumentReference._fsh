Profile: DocumentReferenceIniciarLE
Parent: DocumentReference
Id: DocumentReferenceIniciarLE
Title: "DocumentReference Iniciar LE"
Description: "DocumentReference Iniciar LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* type 1..1 MS
* type ^short = "Documento que acredita calidad de cuidadora"
  * coding 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system 0..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual definida por el sistema"
  * text 0..1 MS
  * text ^short = "Representación textual del documento"
* type from VSDocAcreditacionCuidador

* status MS 
* status = #current

* content MS
* content ^short = "Documento referenciado"
  * attachment MS
  * attachment ^short = "Donde se accede al documento"
    * title 1..1 MS
    * title ^short = "Etiqueta para mostrar el lugar de los datos"
    * url 1..1 MS
    * url ^short = "URL donde se puede encontrar el documento"