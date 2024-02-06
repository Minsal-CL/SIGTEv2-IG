Profile: ObservationInicioLE
Parent: Observation
Id: ObservationInicioLE
Title: "Observation Iniciar LE"
Description: "Observation Iniciar LE, recurso que permite agregar los examenes en el evento iniciar."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft


* valueString 1..1 MS 
* valueString ^short = "Resultado de los examenes realizados (como texto)"
* status 1..1 MS
* status ^short = "Estado de la observación, por defecto DEBE ser registered"
* status = #registered

* code 1..1 MS
* code ^short = "Tipo de observación"
  * text 1..1 MS
  * text ^short = "Representación textual de un concepto, en este caso por defecto es 'examenes'"
  * text = #examenes

//code.CodeableConcept.text=examenes
//type.codeableConcept.text=examenes realizados
//status=registered"