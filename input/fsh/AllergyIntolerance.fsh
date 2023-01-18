Profile: AllergyIntoleranceLE
Parent: AllergyIntolerance
Id: AllergyIntoleranceLE
Title: "AllergyIntoleranceLE"
Description: "AllergyIntoleranceLE"

* patient 1..1 MS
  * reference 1..1 MS
  * display 0..1 MS
* patient only Reference(PacienteLE)
* patient ^short = "Referencia al paciente"
* patient ^definition = "Referencia al paciente"
* patient.reference ^short = "URL del paciente"
* patient.reference ^definition = "URL del paciente"
* patient.display ^short = "Informacion extra o nombre del paciente"
* patient.display ^definition = "Informacion extra o nombre del paciente"

* code 1..1 MS
  * text 1..1 MS

* code.text ^short = "Seccion para identificar la alergia o intolerancia"
* code.coding.system ^short = "En"
* code.coding.system  ^definition = "aaa"
* code.coding.code ^short = "aaaa"
* code.coding.code ^definition = "aaaa"
* code.coding.display ^short = "aaa"
* code.coding.display ^definition = "aaa"