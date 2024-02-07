
El mecanismo de intercambio definido para las transacciones es [FHIR messaging](https://www.hl7.org/fhir/R4/messaging.html)(Mensajería de FHIR), esto consiste en el intercambio de mensajes entre un emisor y un receptor, emulando en cierta medida la mensajería HL7 v2.

El intercambio de mensajes entre los actores se debe realizar siguiendo las definiciónes de la especificación oficial de FHIR por lo que se supone que soportan la [operación FHIR **$process-message**](https://www.hl7.org/fhir/R4/messageheader-operation-process-message.html)

### Estructura de los Mensajes

* Es importante considerar que la URL para el envío de un mensaje será: **[base]/$process-message**
* Agrupador de Recursos: Un recurso del tipo **Bundle** del tipo **message**(type=message)
* Cabecera del mensaje: Un recurso del tipo **MessageHeader** con la identificación del [tipo evento](ValueSet-VSTipoEventoLE.html)(ejemplo: eventCoding.code=terminar), una referencia a un autor(author), detalles del sistema emisor(source) y una referencia a un recurso el cual es el foco del mensaje(focus)
* Otros recursos: Necesariamente los recursos referenciados deben ser incluidos dentro del mismo Bundle como entradas adicionales, por ejemplo en el caso del **Mensaje de Envío** los recursos referenciados en el MessageHeader(autor, focus, etc) y en el caso del **Mensaje de Respuesta** un recurso [**OperationOutcome**](https://www.hl7.org/fhir/R4/operationoutcome.html) con información de la operación, advertencias o lista de errores(OperationOutcome.issue)


### Mensaje de Envío

* El recurso del tipo Bundle debe ser del tipo mensaje(type=message)
* Siempre el primer entry en Bundle.type=message debe ser un MessageHeader.
* El MessageHeader.focus debe incluir el siempre el ServiceRequest y opcionalmente Appointment(en el caso del evento agendar) o Encounter(en el caso del evento atender)
* Ejemplo para evento Agendar:

      {
      "resourceType": "Bundle",
      "type": "message",
      "entry": [
        {
            "fullUrl" : "http://acme.com/ehr/fhir/MessageHeader/EjemploMessageHeader",
            "resource" : {
                "resourceType": "MessageHeader",
                "eventCoding”: {
                    "system”: "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE”,
                    "code": "agendar"
                },
                "focus": [
                    {
                        "reference": "urn:uuid:8ff6c98d-57b5-438c-9d9f-46adc9cb0382"
                    },
                    {
                        "reference": "urn:uuid:f4dbd333-a73b-4b25-b589-fccf9daafd33"
                    }

                ],
                … // Otra información del MessageHeader
            }
        },
        {
            "fullUrl" : "urn:uuid:8ff6c98d-57b5-438c-9d9f-46adc9cb0382",
            "resource" : {
                "resourceType": "ServiceRequest"
                … // Otra información del ServiceRequest
            }

        },
        {
            "fullUrl" : "urn:uuid:8ff6c98d-57b5-438c-9d9f-46adc9cb0382",
            "resource" : {
                "resourceType": "Appointment"
                … // Otra información del Appointment
            }

        },
        … // Otros recursos
      ]
      }


### Mensaje de Respuesta

#### Respuesta exitosa

* El recurso Bundle debe ser del tipo mensaje(type=message)
* El MessageHeader.focus debe incluir el siempre el ServiceRequest y opcionalmente Appointment(en el caso del evento agendar) o Encounter(en el caso del evento atender)
* Como mínimo solo los recursos MessageHeader y referenciados en MessageHeader.focus vendrán completos en la respuesta, para los otros recursos solo vendrá el response con el resultado de la operación.
* Adicionalmente es posible incluir el recurso OperationOutcome con información de la operación referenciado en MessageHeader.response 
* Ejemplo de Respuesta para evento Agendar:

      {
          "resourceType": "Bundle",
          "id": "e192ea7d-3b6f-4120-8c0c-1ccc5e2960d1",
          "identifier": {
              "system": "http://demo.com/identifiers",
              "value": "252dc32d-62c5-4c40-a97a-c48c8ce2f1a7"
          },
          "type": "message",
          "entry": [
              {
                  "resource": {
                      "resourceType": "MessageHeader",
                      "id": "2982",
                      "eventCoding": {
                          "system": "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE",
                          "code": "agendar"
                      },
                      "author": {
                          "reference": "PractitionerRole/2983"
                      },
                      "response": {
                          "identifier": "0c3b644c-f64f-4626-9869-dcc080cfe538",
                          "code": "ok",
                          "details": {
                              "reference": "OperationOutcome/5a2e30e1-38e1-40a3-b26b-f604df954f8a"
                          }
                      },
                      "focus": [
                          {
                              "reference": "Appointment/2988"
                          },
                          {
                              "reference": "ServiceRequest/2989"
                          }
                      ],
                      ... // Otra información del MessageHeader
                  },
                  "response": {
                      "status": "201 Created",
                      "location": "MessageHeader/2982/_history/1",
                  }
              },
              {
                  "fullUrl": "urn:uuid:5a2e30e1-38e1-40a3-b26b-f604df954f8a",
                  "resource": {
                      "resourceType": "OperationOutcome",
                      "id": "5a2e30e1-38e1-40a3-b26b-f604df954f8a",
                      "issue": [
                          {
                              "severity": "information",
                              "code": "informational",
                              "details": {
                                  "text": "Interconsulta agendada exitosamente"
                              }
                          }
                      ]
                  }
              },
              {
                  "resource": {
                      "resourceType": "ServiceRequest",
                      "id": "2989",
                      ... // Otra información del ServiceRequest
                  },
                  "response": {
                      "status": "200 OK",
                      "location": "ServiceRequest/2989/_history/7"
                  }
              },
              {
                  "resource": {
                      "resourceType": "Appointment",
                      "id": "2988",
                      ... // Otra información del Appointment
                  },
                  "response": {
                      "status": "201 Created",
                      "location": "Appointment/2988/_history/1",
                  }
              },
              {
                  "response": {
                      "status": "201 Created",
                      "location": "PractitionerRole/2983/_history/1"
                  }
              }
              ... // Otros Recursos
          ]
      }

#### Respuesta con error

* Mensaje de Error, en caso de existir: 

        {
          "resourceType": "OperationOutcome",
          "text": {
            "status": "generated",
            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Operation Outcome</h1><table border=\"0\"><tr><td style=\"font-weight: bold;\">ERROR</td><td>[]</td><td><pre>el valor es incorrecto</pre></td>\n\t\t\t</tr>\n\t\t</table>\n\t</div>"
          },
          "issue": [ {
            "severity": "error",
            "code": "value",
            "diagnostics": "el valor es incorrecto"
          } ]
        }

### Response Code

* Siempre es 200  en caso de que el mensaje sea procesado completamente
* 4XX si el mensaje no pudo ser procesado correctamente y se debe indicar error o errores usando el recurso OperationOutcome
* 5xx errores de servidor no relacionados al mensaje
