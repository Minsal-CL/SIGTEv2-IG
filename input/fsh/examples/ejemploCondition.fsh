Instance: EjemploCondition
InstanceOf: ConditionInicioDiagnosticoSospechaLE
Usage: #example
Title: "Condition Diagnóstico Sospecha Evento de Inicio"
Description: "Condition Diagnóstico Sospecha Evento de Inicio"

* code = http://diagnosticos.cl/uno#1 "Diagnostico1"
* code.text = "DiagnosticoTextoLibreSospecha"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category.text = "diagnostico"
* note.text = "FundamentoDiagnostico"
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)

Instance: EjemploCondition2
InstanceOf: ConditionInicioIndiceComorbilidadLE
Usage: #example
Title: "Condition Índice Comorbilidad Evento de Inicio"
Description: "de Conditio Índice Comorbilidadn Evento de Inicio"

* code = http://minsal.cl/listaespera/CodeSystem/CSIndicecomorbilidad#G1
* code.text = "DiagnosticoTextoLibreSospecha"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* category.text = "Indice Comorbilidad"
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)

Instance: EjemploCondition3
InstanceOf: ConditionInicioSospechaGesLE
Usage: #example
Title: "Condition Sospecha GES Evento de Inicio"
Description: "Condition Inicio Sospechvento de Inicio"

* code = http://minsal.cl/listaespera/CodeSystem/CSSospechaPatologiaGes#A000
* code.text = "SospechaPatologiaGesGlosa"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* category.text = "sospechaGes"
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)


Instance: EjemploCondicionAtenderHipotesisDiagnosticaCodigoLE
InstanceOf: CondicionAtenderHipotesisDiagnosticaCodigoLE
Usage: #example
Title: "Condicion Atender Hipotesis Diagnostica Codigo Evento de atender"
Description: "Condicion Atender Hipotesis Diagnostica Codigo Evento de atender"

* verificationStatus.coding.code = #provisional
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)
* code.coding.code = #1
* code.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSHipotesisDiagnosticaCodigo"


Instance: EjemploCondicionAtenderDiagnosticoSospechaLE
InstanceOf: CondicionAtenderDiagnosticoSospechaLE
Usage: #example
Title: "Condicion Atender Diagnostico Sospecha Evento de Atender"
Description: "Condicion Atender Diagnostico Sospecha Evento de Atender"

* code = http://diagnosticos.cl/uno#1 "Diagnostico1"
* code.text = "Diagnostico1"
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)

* verificationStatus.coding.code = #unconfirmed

Instance: EjemploCondicionAtenderDiagnosticoConfirmacionLE
InstanceOf: CondicionAtenderDiagnosticoConfirmacionLE
Usage: #example
Title: "Condicion Atender Diagnostico Confirmacion Evento de Atender"
Description: "Condicion Atender Diagnostico Confirmacion Evento de Atender"

* code = http://diagnosticos.cl/uno#1 "Diagnostico1"
* code.text = "Diagnostico1"
* subject = Reference(http://acme.com/ehr/fhir/Patient/EjemploPatient)

* verificationStatus.coding.code = #confirmed
