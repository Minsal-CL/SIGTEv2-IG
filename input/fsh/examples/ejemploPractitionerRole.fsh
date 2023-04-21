Instance: EjemploPractitionerRole
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento de Inicio"
Description: "PractitionerRole Evento de Inicio"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code.coding.code = #iniciador
* code.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSPractitionerTipoRolLE"

/*EJEMPLOS PARA BUNDLE REFERENCIA*/
Instance: EjemploPractitionerRoleReferenciadorMHREFERENCIADA
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Referenciador Evento de Referenciada"
Description: "PractitionerRole Referenciador Evento de Referenciada"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/referencia)
* organization = Reference(http://acme.com/ehr/fhir/Organization/referenciaAgendador)
* code = #referenciador
/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLOS PARA BUNDLE REFERENCIA*/
Instance: EjemploPractitionerRoleAgendadorSRREFERENCIADA
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Agendador Evento de Referenciada"
Description: "PractitionerRole Agendador Evento de Referenciada"

* organization = Reference(http://acme.com/ehr/fhir/Organization/referenciaAtendedor)
* code = #atendedor
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
/*FIN PARA BUNDLE AGENDARAPPO*/



/*EJEMPLOS PARA BUNDLE PRIORIZAR*/
Instance: EjemploPractitionerRolePriorizar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento de Priorizar"
Description: "PractitionerRole Evento de Priorizar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/priorizar)
* organization = Reference(http://acme.com/ehr/fhir/Organization/priorizar)
* code = #Priorizador
/*FIN PARA BUNDLE PRIORIZAR*/



/*EJEMPLOS PARA BUNDLE Atender*/
Instance: EjemploPractitionerRoleAtender
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento de Atender"
Description: "PractitionerRole Evento de Atender"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/atender)
* organization = Reference(http://acme.com/ehr/fhir/Organization/atender)
* code = #Atendedor
/*FIN PARA BUNDLE Atender*/