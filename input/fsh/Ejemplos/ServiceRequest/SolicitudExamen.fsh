Instance: SolicitudExamenEjemplo
InstanceOf: ServiceRequestExamenLE
Usage: #example
Title: "Ejemplo de una Solicitud de Examen"
Description: "Ejemplo de la solicitud realizada junto a una interconsulta"

* basedOn = Reference(SolicitudInterconsultaEjemplo)
* status = #draft
* intent = #order
* code 
  * coding = http://loinc.org#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
  * text = "Antigeno Prostático Específico en Suero o Plasma"
* subject = Reference(EjemploPatientLE)
* authoredOn = "2013-05-02T16:16:00-07:00"
* requester = Reference(PractitionerProfesionalLEEjemplo)
* reasonCode
  * coding = http://snomed.info/sct#414205003
  * text = "antecedente familiar de neoplasia maligna de próstata"
* note
  * text = "paciente con APE elevado en 2022, se solicita examen vigente previo a atención con especialidad"

