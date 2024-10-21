Instance: AtencionEjemplo
InstanceOf: EncounterAtenderLE
Usage: #example
Title: "Ejemplo de un Encuentro"
Description: "Es un ejemplo de un encuentro que se realiza en al finalizar el evento atender"


* extension[PertinenciaAtencionBox] = ExtensionPertinenciaAtencionBoxEj1
* identifier
  * value = "123"
* status = #finished
* class = CSModalidadAtencionCodigo#1 "Presencial"
* type
  * coding = CSTipoConsulta#1 "Nueva"
* subject = Reference(EjemploPatientLE)
* basedOn = Reference(EjemploSolicitudInterconsultaFinalizada)
* participant
  * individual = Reference(PractitionerRoleAtendedor)
* period
  * start = "2024-02-22T08:00:00-03:00"
  * end = "2024-02-22T08:30:00-03:00"
* diagnosis
  * condition = Reference(ConditionAtencionejemplo)