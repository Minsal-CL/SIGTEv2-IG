Instance: EjemploSolicitudExamen
InstanceOf: ServiceRequestExamenLE
Usage: #example
Title: "Ejemplo de una Solicitud de Examen"
Description: "Ejemplo de la solicitud realizada junto a una interconsulta"

* basedOn = Reference(EjemploSolicitudInterconsultaFinalizada)
* status = #draft
* intent = #order
* code 
  * coding = http://loinc.org#2857-1 "Ag específico de próstata: Suero o Plasma : Punto temporal: Concentración de masa: Cuantitativo:"
  * text = "Antigeno Prostático Específico en Suero o Plasma"
* subject = Reference(EjemploPatientLE)
* authoredOn = "2024-01-17T16:00:00-03:00"
* occurrenceDateTime = "2024-01-19T16:00:00-03:00"
* requester = Reference(PractitionerProfesionalLEEjemplo)
* reasonCode
  * coding = http://snomed.info/sct#414205003
  * text = "antecedente familiar de neoplasia maligna de próstata"
* note
  * text = "paciente con APE elevado en 2022, se solicita examen vigente previo a atención con especialidad"
