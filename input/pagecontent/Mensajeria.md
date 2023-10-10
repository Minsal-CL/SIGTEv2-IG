
El mecanismo de intercambio definido para las transacciones es [FHIR messaging](https://www.hl7.org/fhir/R4/messaging.html)(Mensajería de FHIR), esto consiste en el intercambio de mensajes entre un emisor y un receptor, emulando en cierta medida la mensajería HL7 v2.

El intercambio de mensajes entre los actores se debe realizar siguiendo las definiciónes de la especificación oficial de FHIR por lo que se supone que soportan la [operación FHIR **$process-message**](https://www.hl7.org/fhir/R4/messageheader-operation-process-message.html)

### Estructura de los Mensajes

* Agrupador de Recursos: Un recurso del tipo **Bundle** del tipo **message**(type=message)
* Cabecera del mensaje: Un recurso del tipo **MessageHeader** con la identificación del [tipo evento](ValueSet-VSTipoEventoLE.html)(ejemplo: eventCoding.code=terminar), una referencia a un autor(author), detalles del sistema emisor(source) y una referencia a un recurso el cual es el foco del mensaje(focus)
* Otros recursos: Necesariamente los recursos referenciados deben ser incluidos dentro del mismo Bundle como entradas adicionales, por ejemplo en el caso del **Mensaje de Envío** los recursos referenciados en el MessageHeader(autor, focus, etc) y en el caso del **Mensaje de Respuesta** un recurso [**OperationOutcome**](https://www.hl7.org/fhir/R4/operationoutcome.html) con información de la operación, advertencias o lista de errores(OperationOutcome.issue)


#### Mensajería de Envío

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="mensaje-envio.png"> 
  <p></p>
</div>
<br>


#### Mensaje de Respuesta

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="mensaje-respuesta.png"> 
  <p></p>
</div>
<br>
