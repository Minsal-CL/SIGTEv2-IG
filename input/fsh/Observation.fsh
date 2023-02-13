Profile: ObservationInicioLE
Parent: Observation
Id: ObservationInicioLE
Title: "Observation Inicio LE"
Description: "Observation Inicio LE, recurso que permite agregar los examenes en el evento de inicio."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft


* valueString 1..1 MS
* status 1..1 MS
* status = #registered

* code 1..1 MS
  * text 1..1 MS

* code
  * text = #examenes



//code.CodeableConcept.text=examenes
//type.codeableConcept.text=examenes realizados
//status=registered"