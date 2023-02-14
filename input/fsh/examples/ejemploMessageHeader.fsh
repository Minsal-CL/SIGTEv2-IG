Instance: EjemploMessageHeader
InstanceOf: MessageHeaderLE
Usage: #inline
Title: "Ejemplo de MesaggeHeader Evento de Inicio"
Description: ""


* meta.lastUpdated = "2023-01-20T14:12:10Z"
* eventCoding = http://minsal.cl/listaespera/CodeSystem/CSTipoEventoLE#inicio
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"
* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/praR1)

/*EJEMPLOS PARA BUNDLE REFERENCIA*/
Instance: EjemploMessageHeaderReferencia
InstanceOf: MessageHeaderLE
Usage: #example
Title: "Ejemplo de MesaggeHeader Evento de Referencia"
Description: ""


* meta.lastUpdated = "2023-02-13T14:12:10Z"
* eventCoding = http://minsal.cl/listaespera/CodeSystem/CSTipoEventoLE#referenciada
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"
* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/praR1)
/*FIN PARA BUNDLE REFERENCIA*/