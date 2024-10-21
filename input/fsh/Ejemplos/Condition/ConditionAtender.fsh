Instance: ConditionAtencionejemplo
InstanceOf: ConditionDiagnosticoLE
Usage: #example
Title: "Ejemplo Condición de Atención"
Description: "Ejemplo condición como resultado del evento atender"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* clinicalStatus.text = "Activo"

* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmado"

* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.text = "Diagnostico del encuentro"

* severity
  * coding = http://snomed.info/sct#24484000 "Severe"
  * text = "Severo"

* code
  * coding = http://snomed.info/sct#24867002 "Severe adrenal insufficiency"
  * text = "insuficiencia adrenal severa"

* subject = Reference(EjemploPatientLE)

* encounter = Reference(AtencionEjemplo)