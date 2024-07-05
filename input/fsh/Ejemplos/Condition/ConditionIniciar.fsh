Instance: ConditionInicialEjemplo
InstanceOf: ConditionDiagnosticoLE
Usage: #example
Title: "Ejemplo Condition Inicial"
Description: "Ejemplo de una condición como motivo de interconsulta"

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
  * coding = http://snomed.info/sct#165865000 "Adrenal antibody detected"
  * text = "anticuerpos contra glándulas suprarrenales detectados "

* subject = Reference(EjemploPatientLE)

* encounter = Reference(EncounterIniciarEjemplo)
