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
  <img  style="border: 1px solid; color: black;" src="DiagramasRecursos_ListaEspera_FlujodeEventos_Inicio.png"> 
  <p></p>
</div>
<br>

Los recursos usados en este evento son los siguientes:

* [ServiceRequest](link): Recurso principal para reflejar los datos de la interconsulta
* [MessageHeader](link): lorem
* [PractitionerRole](link): lorem
* [Condition](link): lorem
* [PractitionerRole](link): lorem
* [Observation](link): lorem
* [Encounter](link): lorem
* [AllergyIntolerance](link): lorem
* [Patient](link): lorem
* [QuestionaireResponse](link): lorem
* [Appointment](link): lorem

## Relaciones de Recursos

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="DiagramasRecursos_ListaEspera_IniciarReferenciada.png"> 
  <p></p>
</div>
<br>

## Secuencia del Evento

El evento inicio debe soportar a siguiente secuencia:

Diagrama de Secuencia por definir

## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](http://link)

## Ejemplo
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
      "id" : "267b18ce-3d37-4581-9baa-6fada338038b",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t\t\t\t<p>Este mensaje es el de inicio de una interconsulta</p>\n\t\t\t\t\t</div>"
      },
      "meta":{
        "lastUpdated":"2023-01-20T14:12:10"
      },
      "eventCoding" : {
        "system" : "http://listaespera.org/fhir/message-events",
        "code" : "Iniciar"
      },
      "source" : {
        "software" : "SolucionInformatica"
      },
      "focus" : [{
        "reference" : "base/fhir/ServiceRequest/serv1"
      }]
    }
  },
  {
    "fullUrl" : "base/fhir/ServiceRequest/serv1",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "serv1",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t\t\t\t<p>Service Request serv1</p>\n\t\t\t\t\t</div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.cens.cl/CodeSystem/listaespera",//Se debe definir el type
            "code" : "IdInterconsulta"
          }]
        },
        "value" : "1"
      }],
      "authoredOn":"2022-01-20T13:50:20",
      "status": "draft",
      "priority":"PrioridadInterconsultaOrigen",
      "extension":[
        {
          "url":"http://minsal.cl/listaespera/StructureDefinition/ExtString",//reparar url
          "value":"FundamentoPriorizacion"
        },
        {
          "url":"http://minsal.cl/listaespera/StructureDefinition/SospechaPatologiaGes",
          "extension":[
            {
              "url": "sospecha",
              "value":"true"
            },
            {
              "url":"patologia",
              "valueCodeableConcept":[
                {
                  "coding": [
                    {
                      "system": "http://terminology.cens.cl/codigosDeis/sospechasGes",
                      "code": "2"
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "url":"http://minsal.cl/listaespera/StructureDefinition/ExtBoolean", //Reparar url extensión ResolutividadAPS
          "value": true 
        },
        {
          "url":"http://minsal.cl/listaespera/StructureDefinition/ExtBoolean",//Reparar url extensión Alergia
          "value":false
        },
        {
          "url": "ttp://minsal.cl/listaespera/StructureDefinition/OrigenInterconsulta"
          "valueCodeableConcept": [
            {
              "coding": [
                {
                  "system": "http://terminology.cens.cl/codigosDeis/OrigenInterconsulta",
                  "code": "3"
                }
              ]
            }
          ]
        },
        {
          "url":"http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE",
          "valueCodeableConcept":[
            {
              "coding": [
                {
                  "system": "http://terminology.cens.cl/codigosDeis/EstadoInterconsultaCodigoLE",
                  "code": "3"
                }
              ]
            }
          ]
        },
        {
          "url":"http://minsal.cl/listaespera/StructureDefinition/ExtBoolean",//Reparar url extensión Cuidador
          "value": false
        },
        {
          "url":"http://minsal.cl/listaespera/StructureDefinition/DocAcreditacionCuidadorCodigoLE",
          "valueCodeableConcept":[
            {
              "coding": [
                {
                  "system": "http://terminology.cens.cl/codigosDeis/DocAcreditacionCuidadorCodigoLE",
                  "code": "1"
                }
              ]
            }
          ]
        },
        {
          "url":"http://minsal.cl/listaespera/StructureDefinition/ExtBoolean",//Reparar url extensión Presenta Discapacidad
          "value": false
        },
        {
          "url":"http://minsal.cl/listaespera/StructureDefinition/ExtBoolean",//Reparar url extensión Persona Mayor
          "value": false
        }
      ],
      "subject": "http://acme.com/ehr/fhir/Patient/pat12",
      "reasonReference":"http://acme.com/ehr/fhir/Observation/obs1",
      "encounter": "http://acme.com/ehr/fhir/Encounter/enc1",
      "reasonCode": [
        {
          "coding": [
            {
              "system": "http://terminology.cens.cl/codigosDeis/motivoInterconsulta",
              "code": "1",
              "display": "confirmacion"
            }
          ]
        }
      ],
      "supportingInfo":[
        {
           "reference": "http://acme.com/ehr/fhir/Appointment/app1"   
        },
        {
           "reference": "http://acme.com/ehr/fhir/QuestionnaireResponse/que1"   
        },
        {
           "reference": "http://acme.com/ehr/fhir/AllergyIntolerance/all1"   
        },
        {
           "reference": "http://acme.com/ehr/fhir/Condition/cond1"   
        },
        {
           "reference": "http://acme.com/ehr/fhir/Condition/cond2"   
        },
        {
           "reference": "http://acme.com/ehr/fhir/Condition/cond3"   
        }
      ]
    }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Patient/pat12",
    "resource" : {
  "resourceType": "Patient",
  "extension": [
    {
      "url": "http://minsal.cl/listaespera/StructureDefinition/CodigoPaises",
      "valueCoding": {
        "code": "AD"
      }
    },
    {
      "url": "http://minsal.cl/listaespera/StructureDefinition/CodigoPaises",
      "valueCoding": {
        "code": "AD"
      }
    },
    {
      "url": "http://minsal.cl/listaespera/ValueSet/VSIdentidaddeGenero",
      "valueCoding": {
        "code": "01"
      }
    },
    {
      "url": "http://minsal.cl/listaespera/StructureDefinition/ExtBoolAfrodescendiente",
      "valueBoolean": false
    }
  ],
  "identifier": [
    {
      "extension": [
        {
          "url": "http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador",
          "valueString": "K"
        }
      ],
      "type": {
        "extension": [
           {
            "url": "http://minsal.cl/listaespera/StructureDefinition/CodigoPaises",
            "valueCoding": {
              "code": "AD"
            }
          }
        ],
        "coding": [
          {
            "code": "1",
            "display": "RUN",
            "system": "http://minsal.cl/listaespera/CodeSystem/CSTipoIdentificador"
          }
        ]
      },
      "value": "15999999",
      "system": "http://www.acme.com/identifiers/patient"
    }
  ],
  "name": [
    {
      "use": "official",
      "given": [
        "Luis"
      ],
      "family": "Perez",
      "_family": {
        "extension": [
          {
            "url": "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family",
            "valueString": "sierra"
          }
        ]
      }
    },
    {
      "use": "usual",
      "given": [
        "Luis"
      ]
    }
  ],
  "telecom": [
    {
      "use": "mobile",
      "value": "569854875457",
      "rank": 1
    }
  ]
  }
  },
  {
     "fullUrl" : "http://acme.com/ehr/fhir/Observation/obs1",
      "resource":{
        "resourceType": "Observation",
        "status": "registered",
        "code": {
          "text":"examenes"  
        },
        "valueString":"examenes realizados"

      } 
  },
  {
     "fullUrl" : "http://acme.com/ehr/fhir/AllergyIntolerance/all1",
      "resource":{
        "resourceType": "AllergyIntolerance",
        "code": {
          "text": "tipo alergia"  
        },
        "patient": {"reference": "http://acme.com/ehr/fhir/Patient/pat12"}
      } 
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Location/loc1",
    "resource":{
        "resourceType": "Location",
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Resumen datos del establecimiento</div>"
        },
        "identifier": [
          {
            "type" : {
              "coding" : [{
              "system" : "http://terminology.cens.cl/CodeSystem/listaespera",
              "code" : "EstablecimientoCodigo"
              }]
            },
            "value": "1"
          }
        ]
      }
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Appointment/app1",
    "resource":{
      "resourceType": "Appointment",
      "status": "booked",
      "identifier":[{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.cens.cl/CodeSystem/listaespera",//Se debe definir el type
            "code" : "IdCita"
          }]
        },
        "value" : "21"
      }],
      "start":"2023-22-01T09:00:00Z"
    } 
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Condition/con1",
    "resource":{
      "resourceType": "Condition",
      "code":{
        "coding": [
          {
            "system": "TipoCodDiagnosticaCodigoSospecha",
            "code": "CodigoSospecha"
          }
        ],
        "text": "DiagnosticoTextoLibreSospecha"
      },
      "category": {
        "coding":[
          {
            "code":"encounter-diagnosis",
            "system":"http://terminology.hl7.org/CodeSystem/condition-category",
          }
        ],
        "text":"diagnostico"
      },
      "note":"FundamentoDiagnostico"
    } 
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Condition/con2",
    "resource":{
      "resourceType": "Condition",
      "code":{
        "coding": [
          {
            "system": "Indice comorbilidad",
            "code": "Indice comorbilidad code"
          }
        ]
      },
      "category": {
        "coding":[
          {
            "code":"problem-list-item",
            "system":"http://terminology.hl7.org/CodeSystem/condition-category",
          }
        ],
        "text":"Indice Comorbilidad"
      }
    } 
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Condition/con3",
    "resource":{
      "resourceType": "Condition",
      "code":{
        "coding": [
          {
            "system": "SospechaPatologiaGesCodigoSystem",
            "code": "SospechaPatologiaGesCodigo",
            "display":"SospechaPatologiaGesGlosa"
          }
        ]
      },
      "category": {
        "coding":[
          {
            "code":"problem-list-item",
            "system":"http://terminology.hl7.org/CodeSystem/condition-category",
          }
        ],
        "text":"sospechaGes"
      }
    } 
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Encounter/enc1",
    "resource":{
      "resourceType": "Encounter",
      "identifier":[{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.cens.cl/CodeSystem/listaespera",
            "code" : "IdConsultaAPS"
          }]
        },
        "value" : "3"
      }]
    } 
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/Practitioner/pra1",
    "resource":{
      "resourceType": "Practitioner",
      "identifier":[{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.cens.cl/CodeSystem/listaespera", //REvisar Type
            "code" : "ValorRNPI"
          }]
        },
        "value" : "2134"
      },
      {
        "extension":[
          {
            "url":"http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador",
            "value": "3"
          }
        ],
        "type" : {
          "coding" : [{
            "system" : "http://terminology.cens.cl/CodeSystem/listaespera", // Revisar Type
            "code" : "RUN"
          }]
        },
        "value" : "2134"
      }
    ],
    "qualification":[
      {
        "identifier": {
          "value":"cert"
        },
        "code":{
          "coding":{
            "system":"http://terminology.cens.cl/CodeSystem/certMedicos",
            "display": "Medico Cirujano"
          },
          "text":"Certificado(s)"

        }
      }
      
    ]
    } 
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/PractitionerRole/praR1",
    "resource":{
      "resourceType": "PractitionerRole",
      "practitioner":{
        "reference":"http://acme.com/ehr/fhir/Practitioner/pra1"
      },
      "location":{
        "reference":"http://acme.com/ehr/fhir/Location/loc1"
      },
      "organization":{
        "reference":"http://acme.com/ehr/fhir/Organization/org1"
      }
    } 
  },
  {
    "fullUrl" : "http://acme.com/ehr/fhir/QuestionnaireResponse/que1",
    "resource":{
      "resourceType": "QuestionnaireResponse",
      "item":[
        {
           "linkId":"resumen",
           "text":"resumen",
           "answer":[
             {
                "valueString":"Anamnesis"
             }
           ] 
        }
        
      ]
    } 
  }
]
}
```

## Notas

* Notas Adicionales






