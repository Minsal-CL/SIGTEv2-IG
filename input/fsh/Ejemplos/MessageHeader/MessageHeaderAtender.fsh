Instance: MesssageHeaderAtenderEjemplo
InstanceOf: MessageHeaderLE
Usage: #example
Title: "Ejemplod de Cabecera Mensaje"
Description: "Ejemplo de la cabecera de un mensaje, en este caso del evento atender"

* meta.lastUpdated = "2024-02-22T08:30:00-03:00"
* eventCoding = CSTipoEventoLE#atender "Atender"
* author = Reference(PractitionerRoleAtendedor)
* source
  * software = "SISMaule"
  * endpoint = "llp:10.11.12.13:5432"

* focus[ServiceRequestLE] = Reference(EjemploSolicitudInterconsultaFinalizada)
* focus[EncounterAtenderLE] = Reference(AtencionEjemplo)