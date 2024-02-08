Profile: ConditionInicioDiagnosticoLE
Parent: Condition
Id: ConditionInicioDiagnosticoLE
Title: "Condition Iniciar Diagnostico LE"
Description: "Condicion Iniciar LE, recurso que se utiliza para indicar el diagnóstico del motivo que origina la interconsulta."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)
* subject 1..1 MS 
* subject ^short = "Paciente que tiene este diagnóstico"

* code 1..1 MS
  * coding 1..1 MS
  * coding ^short = "Código definido por un sistema terminológico"
    * system 0..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 1..1 MS
    * display ^short = "Representación definida por el sistema terminológico"
  * text 0..1 MS
  * text ^short = "Sospecha diagnóstica en texto libre ingresado por el médico"
* code ^short = "Código correspondiente a la sospecha diagnóstica realizada por el médico solicitante"

* category 1..1 MS
  * coding 1..1 MS
  * coding ^short = "Código definido por un sistema terminológico"
    * system 1..1 MS
    * system = #http://terminology.hl7.org/CodeSystem/condition-category
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * code = #encounter-diagnosis
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual definida por el sistema terminológico"
  * text ^short = "Diagnóstico como texto libre"
* category ^short = "Categoría del diagnóstico de origen. Se refiere a un diagnostico  identificado durante el encuentro médico o un problema de salud previamente hablado"

* clinicalStatus 1..1 MS
  * coding 1..1 MS
  * coding ^short = "Código definido por un sistema terminológico"
    * system 1..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * system = #http://terminology.hl7.org/CodeSystem/condition-clinical
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual definida por el sistema terminológico"
* clinicalStatus ^short = "Estado clinico del diagnostico, general (active | inactive) o detallado (recurrence | relapse | remission | resolved)"
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical

* verificationStatus 1..1 MS
  * coding 1..1 MS
  * coding ^short = "Código definido por un sistema terminológico"
    * system 1..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * system = #http://terminology.hl7.org/CodeSystem/condition-ver-status
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual definida por el sistema terminológico"
* verificationStatus ^short = "Estado de verificación del diagnóstico por parte del médico solicitante. Puede ser unconfirmed | provisional | differential | confirmed | refuted | entered-in-error"
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status

* severity 0..1 MS
  * coding 1..1 MS
  * coding ^short = "Código definido por un sistema terminológico"
    * system 1..1 MS
    * system ^short = "Identidad del sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual definida por el sistema terminológico"
* severity ^short = "Severidad del diagnóstico, indicada por el médico solicitante"
* severity from http://hl7.org/fhir/ValueSet/condition-severity