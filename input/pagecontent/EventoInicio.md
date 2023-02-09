# Evento: Inicio

El evento INICIO tiene asociado los siguientes códigos de evento: 


| Código | Evento| Descripción | Respuesta |
|--------|----|-----|---|
| inicio | Inicio | Este evento permite iniciar un proceso de interconsulta nuevo | La respuesta debe indicar si errores o indicar que la interconsulta ha sido creada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**



## Bundle de Envío

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="inicio-evento.png"> 
  <p></p>
</div>
<br>

Los recursos usados en este evento son los siguientes:

* [ServiceRequestLE](StructureDefinition-ServicerequestLE.html): Recurso principal para reflejar los datos de la interconsulta (MessageHeader.focus)
* [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html): Recurso que contiene datos relacionados al mensaje, como el autor, tipo de evento y foco del mensaje.
* [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html): Recurso que permite reflejar la información relacionada al invididuo autor del proceso (MessageHeader.author)
* [Condition](https://www.hl7.org/FHIR/condition.html): Este recurso tiene 3 usos en el evento de Inicio representados por sus perfiles:
  * [Condition1](StructureDefinition-ConditionInicioDiagnosticoSospechaLE.html): Recurso utilizado para representar ciertos elementos del diagnóstico (ServiceRequest.supportingInfo)
  * [Condition2](StructureDefinition-ConditionInicioIndiceComorbilidadLE.html): Recurso utilizado para representar el índice de comorbilidad (ServiceRequest.supportingInfo)
  * [Condition3](StructureDefinition-ConditionInicioSospechaGesLE.html): Recurso utilizado para representar datos relacionados a la patología GES (ServiceRequest.supportingInfo)
* [ObservationInicioLE](StructureDefinition-ObservationInicioLE.html): Recurso utilizado para registrar datos relacionados a la realización de exámenes (ServiceRequest.reasonReference)
* [EncounterInicioLE](StructureDefinition-EncounterInicioLE.html): Recurso utilizado para registrar el identificador de la consulta en APS(ServiceRequest.encounter)
* [AllergyIntoleranceInicioLE](StructureDefinition-AllergyIntoleranceInicioLE.html): Recurso utilizado para registrar información relacionada al tipo de alergia en caso de tener (ServiceRequest.supportingInfo)
* [PatientLE](StructureDefinition-PatientLE.html): Recurso utilizado para registrar información relacionada al paciente (ServiceRequest.subject)
* [QuestionnaireResponseInicioLE](StructureDefinition-QuestionnaireResponseLE.html): Recurso utilizado para registrar información relacionada a la anamnesis (ServiceRequest.supportingInfo)
* [AppointmentInicioLE](StructureDefinition-AppointmentInicioLE.html): Recurso utilizado para registrar información de la cita que da inicio a la solicitud de interconsulta (ServiceRequest.supportingInfo)

## Relaciones de Recursos

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="inicio-recursos.png"> 
  <p></p>
</div>
<br>

## Secuencia del Evento

El evento inicio debe soportar a siguiente secuencia:
<div align="center" >
{% include evento-inicio.svg %}
</div>


## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](http://link)

El Bundle de envío debe cumplir con las siguientes condiciones en este evento:

* Debe incluir el recurso [ServiceRequestLE](StructureDefinition-ServicerequestLE.html)
* Debe incluir el recurso [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html) con el valor **MessageHeader.evenCoding.code=inicio** 
* Debe incluir el recurso [PatientLE](StructureDefinition-PatientLE.html)
* Debe incluir el recurso [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html)
* Debe incluir el recurso [EncounterInicioLE](StructureDefinition-EncounterInicioLE.html)
* Debe incluir el recurso [AppointmentInicioLE](StructureDefinition-AppointmentInicioLE.html)
* Debe incluir el recurso [Condition1](StructureDefinition-ConditionInicioDiagnosticoSospechaLE.html)
* Debe incluir el recurso [QuestionnaireResponseInicioLE](StructureDefinition-QuestionnaireResponseLE.html)
* Debe incluir el recurso [ObservationInicioLE](StructureDefinition-ObservationInicioLE.html)


## Mensaje Bundle de Ejemplo
```javascript
{
  "resourceType" : "Bundle",
  "id" : "10bb101f-a121-4264-a920-67be9cb82c74",
  "type" : "message",
  "timestamp" : "2015-07-14T11:15:33+10:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:267b18ce-3d37-4581-9baa-6fada338038b",
    "resource" : {
      "resourceType" : "MessageHeader",
      "id" : "EjemploMessageHeader",
      "meta" : {
        "lastUpdated" : "2023-01-20T14:12:10Z",
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/MessageHeaderLE"
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: MessageHeader</b><a name=\"EjemploMessageHeader\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource MessageHeader &quot;EjemploMessageHeader&quot; Updated &quot;2023-01-20 14:12:10+0000&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MessageHeaderLE.html\">MessageHeaderLE</a></p></div><p><b>event</b>: Iniciar (Details: http://listaespera.org/fhir/message-events code Iniciar = 'Iniciar', stated as 'null')</p><h3>Sources</h3><table class=\"grid\"><tr><td>-</td><td><b>Software</b></td><td><b>Endpoint</b></td></tr><tr><td>*</td><td>SolucionInformatica</td><td><a href=\"http://link-to-sending.cl\">http://link-to-sending.cl</a></td></tr></table><p><b>focus</b>: <a href=\"http://acme.com/ehr/fhir/ServiceRequest/serv1\">http://acme.com/ehr/fhir/ServiceRequest/serv1</a></p></div>"
      },
      "eventCoding" : {
        "system" : "http://listaespera.org/fhir/message-events",
        "code" : "Iniciar"
      },
      "source" : {
        "software" : "SolucionInformatica",
        "endpoint" : "http://link-to-sending.cl"
      },
      "focus" : [
        {
          "reference" : "http://acme.com/ehr/fhir/ServiceRequest/serv1"
        }
      ]
    }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/ServiceRequest/serv1",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "EjemploServiceRequest",
      "meta" : {
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/ServiceRequestLE"
        ]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: ServiceRequest</b><a name=\"EjemploServiceRequest\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource ServiceRequest &quot;EjemploServiceRequest&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ServiceRequestLE.html\">ServiceRequest LE</a></p></div><p><b>ExtStringFundamentoPriorizacion</b>: FundamentoPriorizacion</p><p><b>SospechaPatologiaGes</b>: true</p><p><b>ExtBool ResolutividadAPS</b>: true</p><p><b>ExtBool Alergia</b>: false</p><p><b>Origen Interconsulta</b>: 1 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ([not stated]#1)</span></p><p><b>Estado Interconsulta Codigo</b>: 1 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ([not stated]#1)</span></p><p><b>ExtBool Cuidador</b>: true</p><p><b>Doc Acreditacion Cuidador</b>: 1 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ([not stated]#1)</span></p><p><b>ExtBool PresentaDiscapacidad</b>: false</p><p><b>ExtBool PersonaMayor</b>: false</p><p><b>identifier</b>: IdInterconsulta: 1</p><p><b>status</b>: draft</p><p><b>intent</b>: proposal</p><p><b>priority</b>: urgent</p><p><b>subject</b>: <a href=\"http://acme.com/ehr/fhir/Patient/pat12\">http://acme.com/ehr/fhir/Patient/pat12</a></p><p><b>encounter</b>: <a href=\"http://acme.com/ehr/fhir/Encounter/enc1\">http://acme.com/ehr/fhir/Encounter/enc1</a></p><p><b>authoredOn</b>: 2022-01-20 13:50:20+0000</p><p><b>reasonCode</b>: confirmacion <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (motivoInterconsulta#1)</span></p><p><b>reasonReference</b>: <a href=\"http://acme.com/ehr/fhir/Observation/obs1\">http://acme.com/ehr/fhir/Observation/obs1</a></p><p><b>supportingInfo</b>: </p><ul><li><a href=\"http://acme.com/ehr/fhir/Appointment/app1\">http://acme.com/ehr/fhir/Appointment/app1</a></li><li><a href=\"http://acme.com/ehr/fhir/QuestionnaireResponse/que1\">http://acme.com/ehr/fhir/QuestionnaireResponse/que1</a></li><li><a href=\"http://acme.com/ehr/fhir/AllergyIntolerance/all1\">http://acme.com/ehr/fhir/AllergyIntolerance/all1</a></li><li><a href=\"http://acme.com/ehr/fhir/Condition/cond1\">http://acme.com/ehr/fhir/Condition/cond1</a></li><li><a href=\"http://acme.com/ehr/fhir/Condition/cond2\">http://acme.com/ehr/fhir/Condition/cond2</a></li><li><a href=\"http://acme.com/ehr/fhir/Condition/cond3\">http://acme.com/ehr/fhir/Condition/cond3</a></li></ul></div>"
      },
      "extension" : [
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/ExtStringFundamentoPriorizacion",
          "valueString" : "FundamentoPriorizacion"
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/SospechaPatologiaGes",
          "valueBoolean" : true
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/ExtBoolResolutividadAPS",
          "valueBoolean" : true
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/ExtBoolAlergia",
          "valueBoolean" : false
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/OrigenInterconsulta",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "code" : "1"
              }
            ]
          }
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "code" : "1"
              }
            ]
          }
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/ExtBoolCuidador",
          "valueBoolean" : true
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/DocAcreditacionCuidadorCodigoLE",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "code" : "1"
              }
            ]
          }
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/ExtBoolPresentaDiscapacidad",
          "valueBoolean" : false
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/ExtBoolPersonaMayor",
          "valueBoolean" : false
        }
      ],
      "identifier" : [
        {
          "type" : {
            "coding" : [
              {
                "system" : "http://terminology.cens.cl/CodeSystem/listaespera",
                "code" : "IdInterconsulta"
              }
            ]
          },
          "value" : "1"
        }
      ],
      "status" : "draft",
      "intent" : "proposal",
      "priority" : "urgent",
      "subject" : {
        "reference" : "http://acme.com/ehr/fhir/Patient/pat12"
      },
      "encounter" : {
        "reference" : "http://acme.com/ehr/fhir/Encounter/enc1"
      },
      "authoredOn" : "2022-01-20T13:50:20Z",
      "reasonCode" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.cens.cl/codigosDeis/motivoInterconsulta",
              "code" : "1",
              "display" : "confirmacion"
            }
          ]
        }
      ],
      "reasonReference" : [
        {
          "reference" : "http://acme.com/ehr/fhir/Observation/obs1"
        }
      ],
      "supportingInfo" : [
        {
          "reference" : "http://acme.com/ehr/fhir/Appointment/app1"
        },
        {
          "reference" : "http://acme.com/ehr/fhir/QuestionnaireResponse/que1"
        },
        {
          "reference" : "http://acme.com/ehr/fhir/AllergyIntolerance/all1"
        },
        {
          "reference" : "http://acme.com/ehr/fhir/Condition/cond1"
        },
        {
          "reference" : "http://acme.com/ehr/fhir/Condition/cond2"
        },
        {
          "reference" : "http://acme.com/ehr/fhir/Condition/cond3"
        }
      ]
    }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Patient/pat12",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "EjemploPatient",
      "meta" : {
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/PatientLE"
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\"><b>Luis </b> male, DoB: 1995-12-12 ( RUN: 15999999)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Alternate names (see the one above)\">Alt. Name:</td><td colspan=\"3\">Luis Perez (OFFICIAL)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail:</td><td colspan=\"3\">569854875457(MOBILE)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Identidad de genero\"><a href=\"StructureDefinition-IdentidadGenero.html\">Identidad de genero:</a></td><td colspan=\"3\"><ul><li><span title=\"Codes: \">01</span></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Esta extensión incluye códigos de las Nacionalidades\"><a href=\"StructureDefinition-NacionalidadCodigo.html\">Codigo de Identificación de Nacionalidad:</a></td><td colspan=\"3\"><ul><li><span title=\"Codes: \">Andorra</span></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Esta extensión incluye códigos de paises de origen\"><a href=\"StructureDefinition-CodigoPaises.html\">Codigo de Identificación de países:</a></td><td colspan=\"3\"><ul><li><span title=\"Codes: \">Andorra</span></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"ExtBool Afrodescendiente\"><a href=\"StructureDefinition-ExtBoolAfrodescendiente.html\">ExtBool Afrodescendiente:</a></td><td colspan=\"3\"><ul><li>false</li></ul></td></tr></table></div>"
      },
      "extension" : [
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/CodigoPaises",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "code" : "AD"
              }
            ],
            "text" : "Andorra"
          }
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/NacionalidadCodigo",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "code" : "AD"
              }
            ],
            "text" : "Andorra"
          }
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/IdentidadGenero",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "code" : "01"
              }
            ]
          }
        },
        {
          "url" : "http://minsal.cl/listaespera/StructureDefinition/ExtBoolAfrodescendiente",
          "valueBoolean" : false
        }
      ],
      "identifier" : [
        {
          "extension" : [
            {
              "url" : "http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador",
              "valueString" : "K"
            }
          ],
          "type" : {
            "extension" : [
              {
                "url" : "http://minsal.cl/listaespera/StructureDefinition/CodigoPaises",
                "valueCoding" : {
                  "code" : "AD"
                }
              }
            ],
            "coding" : [
              {
                "system" : "http://minsal.cl/listaespera/CodeSystem/CSTipoIdentificador",
                "code" : "1",
                "display" : "RUN"
              }
            ]
          },
          "system" : "http://www.acme.com/identifiers/patient",
          "value" : "15999999"
        }
      ],
      "name" : [
        {
          "use" : "official",
          "family" : "Perez",
          "_family" : {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family",
                "valueString" : "sierra"
              }
            ]
          },
          "given" : [
            "Luis"
          ]
        },
        {
          "use" : "usual",
          "given" : [
            "Luis"
          ]
        }
      ],
      "telecom" : [
        {
          "value" : "569854875457",
          "use" : "mobile",
          "rank" : 1
        }
      ],
      "gender" : "male",
      "birthDate" : "1995-12-12"
    }
  },
  {
     "fullUrl" : "http://acme.com/ehr/fhir/Observation/obs1",
      "resource":{
        "resourceType" : "Observation",
        "id" : "EjemploObservation",
        "meta" : {
          "profile" : [
            "http://minsal.cl/listaespera/StructureDefinition/ObservationInicioLE"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Observation</b><a name=\"EjemploObservation\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Observation &quot;EjemploObservation&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ObservationInicioLE.html\">Observation LE</a></p></div><p><b>status</b>: registered</p><p><b>code</b>: examenes <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ()</span></p><p><b>value</b>: examenes realizados</p></div>"
        },
        "status" : "registered",
        "code" : {
          "text" : "examenes"
        },
        "valueString" : "examenes realizados"
      }
  },
  {
     "fullUrl" : "http://acme.com/ehr/fhir/AllergyIntolerance/all1",
      "resource":{
        "resourceType" : "AllergyIntolerance",
        "id" : "EjemploAllergyIntolerance",
        "meta" : {
          "profile" : [
            "http://minsal.cl/listaespera/StructureDefinition/AllergyIntoleranceInicioLE"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: AllergyIntolerance</b><a name=\"EjemploAllergyIntolerance\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource AllergyIntolerance &quot;EjemploAllergyIntolerance&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-AllergyIntoleranceInicioLE.html\">AllergyIntolerance Inicio LE</a></p></div><p><b>code</b>: tipo alergia <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ()</span></p><p><b>patient</b>: <a href=\"http://acme.com/ehr/fhir/Patient/pat12\">http://acme.com/ehr/fhir/Patient/pat12</a></p></div>"
        },
        "code" : {
          "text" : "tipo alergia"
        },
        "patient" : {
          "reference" : "http://acme.com/ehr/fhir/Patient/pat12"
        }
      }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Location/loc1",
    "resource":{
      "resourceType" : "Location",
      "id" : "EjemploLocation",
      "meta" : {
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/LocationLE"
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Location</b><a name=\"EjemploLocation\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Location &quot;EjemploLocation&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-LocationLE.html\">Location LE</a></p></div><p><b>identifier</b>: Placer Identifier: 1</p></div>"
      },
      "identifier" : [
        {
          "type" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                "code" : "PLAC"
              }
            ]
          },
          "value" : "1"
        }
      ]
    }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Appointment/app1",
    "resource":{
      "resourceType" : "Appointment",
      "id" : "EjemploAppointment",
      "meta" : {
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/AppointmentInicioLE"
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Appointment</b><a name=\"EjemploAppointment\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Appointment &quot;EjemploAppointment&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-AppointmentInicioLE.html\">Appointment Inicio LE</a></p></div><p><b>identifier</b>: id: 21</p><p><b>status</b>: fulfilled</p><p><b>start</b>: 22-01-2023 06:00:00</p><p><b>basedOn</b>: <a href=\"http://acme.com/ehr/fhir/ServiceRequest/serv1\">http://acme.com/ehr/fhir/ServiceRequest/serv1</a></p><h3>Participants</h3><table class=\"grid\"><tr><td>-</td><td><b>Actor</b></td><td><b>Status</b></td></tr><tr><td>*</td><td><a href=\"http://acme.com/ehr/fhir/Practitioner/pra1\">http://acme.com/ehr/fhir/Practitioner/pra1</a></td><td>accepted</td></tr></table></div>"
      },
      "identifier" : [
        {
          "value" : "21"
        }
      ],
      "status" : "fulfilled",
      "start" : "2023-01-22T09:00:00Z",
      "basedOn" : [
        {
          "reference" : "http://acme.com/ehr/fhir/ServiceRequest/serv1"
        }
      ],
      "participant" : [
        {
          "actor" : {
            "reference" : "http://acme.com/ehr/fhir/Practitioner/pra1"
          },
          "status" : "accepted"
        }
      ]
    }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Condition/con1",
    "resource":{
      "resourceType" : "Condition",
      "id" : "EjemploCondition",
      "meta" : {
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/ConditionInicioDiagnosticoSospechaLE"
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Condition</b><a name=\"EjemploCondition\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Condition &quot;EjemploCondition&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ConditionInicioDiagnosticoSospechaLE.html\">Condicion Inicio 1 LE</a></p></div><p><b>category</b>: diagnostico <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/3.1.0/CodeSystem-condition-category.html\">Condition Category Codes</a>#encounter-diagnosis)</span></p><p><b>code</b>: DiagnosticoTextoLibreSospecha <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-CSTipoCodDiagnostica.html\">Tipo Codificación Diagnostica</a>#2)</span></p><p><b>subject</b>: <a href=\"http://acme.com/ehr/fhir/Patient/pat12\">http://acme.com/ehr/fhir/Patient/pat12</a></p><p><b>note</b>: FundamentoDiagnostico</p></div>"
      },
      "category" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
              "code" : "encounter-diagnosis"
            }
          ],
          "text" : "diagnostico"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "http://minsal.cl/listaespera/CodeSystem/CSTipoCodDiagnostica",
            "code" : "2"
          }
        ],
        "text" : "DiagnosticoTextoLibreSospecha"
      },
      "subject" : {
        "reference" : "http://acme.com/ehr/fhir/Patient/pat12"
      },
      "note" : [
        {
          "text" : "FundamentoDiagnostico"
        }
      ]
    }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Condition/con2",
    "resource":{
      "resourceType" : "Condition",
      "id" : "EjemploCondition2",
      "meta" : {
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/ConditionInicioIndiceComorbilidadLE"
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Condition</b><a name=\"EjemploCondition2\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Condition &quot;EjemploCondition2&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ConditionInicioIndiceComorbilidadLE.html\">Condicion Inicio 2 LE</a></p></div><p><b>category</b>: Indice Comorbilidad <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/3.1.0/CodeSystem-condition-category.html\">Condition Category Codes</a>#problem-list-item)</span></p><p><b>code</b>: DiagnosticoTextoLibreSospecha <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-CSIndicecomorbilidad.html\">Indice Comorbilidad</a>#G1)</span></p><p><b>subject</b>: <a href=\"http://acme.com/ehr/fhir/Patient/pat12\">http://acme.com/ehr/fhir/Patient/pat12</a></p></div>"
      },
      "category" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
              "code" : "problem-list-item"
            }
          ],
          "text" : "Indice Comorbilidad"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "http://minsal.cl/listaespera/CodeSystem/CSIndicecomorbilidad",
            "code" : "G1"
          }
        ],
        "text" : "DiagnosticoTextoLibreSospecha"
      },
      "subject" : {
        "reference" : "http://acme.com/ehr/fhir/Patient/pat12"
      }
    }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Condition/con3",
    "resource": {
      "resourceType" : "Condition",
      "id" : "EjemploCondition3",
      "meta" : {
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/ConditionInicioSospechaGesLE"
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Condition</b><a name=\"EjemploCondition3\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Condition &quot;EjemploCondition3&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ConditionInicioSospechaGesLE.html\">Condicion Inicio 3 LE</a></p></div><p><b>category</b>: sospechaGes <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/3.1.0/CodeSystem-condition-category.html\">Condition Category Codes</a>#problem-list-item)</span></p><p><b>code</b>: SospechaPatologiaGesGlosa <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-CSSospechaPatologiaGes.html\">Sospecha Patologia Ges</a>#A000)</span></p><p><b>subject</b>: <a href=\"http://acme.com/ehr/fhir/Patient/pat12\">http://acme.com/ehr/fhir/Patient/pat12</a></p></div>"
      },
      "category" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
              "code" : "problem-list-item"
            }
          ],
          "text" : "sospechaGes"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "http://minsal.cl/listaespera/CodeSystem/CSSospechaPatologiaGes",
            "code" : "A000"
          }
        ],
        "text" : "SospechaPatologiaGesGlosa"
      },
      "subject" : {
        "reference" : "http://acme.com/ehr/fhir/Patient/pat12"
      }
    }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Encounter/enc1",
    "resource":{
      "resourceType" : "Encounter",
      "id" : "EjemploEncounter",
      "meta" : {
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/EncounterInicioLE"
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Encounter</b><a name=\"EjemploEncounter\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Encounter &quot;EjemploEncounter&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-EncounterInicioLE.html\">Encounter Inicio LE</a></p></div><p><b>identifier</b>: IdConsultaAPS: 1</p><p><b>status</b>: finished</p><p><b>class</b>: AMB (Details: [not stated] code AMB = 'AMB', stated as 'null')</p><p><b>appointment</b>: <a href=\"http://acme.com/ehr/fhir/Appointment/app1\">http://acme.com/ehr/fhir/Appointment/app1</a></p></div>"
      },
      "identifier" : [
        {
          "type" : {
            "coding" : [
              {
                "system" : "http://terminology.cens.cl/CodeSystem/listaespera",
                "code" : "IdConsultaAPS"
              }
            ]
          },
          "value" : "1"
        }
      ],
      "status" : "finished",
      "class" : {
        "code" : "AMB"
      },
      "appointment" : [
        {
          "reference" : "http://acme.com/ehr/fhir/Appointment/app1"
        }
      ]
    }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Practitioner/pra1",
    "resource":{
      "resourceType" : "Practitioner",
      "id" : "EjemploPractitioner",
      "meta" : {
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/PractitionerLE"
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Practitioner</b><a name=\"EjemploPractitioner\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Practitioner &quot;EjemploPractitioner&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PractitionerLE.html\">Practitioner LE</a></p></div><p><b>identifier</b>: RUN: 2134 (use: OFFICIAL), ValorRNPI: 2134 (use: SECONDARY)</p><p><b>gender</b>: male</p><p><b>birthDate</b>: 1974-01-22</p><h3>Qualifications</h3><table class=\"grid\"><tr><td>-</td><td><b>Identifier</b></td><td><b>Code</b></td></tr><tr><td>*</td><td>id: cert</td><td>Certificado(s) <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (certMedicos &quot;Medico Cirujano&quot;)</span></td></tr></table></div>"
      },
      "identifier" : [
        {
          "use" : "official",
          "type" : {
            "coding" : [
              {
                "system" : "http://terminology.cens.cl/CodeSystem/listaespera",
                "code" : "RUN"
              }
            ]
          },
          "value" : "2134"
        },
        {
          "use" : "secondary",
          "type" : {
            "coding" : [
              {
                "system" : "http://terminology.cens.cl/CodeSystem/listaespera",
                "code" : "ValorRNPI"
              }
            ]
          },
          "value" : "2134"
        }
      ],
      "gender" : "male",
      "birthDate" : "1974-01-22",
      "qualification" : [
        {
          "identifier" : [
            {
              "value" : "cert"
            }
          ],
          "code" : {
            "coding" : [
              {
                "system" : "http://terminology.cens.cl/CodeSystem/certMedicos",
                "display" : "Medico Cirujano"
              }
            ],
            "text" : "Certificado(s)"
          }
        }
      ]
    }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/PractitionerRole/praR1",
    "resource":{
      "resourceType" : "PractitionerRole",
      "id" : "EjemploPractitionerRole",
      "meta" : {
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/PractitionerRoleLE"
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: PractitionerRole</b><a name=\"EjemploPractitionerRole\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource PractitionerRole &quot;EjemploPractitionerRole&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PractitionerRoleLE.html\">PractitionerRole LE</a></p></div><p><b>practitioner</b>: <a href=\"http://acme.com/ehr/fhir/Practitioner/pra1\">http://acme.com/ehr/fhir/Practitioner/pra1</a></p><p><b>organization</b>: <a href=\"http://acme.com/ehr/fhir/Organization/org1\">http://acme.com/ehr/fhir/Organization/org1</a></p><p><b>location</b>: <a href=\"http://acme.com/ehr/fhir/Location/loc1\">http://acme.com/ehr/fhir/Location/loc1</a></p></div>"
      },
      "practitioner" : {
        "reference" : "http://acme.com/ehr/fhir/Practitioner/pra1"
      },
      "organization" : {
        "reference" : "http://acme.com/ehr/fhir/Organization/org1"
      },
      "location" : [
        {
          "reference" : "http://acme.com/ehr/fhir/Location/loc1"
        }
      ]
    }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/QuestionnaireResponse/que1",
    "resource":{
      "resourceType" : "QuestionnaireResponse",
      "id" : "EjemploQuestionnaireResponse",
      "meta" : {
        "profile" : [
          "http://minsal.cl/listaespera/StructureDefinition/QuestionnaireResponseInicioLE"
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"The linkId for the item\">LinkId</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the the itemcan appear in the instance\">Definition</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span style=\"float: right\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"http://hl7.org/fhir/R4/help16.png\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireResponseRoot\" class=\"hierarchy\"/> EjemploQuestionnaireResponse</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">QuestionnaireResponse</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck00.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> Resumen</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Resumen</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Anamnesis</td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"http://hl7.org/fhir/R4/help16.png\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "status" : "completed",
      "item" : [
        {
          "linkId" : "Resumen",
          "text" : "Resumen",
          "answer" : [
            {
              "valueString" : "Anamnesis"
            }
          ]
        }
      ]
    }
  }]
}
```

## Notas

* Notas Adicionales






