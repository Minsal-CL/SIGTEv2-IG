Instance: AllergyIntoleranceExample
InstanceOf: AllergyIntoleranceIniciarLE
Usage: #example
Title: "Ejemplo de una Alergía"
Description: "Ejemplo de alergia a castaña de cajú"

* clinicalStatus
  * coding =  http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
  * text = "Activo"

* verificationStatus
  * coding =  http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
  * text = "Confirmado"

* code
  * coding = http://snomed.info/sct#227493005
  * text = "Alergía a castaña de cajú"

* patient = Reference(EjemploPatientLE)
