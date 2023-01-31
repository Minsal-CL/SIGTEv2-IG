Instance: EjemploCondition
InstanceOf: CondicionInicio1LE
Usage: #example
Title: "Ejemplo de Condition1 Evento de Inicio"
Description: ""

* code = http://minsal.cl/listaespera/CodeSystem/CSTipoCodDiagnostica#2
* code.text = "DiagnosticoTextoLibreSospecha"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category.text = "diagnostico"
* note.text = "FundamentoDiagnostico"
* subject = Reference(http://acme.com/ehr/fhir/Patient/pat12)

Instance: EjemploCondition2
InstanceOf: CondicionInicio2LE
Usage: #example
Title: "Ejemplo de Condition2 Evento de Inicio"
Description: ""

* code = http://minsal.cl/listaespera/CodeSystem/CSIndicecomorbilidad#G1
* code.text = "DiagnosticoTextoLibreSospecha"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* category.text = "Indice Comorbilidad"
* subject = Reference(http://acme.com/ehr/fhir/Patient/pat12)

Instance: EjemploCondition3
InstanceOf: CondicionInicio3LE
Usage: #example
Title: "Ejemplo de Condition3 Evento de Inicio"
Description: ""

* code = http://minsal.cl/listaespera/CodeSystem/CSSospechaPatologiaGes#A000
* code.text = "SospechaPatologiaGesGlosa"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* category.text = "sospechaGes"
* subject = Reference(http://acme.com/ehr/fhir/Patient/pat12)