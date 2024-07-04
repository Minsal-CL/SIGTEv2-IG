Profile: ObservationIndiceComorbilidadLE
Parent: Observation
Id: ObservationIndiceComorbilidadLE
Title: "Indice Comorbilidad LE"
Description: "Observation Iniciar Indice Comorbilidad LE, recurso que se utiliza para indicar el riesgo de un paciente según su índice de comorbilidad"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)
* subject 1..1 MS 
* subject ^short = "Referencia al paciente"

* status = #final
* status from http://hl7.org/fhir/ValueSet/observation-status
* status 1..1 MS

* encounter 0..1 MS
* encounter ^short = "Encuentro del cual nace la observación"
* encounter only Reference(EncounterIniciarLE or EncounterAtenderLE)

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept  ^short = "Riesgo asociado al Índice de comorbilidad"
  * coding 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system 0..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual, definida por el sistema terminológico"
  * text 0..1 MS
  * text ^short = "Representación textual del concepto"
* valueCodeableConcept from VSIndicecomorbilidad

* code 1..1 MS
* code ^short = "Tipo de observación en este caso, el riesgo asociado al índice de comorbilidad"
* code from TipoDeObservacion (extensible)
  * coding 0..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system 0..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * code = #ECICEP
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual, definida por el sistema terminológico"
  * text 0..1 MS
  * text = "Indice Comorbilidad"
  * text ^short = "Representación textual del concepto"
//* code.coding.system = #http://id.who.int/icd/release/11/mms


* category 0..1 MS
* category from http://hl7.org/fhir/ValueSet/observation-category
* category ^short = "Indica la categoría de esta observación, en este caso para indicar el Índice de comobilidad"
  * coding 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system 0..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * system = "http://terminology.hl7.org/CodeSystem/observation-category"
    * code 1..1 MS
    * code = #survey
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual, definida por el sistema terminológico"
  * text 0..1 MS
  * text ^short = "Representación textual del concepto"

