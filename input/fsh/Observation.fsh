Profile: ObservationLE
Parent: Observation
Id: ObservationLE
Title: "Observation LE"
Description: "Observation LE"


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