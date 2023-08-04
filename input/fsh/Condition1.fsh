Profile: ConditionInicioDiagnosticoLE
Parent: Condition
Id: ConditionInicioDiagnosticoLE
Title: "Condition Inicio Diagnostico LE"
Description: """
Condicion Inicio 1 LE recurso que se utiliza para indicar el diagnóstico del motivo que origina la interconsulta.

* Para el caso de uso de terminología propia el elemento **code** quedaría de la siguiente forma:
  ```
  "code": {
    "coding": [
      {
        "system": "url fuente",
        "code": "código que representa el diagnóstico",
        "display": "texto que representa el código usado"
      }
    ],
    "text": "representación en texto del diagnóstico"
  }
  ```
"""

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)

* code 1..1 MS
  * coding 1..1 MS
    * system 0..1 MS
    * code 1..1 MS
    * display 1..1 MS
  * text 0..1 MS

// * code from VSTipoCodDiagnostica (extensible)
// * code ^binding.strength = #preferred
// * code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][+].extension[purpose].valueCode = #candidate
// * code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][=].extension[valueSet].valueCanonical = http://snomed.info/sct

// * code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][+].extension[purpose].valueCode = #candidate
// * code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][=].extension[valueSet].valueCanonical = http://hl7.org/fhir/sid/icd-10

// * code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][+].extension[purpose].valueCode = #candidate
// * code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][=].extension[valueSet].valueCanonical = http://id.who.int/icd/release/11/mms

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

* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS