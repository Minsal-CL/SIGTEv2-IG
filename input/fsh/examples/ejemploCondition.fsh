Instance: EjemploCondition
InstanceOf: ConditionInicioDiagnosticoLE
Usage: #example
Title: "Condition Diagnóstico Sospecha Evento Iniciar"
Description: "Condition Diagnóstico Sospecha Evento Iniciar"

* code = http://diagnosticos.cl/uno#394887005 "sospecha de insuficiencia cardíaca (situación)"
* code.text = "Posible insuficiencia cardíaca, requiere evaluación cardiologo"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category.text = "diagnostico"
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* severity = http://snomed.info/sct#6736007

Instance: EjemploConditionAtender
InstanceOf: ConditionInicioDiagnosticoLE
Usage: #example
Title: "Condition Diagnóstico Sospecha Evento Iniciar"
Description: "Condition Diagnóstico Sospecha Evento Iniciar"

* code = http://diagnosticos.cl/uno#1231984 "Insuficiencia Cardiaca (diagnóstico)"
* code.text = "Insuficiencia Cardiaca"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category.text = "diagnostico"
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* severity = http://snomed.info/sct#6736007

Instance: EjemploConditionGES
InstanceOf: ConditionInicioGesLE
Usage: #example
Title: "Patología GES (número)"
Description: "Patología GES (número)"

* code = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSSospechaPatologiaGes#A000
* code.text = "SospechaPatologiaGesGlosa"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* category.text = "sospechaGes"
* subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active

// Instance: EjemploCondicionAtenderHipotesisDiagnosticaCodigoLE
// InstanceOf: CondicionAtenderHipotesisDiagnosticaCodigoLE
// Usage: #example
// Title: "Condicion Atender Hipotesis Diagnostica Codigo Evento Atender"
// Description: "Condicion Atender Hipotesis Diagnostica Codigo Evento Atender"

// * verificationStatus.coding = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
// * subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
// * code.coding.code = #1
// * code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSHipotesisDiagnosticaCodigo"


// Instance: EjemploCondicionAtenderDiagnosticoSospechaLE
// InstanceOf: CondicionAtenderDiagnosticoSospechaLE
// Usage: #example
// Title: "Condicion Atender Diagnostico Sospecha Evento Atender"
// Description: "Condicion Atender Diagnostico Sospecha Evento Atender"

// * code = http://diagnosticos.cl/uno#1 "Diagnostico1"
// * code.text = "Diagnostico1"
// * subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)

// * verificationStatus.coding = http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed

// Instance: EjemploCondicionAtenderDiagnosticoConfirmacionLE
// InstanceOf: CondicionAtenderDiagnosticoConfirmacionLE
// Usage: #example
// Title: "Condicion Atender Diagnostico Confirmacion Evento Atender"
// Description: "Condicion Atender Diagnostico Confirmacion Evento Atender"

// * code = http://diagnosticos.cl/uno#1 "Insuficiencia Cardiaca"
// * code.text = "Insuficiencia Cardiaca"
// * subject = Reference(EjemploPatient) "Anibal Diaz Cortés"
