Profile: AllergyIntoleranceIniciarLE
Parent: CoreAlergiaIntCl
Id: AllergyIntoleranceIniciarLE
Title: "AllergyIntolerance Iniciar LE"
Description: "AllergyIntolerance Iniciar LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// * obeys ait-1 and ait-2

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* clinicalStatus MS
  * ^short = "active | inactive | resolved"
  * ^definition = "Estado clínico de la alergía o la intolerancia"
* verificationStatus MS
  * ^short = "unconfirmed | confirmed | refuted | entered-in-error"
  * ^definition = "Estado de verificación de la alergía o la intolerancia"

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
* code from http://hl7.org/fhir/ValueSet/allergyintolerance-code

* code.coding 1..1 MS
  * code 1..1 MS
  * system MS
  * display MS
* code ^short = "Seccion para identificar la alergia o intolerancia del paciente"
  * text 1..1 MS
  * text ^short = "Alergia del paciente"  

// Invariant: ait-1
// Description: "AllergyIntolerance.clinicalStatus DEBE estar presente si verificationStatus no es 'entered-in-error.'"
// Expression: "verificationStatus.coding.where(system = 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification' and code = 'entered-in-error').exists() or clinicalStatus.exists()"
// Severity: #error

// Invariant: ait-2
// Description: "AllergyIntolerance.clinicalStatus NO DEBE estar presente si  verificationStatus es 'entered-in-error'"
// Expression: "verificationStatus.coding.where(system = 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification' and code = 'entered-in-error').empty() or clinicalStatus.empty()"
// Severity: #error