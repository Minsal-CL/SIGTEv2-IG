Instance: EjemploCondition
InstanceOf: ConditionInicioDiagnosticoSospechaLE
Usage: #example
Title: "Ejemplo de Condition1 Evento de Inicio"
Description: "Ejemplo de Condition1 Evento de Inicio"

* code = http://minsal.cl/listaespera/CodeSystem/CSTipoCodDiagnostica#2
* code.text = "DiagnosticoTextoLibreSospecha"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category.text = "diagnostico"
* note.text = "FundamentoDiagnostico"
* subject = Reference(http://acme.com/ehr/fhir/Patient/pat1)

Instance: EjemploCondition2
InstanceOf: ConditionInicioIndiceComorbilidadLE
Usage: #example
Title: "Ejemplo de Condition2 Evento de Inicio"
Description: "Ejemplo de Condition2 Evento de Inicio"

* code = http://minsal.cl/listaespera/CodeSystem/CSIndicecomorbilidad#G1
* code.text = "DiagnosticoTextoLibreSospecha"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* category.text = "Indice Comorbilidad"
* subject = Reference(http://acme.com/ehr/fhir/Patient/pat1)

Instance: EjemploCondition3
InstanceOf: ConditionInicioSospechaGesLE
Usage: #example
Title: "Ejemplo de Condition3 Evento de Inicio"
Description: "Ejemplo de Condition3 Evento de Inicio"

* code = http://minsal.cl/listaespera/CodeSystem/CSSospechaPatologiaGes#A000
* code.text = "SospechaPatologiaGesGlosa"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* category.text = "sospechaGes"
* subject = Reference(http://acme.com/ehr/fhir/Patient/pat1)


Instance: EjemploCondicionAtenderHipotesisDiagnosticaCodigoLE
InstanceOf: CondicionAtenderHipotesisDiagnosticaCodigoLE
Usage: #example
Title: "Ejemplo de CondicionAtenderHipotesisDiagnosticaCodigoLE Evento de atender"
Description: "Ejemplo de CondicionAtenderHipotesisDiagnosticaCodigoLE Evento de atender"

* verificationStatus.coding.code = #provisional
* subject = Reference(http://acme.com/ehr/fhir/Patient/patientLE)


Instance: EjemploCondicionAtenderDiagnosticoSospechaLE
InstanceOf: CondicionAtenderDiagnosticoSospechaLE
Usage: #example
Title: "Ejemplo de CondicionAtenderDiagnosticoSospechaLE Evento de Atender"
Description: "Ejemplo de CondicionAtenderDiagnosticoSospechaLE Evento de Atender"

* code = http://minsal.cl/listaespera/CodeSystem/CSTipoCodDiagnostica#1
* code.text = "CIE11"
* subject = Reference(http://acme.com/ehr/fhir/Patient/patientLE)

* verificationStatus.coding.code = #unconfirmed




Instance: EjemploCondicionAtenderDiagnosticoConfirmacionLE
InstanceOf: ConditionInicioIndiceComorbilidadLE
Usage: #example
Title: "Ejemplo de CondicionAtenderDiagnosticoConfirmacionLE Evento de Atender"
Description: "Ejemplo de CondicionAtenderDiagnosticoConfirmacionLE Evento de Atender"

* code = http://minsal.cl/listaespera/CodeSystem/CSTipoCodDiagnostica#1
* code.text = "CIE11"
* subject = Reference(http://acme.com/ehr/fhir/Patient/patientLE)

* verificationStatus.coding.code = #confirmed

