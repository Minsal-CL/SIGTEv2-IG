Instance: EjemploMessageHeader
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento de Inicio"
Description: "MesaggeHeader Evento de Inicio"


* meta.lastUpdated = "2023-01-20T14:12:10Z"
* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSTipoEventoLE#iniciar
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"
* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/serv1)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/praR1)

/*EJEMPLOS PARA BUNDLE REFERENCIADA*/
Instance: EjemploMessageHeaderReferencia
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento de Referencia"
Description: "MesaggeHeader Evento de Referencia"


* meta.lastUpdated = "2023-02-13T14:12:10Z"
* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSTipoEventoLE#referenciar
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"
* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/referencia)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/referenciaAgendador)
/*FIN PARA BUNDLE REFERENCIADA*/

/*EJEMPLOS PARA BUNDLE Terminar*/
Instance: EjemploMessageHeaderTerminar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento de Terminar"
Description: "MesaggeHeader Evento de Terminar"


* meta.lastUpdated = "2023-02-14T14:12:10Z"
* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSTipoEventoLE#terminar
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"
* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/terminar)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/terminar)
/*FIN PARA BUNDLE Terminar*/

/*EJEMPLOS PARA BUNDLE Revisar*/
Instance: EjemploMessageHeaderRevisar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento de Revisar"
Description: "MesaggeHeader Evento de Revisar"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"

* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSTipoEventoLE#revisar

* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/revisar)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/revisar)
/*FIN PARA BUNDLE Revisar*/

/*EJEMPLOS PARA BUNDLE Agendar*/
Instance: EjemploMessageHeaderAgendar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento de Agendar"
Description: "MesaggeHeader Evento de Agendar"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"

* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSTipoEventoLE#agendar

* focus = Reference(http://acme.com/ehr/fhir/Appointment/agendar)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/agendarAgendador)
/*FIN PARA BUNDLE Agendar*/

/*EJEMPLOS PARA BUNDLE Atender*/
Instance: EjemploMessageHeaderAtender
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento de Atender"
Description: "MesaggeHeader Evento de Atender"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"

* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSTipoEventoLE#atender

* focus = Reference(http://acme.com/ehr/fhir/Encounter/EjemploEncounterAtender)
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/atender)
/*FIN PARA BUNDLE Atender*/


/*EJEMPLOS PARA BUNDLE PRIORIZAR*/
Instance: EjemploMessageHeaderPriorizar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento de Priorizar"
Description: "MesaggeHeader Evento de Priorizar"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"

* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSTipoEventoLE#priorizar

* focus = Reference(http://acme.com/ehr/fhir/ServiceRequest/priorizar) //----------
* author = Reference(http://acme.com/ehr/fhir/PractitionerRole/priorizar) //-----


/*FIN PARA BUNDLE PRIORIZAR*/