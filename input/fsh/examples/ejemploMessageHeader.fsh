Instance: EjemploMessageHeader
InstanceOf: MessageHeaderLE
Usage: #example
Title: "Ejemplo de MesaggeHeader Evento de Inicio"
Description: "Ejemplo de MesaggeHeader Evento de Inicio"


* meta.lastUpdated = "2023-01-20T14:12:10Z"
* eventCoding = http://minsal.cl/listaespera/CodeSystem/CSTipoEventoLE#inicio
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"
* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/praR1)

/*EJEMPLOS PARA BUNDLE REFERENCIADA*/
Instance: EjemploMessageHeaderReferencia
InstanceOf: MessageHeaderLE
Usage: #example
Title: "Ejemplo de MesaggeHeader Evento de Referencia"
Description: "Ejemplo de MesaggeHeader Evento de Referencia"


* meta.lastUpdated = "2023-02-13T14:12:10Z"
* eventCoding = http://minsal.cl/listaespera/CodeSystem/CSTipoEventoLE#referenciada
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"
* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* author = Reference(http://acme.com/ehr/fhir/Organization/orgMHREF)
/*FIN PARA BUNDLE REFERENCIADA*/

/*EJEMPLOS PARA BUNDLE Terminar*/
Instance: EjemploMessageHeaderTerminar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "Ejemplo de MesaggeHeader Evento de Terminar"
Description: "Ejemplo de MesaggeHeader Evento de Terminar"


* meta.lastUpdated = "2023-02-14T14:12:10Z"
* eventCoding = http://minsal.cl/listaespera/CodeSystem/CSTipoEventoLE#terminar
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"
* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/praR1)
/*FIN PARA BUNDLE Terminar*/

/*EJEMPLOS PARA BUNDLE Revisar*/
Instance: EjemploMessageHeaderRevisar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "Ejemplo de MesaggeHeader Evento de Revisar"
Description: "Ejemplo de MesaggeHeader Evento de Revisar"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"

* eventCoding = http://minsal.cl/listaespera/CodeSystem/CSTipoEventoLE#terminar

* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/praR1)
/*FIN PARA BUNDLE Revisar*/

/*EJEMPLOS PARA BUNDLE Agendar*/
Instance: EjemploMessageHeaderAgendar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "Ejemplo de MesaggeHeader Evento de Agendar"
Description: "Ejemplo de MesaggeHeader Evento de Agendar"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"

* eventCoding = http://minsal.cl/listaespera/CodeSystem/CSTipoEventoLE#agendar

* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/praR1)
/*FIN PARA BUNDLE Agendar*/

/*EJEMPLOS PARA BUNDLE Atender*/
Instance: EjemploMessageHeaderAtender
InstanceOf: MessageHeaderLE
Usage: #example
Title: "Ejemplo de MesaggeHeader Evento de Atender"
Description: "Ejemplo de MesaggeHeader Evento de Atender"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"

* eventCoding = http://minsal.cl/listaespera/CodeSystem/CSTipoEventoLE#terminar

* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/praR1)
/*FIN PARA BUNDLE Atender*/