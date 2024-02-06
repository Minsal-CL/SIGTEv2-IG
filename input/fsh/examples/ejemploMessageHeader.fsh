Instance: EjemploMessageHeader
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento Iniciar"
Description: "MesaggeHeader Evento Iniciar"


* meta.lastUpdated = "2023-01-20T14:12:10Z"
* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE#iniciar
* author = Reference(EjemploPractitionerRole) "Ernesto Sepulveda Manriquez en su rol de Iniciador"
* source.software = "Software San Juan Dios (SSJD)"
* source.endpoint = "http://link-to-sending.cl"
* focus = Reference(EjemploServiceRequest) 

/*EJEMPLOS PARA BUNDLE REFERENCIADA*/
Instance: EjemploMessageHeaderReferencia
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento Referenciar"
Description: "MesaggeHeader Evento Referenciar"

* meta.lastUpdated = "2023-02-13T14:12:10Z"
* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE#referenciar
* source.software = "Software San Juan Dios (SSJD)"
* source.endpoint = "http://link-to-sending.cl"
* focus = Reference(EjemploServiceRequestReferenciada)
* author = Reference(EjemploPractitionerRoleReferenciadorMHREFERENCIADA)
/*FIN PARA BUNDLE REFERENCIADA*/

/*EJEMPLOS PARA BUNDLE Terminar*/
Instance: EjemploMessageHeaderTerminar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento Terminar"
Description: "MesaggeHeader Evento Terminar"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE#terminar
* source.software = "Software Hospital Linares (SHL)"
* source.endpoint = "http://link-to-sending.cl"
* focus = Reference(EjemploServiceRequestTerminar)
* author = Reference(EjemploPractitionerRoleTerminar)
/*FIN PARA BUNDLE Terminar*/

/*EJEMPLOS PARA BUNDLE Revisar*/

Instance: EjemploMessageHeaderRevisar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento Revisar"
Description: "MesaggeHeader Evento Revisar"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* source.software = "Software Hospital Linares (SHL)"
* source.endpoint = "http://link-to-sending.cl"
* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE#revisar
* focus = Reference(EjemploServiceRequestRevisar)
* author = Reference(EjemploPractitionerRoleRevisar)

/*FIN PARA BUNDLE Revisar*/

/*EJEMPLOS PARA BUNDLE Agendar*/
Instance: EjemploMessageHeaderAgendar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento Agendar"
Description: "MesaggeHeader Evento Agendar"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"

* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE#agendar

* focus = Reference(EjemploAppointmentAgendar)
* author = Reference(EjemploPractitionerRoleAgendarMH)
/*FIN PARA BUNDLE Agendar*/

/*EJEMPLOS PARA BUNDLE Atender*/
Instance: EjemploMessageHeaderAtender
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento Atender"
Description: "MesaggeHeader Evento Atender"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* source.software = "SolucionInformatica"
* source.endpoint = "http://link-to-sending.cl"

* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE#atender

* focus = Reference(EjemploEncounterAtender)
* author = Reference(EjemploPractitionerRoleAtender)
/*FIN PARA BUNDLE Atender*/


/*EJEMPLOS PARA BUNDLE PRIORIZAR*/
Instance: EjemploMessageHeaderPriorizar
InstanceOf: MessageHeaderLE
Usage: #example
Title: "MesaggeHeader Evento Priorizar"
Description: "MesaggeHeader Evento Priorizar"
* meta.lastUpdated = "2023-02-14T14:12:10Z"
* source.software = "Software Hospital Linares (SHL)"
* source.endpoint = "http://link-to-sending.cl"
* eventCoding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE#priorizar
* focus = Reference(EjemploServiceRequestPriorizar) //----------
* author = Reference(EjemploPractitionerRolePriorizar) //-----


/*FIN PARA BUNDLE PRIORIZAR*/