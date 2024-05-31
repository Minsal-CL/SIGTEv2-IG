Profile: ConditionDiagnosticoLE
Parent: Condition
Id: ConditionDiagnosticoLE
Title: "Condition Diagnostico LE"
Description: "Condicion Diagnostico LE, recurso que se utiliza para indicar el diagnóstico"

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

//OBLIGATORIO POR ESTANDAR
* subject only Reference(PatientLE)
* encounter only Reference(EncounterIniciarLE)
* subject 1..1 MS 
* subject ^short = "Paciente que tiene este diagnóstico"

* code from VSTerminologiasDiag
* code 1..1 MS
  * coding 1..1 MS
  * coding ^short = "Código definido por un sistema terminológico"
    * system 0..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación definida por el sistema terminológico"
  * text 0..1 MS
  * text ^short = "Descripcion en texto libre correspondiente al diagnóstico realizado por el médico solicitante"
* code ^short = "Código correspondiente al diagnóstico realizado por el médico solicitante"

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
  * text ^short = "Representación en texto plano del concepto"
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
    * system 0..1 MS
    * system ^short = "Identidad del sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * display 0..1 MS
    * display ^short = "Representación visual definida por el sistema terminológico"
* severity ^short = "Severidad del diagnóstico, indicada por el médico solicitante"
* severity from http://hl7.org/fhir/ValueSet/condition-severity

