Profile: ObservationResultadoExamen
Parent: Observation
Id: ObservationResultadoExamen
Title: "Resultado Examen"
Description: "Resultado de examen anterior como antecedente"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft


* value[x] 1..1 MS 
* value[x] ^short = "Resultado de los examenes realizados"

* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "Tiempo o momento en que el valor fue observado"

* status 1..1 MS
* status ^short = "Estado de la observación, por defecto DEBE ser registered"
* status = #registered

* code 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * system MS
* code ^short = "Tipo de observación"
  * text 1..1 MS
  * text ^short = "Representación textual de un concepto, en este caso por defecto es 'examenes'"
  * text = #examenes

* subject 1..1 MS
* subject only Reference(PatientLE)

* encounter 1..1 MS
* encounter ^short = "Encuentro del cual nace la observación"
* encounter only Reference(EncounterIniciarLE or EncounterAtenderLE)

* category 1..1 MS
* category ^short = "Categoría de la observación"
  * coding 1..1 MS
  // * system 1..1 MS
    * system ^short = "Identificador del sistema de codificación"
    * system = "http://terminology.hl7.org/CodeSystem/observation-category"
    * code 1..1 MS
    * code ^short = "Código de la categoría"
    * code = #"laboratory"


//code.CodeableConcept.text=examenes
//type.codeableConcept.text=examenes realizados
//status=registered"