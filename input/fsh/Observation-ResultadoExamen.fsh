Profile: ObservationResultadoExamen
Parent: Observation
Id: ObservationResultadoExamen
Title: "Observation Resultado Examen"
Description: "Resultado de examen anterior como antecedente"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* status 1..1 MS
* status ^short = "Estado de la observación, por defecto DEBE ser registered"
* status = #registered

* category 1..1 MS
* category ^short = "Categoría de la observación"
  * coding 1..1 MS
  // * system 1..1 MS
    * system ^short = "Identificador del sistema de codificación"
    * system = "http://terminology.hl7.org/CodeSystem/observation-category"
    * code 1..1 MS
    * code ^short = "Código de la categoría"
    * code = #laboratory

* code 1..1 MS
* code ^short = "Tipo de observación"
* code from CodigoExamen 
  * coding 1..1 MS
    * code 1..1 MS
    * system MS
  * text MS


* subject 1..1 MS
* subject only Reference(PatientLE)

* encounter 1..1 MS
* encounter ^short = "Encuentro del cual nace la observación"
* encounter only Reference(EncounterIniciarLE or EncounterAtenderLE)

* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "Tiempo o momento en que se tomó examen"

* value[x] 1..1 MS 
* value[x] ^short = "Resultado de los examenes realizados"
