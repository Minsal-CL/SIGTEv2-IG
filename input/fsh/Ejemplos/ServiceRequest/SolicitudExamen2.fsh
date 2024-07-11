Instance: AbadrenalEjemplo
InstanceOf: ServiceRequestExamenLE
Usage: #example
Title: "Ejemplo de Solicitud de AbAdrenal"
Description:  "Ejemplo de Solicitud de AbAdrenal como resultado de la atención más un plan de cuidado, para realizar seguimiento"

* basedOn = Reference(EjemploSolicitudInterconsultaFinalizada)
* status = #draft
* intent = #order
* code 
  * coding = http://loinc.org#8059-8
  * text = "Ab adrenal en Sérum"
* subject = Reference(EjemploPatientLE)
* authoredOn = "2024-02-22T08:30:00-03:00"
* requester = Reference(PractitionerProfesionalLEAtendedor)
* reasonCode
  * coding = http://snomed.info/sct#24867002 "Severe adrenal insufficiency"
  * text = "insuficiencia adrenal severa"
* note
  * text = "para dar seguimiento al tratamiento del paciente"