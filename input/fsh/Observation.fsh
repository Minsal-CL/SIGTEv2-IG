Profile: ObservationLE
Parent: Observation
Id: ObservationLE
Title: "ObservationLE"
Description: "ObservationLE"


* valueString 1..1 MS
* status 1..1 MS
* status = #registered

* code 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 1..1 MS
  * text 0..1 MS

//* code.te

* code
  * text = "examenes"



//code.CodeableConcept.text=examenes
//type.codeableConcept.text=examenes realizados
//status=registered"