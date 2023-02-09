Profile: AllergyIntoleranceInicioLE
Parent: AllergyIntolerance
Id: AllergyIntoleranceInicioLE
Title: "AllergyIntolerance Inicio LE"
Description: "AllergyIntolerance Inicio LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* patient 1..1 MS
  * reference 1..1 MS
  * display 0..1 MS
* patient only Reference(PatientLE)
* patient ^short = "Referencia al paciente"
* patient ^definition = "Referencia al paciente"
* patient.reference ^short = "URL del paciente"
* patient.reference ^definition = "URL del paciente"
* patient.display ^short = "Informacion extra o nombre del paciente"
* patient.display ^definition = "Informacion extra o nombre del paciente"

* code 1..1 MS
  * text 1..1 MS

* code.text ^short = "Seccion para identificar la alergia o intolerancia"
