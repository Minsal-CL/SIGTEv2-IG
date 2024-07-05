Instance: MesssageHeaderIniciar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesssageHeader Iniciar"
Description: "Es el ejemplo da la cabecera de un ejemplo de messsage header con tipo iniciar"

* meta.lastUpdated = "2024-01-17T16:00:00+10:00"
* eventCoding = CSTipoEventoLE#iniciar
* author = Reference(PractitionerRoleIniciador)
* source
  * software = "SISMaule"
  * endpoint = "llp:10.11.12.13:5432"

* focus[ServiceRequestLE] = Reference(SolicitudInterconsultaEjemplo)