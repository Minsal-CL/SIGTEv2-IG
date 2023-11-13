Instance: EjemploPractitionerRole
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento de Inicio"
Description: "PractitionerRole Evento de Inicio"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code.coding.code = #iniciador
* code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE"

/*EJEMPLOS PARA BUNDLE REFERENCIA*/
Instance: EjemploPractitionerRoleReferenciadorMHREFERENCIADA
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Referenciador Evento de Referenciada"
Description: "PractitionerRole Referenciador Evento de Referenciada"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/referenciaReferenciador)
* organization = Reference(http://acme.com/ehr/fhir/Organization/referenciaReferenciador)
* code.coding.code = #referenciador
* code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE"

Instance: EjemploPractitionerRoleAtendedorSRREFERENCIADA
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Atendedor Evento de Referenciada"
Description: "PractitionerRole Atendedor Evento de Referenciada"

* organization = Reference(http://acme.csom/ehr/fhir/Organization/referenciaAtendedor)
* code.coding.code = #atendedor
* code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE"
/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLOS PARA BUNDLE TERMINAR*/
Instance: EjemploPractitionerRoleTerminar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento de Terminar"
Description: "PractitionerRole Evento de Terminar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/terminar)
* organization = Reference(http://acme.com/ehr/fhir/Organization/terminar)
* code = #terminador
* code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE"
/*FIN PARA BUNDLE TERMINAR*/

/*EJEMPLOS PARA BUNDLE REVISAR*/
Instance: EjemploPractitionerRoleRevisar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento de Revisar"
Description: "PractitionerRole Evento de Revisar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/revisar)
* organization = Reference(http://acme.com/ehr/fhir/Organization/revisar)
* code = #revisor
* code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE AGENDARMH*/
Instance: EjemploPractitionerRoleAgendarMH
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento de Agendar MessageHeader"
Description: "PractitionerRole Evento de Agendar MessageHeader"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/PractitionerAgendarAgendador)
* organization = Reference(http://acme.com/ehr/fhir/Organization/agendar)
* code = #agendador
* code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE"
/*FIN PARA BUNDLE AGENDARMH*/

/*EJEMPLOS PARA BUNDLE AGENDARAPPO*/
Instance: EjemploPractitionerRoleAgendarAPPO
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento de Agendar Apponitment"
Description: "PractitionerRole Evento de Agendar Apponitment"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/agendarAtendedor)
//* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #atendedor
* code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE"
/*FIN PARA BUNDLE AGENDARAPPO*/



/*EJEMPLOS PARA BUNDLE PRIORIZAR*/
Instance: EjemploPractitionerRolePriorizar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento de Priorizar"
Description: "PractitionerRole Evento de Priorizar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/priorizar)
* organization = Reference(http://acme.com/ehr/fhir/Organization/priorizar)
* code.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE#priorizador
/*FIN PARA BUNDLE PRIORIZAR*/



/*EJEMPLOS PARA BUNDLE Atender*/
Instance: EjemploPractitionerRoleAtender
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento de Atender"
Description: "PractitionerRole Evento de Atender"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/atender)
* organization = Reference(http://acme.com/ehr/fhir/Organization/atender)
* code.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE#atendedor
/*FIN PARA BUNDLE Atender*/