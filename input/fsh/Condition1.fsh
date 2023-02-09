Profile: ConditionInicioDiagnosticoSospechaLE
Parent: Condition
Id: ConditionInicioDiagnosticoSospechaLE
Title: "Condition Inicio Diagnostico Sospecha LE"
Description: "Condicion Inicio 1 LE recurso que se utiliza para indicar la sospecha diagnóstica del motivo que origina la interconsulta."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)


* code 1..1 MS
  * coding 1..1 MS
    * system 0..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS

* code.coding.code from VSTipoCodDiagnostica


* category 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 1..1 MS

* category
  * coding
    * code = #encounter-diagnosis
    * system = #http://terminology.hl7.org/CodeSystem/condition-category
  * text = #diagnostico

* note 1..1 MS