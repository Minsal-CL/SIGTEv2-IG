Instance: EjemploCondition
InstanceOf: ConditionInicioDiagnosticoLE
Usage: #example
Title: "Condition Diagnóstico Sospecha Evento de Inicio"
Description: "Condition Diagnóstico Sospecha Evento de Inicio"

* code = #1 "Diagnostico1"
* code.text = "DiagnosticoTextoLibreSospecha"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category.text = "diagnostico"
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* severity = http://snomed.info/sct#6736007

Instance: EjemploCondition3
InstanceOf: ConditionInicioGesLE
Usage: #example
Title: "Patología GES (número)"
Description: "Patología GES (número)"

* code = http://minsal.cl/listaespera/CodeSystem/CSSospechaPatologiaGes#A000
* code.text = "SospechaPatologiaGesGlosa"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* category.text = "sospechaGes"
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)


// Instance: EjemploCondicionAtenderHipotesisDiagnosticaCodigoLE
// InstanceOf: CondicionAtenderHipotesisDiagnosticaCodigoLE
// Usage: #example
// Title: "Condicion Atender Hipotesis Diagnostica Codigo Evento de atender"
// Description: "Condicion Atender Hipotesis Diagnostica Codigo Evento de atender"

// * verificationStatus.coding = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
// * subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
// * code.coding.code = #1
// * code.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSHipotesisDiagnosticaCodigo"


// Instance: EjemploCondicionAtenderDiagnosticoSospechaLE
// InstanceOf: CondicionAtenderDiagnosticoSospechaLE
// Usage: #example
// Title: "Condicion Atender Diagnostico Sospecha Evento de Atender"
// Description: "Condicion Atender Diagnostico Sospecha Evento de Atender"

// * code = http://diagnosticos.cl/uno#1 "Diagnostico1"
// * code.text = "Diagnostico1"
// * subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)

// * verificationStatus.coding = http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed

Instance: EjemploCondicionAtenderDiagnosticoConfirmacionLE
InstanceOf: CondicionAtenderDiagnosticoConfirmacionLE
Usage: #example
Title: "Condicion Atender Diagnostico Confirmacion Evento de Atender"
Description: "Condicion Atender Diagnostico Confirmacion Evento de Atender"

* code = http://diagnosticos.cl/uno#1 "Diagnostico1"
* code.text = "Diagnostico1"
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
