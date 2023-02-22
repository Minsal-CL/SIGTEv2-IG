Instance: EjemploPractitionerRole
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Inicio"
Description: "Ejemplo de PractitionerRole Evento de Inicio"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #iniciador

/*EJEMPLOS PARA BUNDLE REFERENCIA*/
Instance: EjemploPractitionerRoleReferenciadorMHREFERENCIADA
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Referencia"
Description: "Ejemplo de PractitionerRole Evento de Referencia"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/referencia)
* organization = Reference(http://acme.com/ehr/fhir/Organization/referenciaAgendador)
* code = #referenciador

Instance: EjemploPractitionerRoleAgendadorSRREFERENCIADA
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Referencia"
Description: "Ejemplo de PractitionerRole Evento de Referencia"

//* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/referenciaAtendedor)
* code = #atendedor

/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLOS PARA BUNDLE TERMINAR*/
Instance: EjemploPractitionerRoleTerminar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Terminar"
Description: "Ejemplo de PractitionerRole Evento de Terminar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/terminar)
* organization = Reference(http://acme.com/ehr/fhir/Organization/terminar)
* code = #terminador
/*FIN PARA BUNDLE TERMINAR*/



/*EJEMPLOS PARA BUNDLE Revisar*/
Instance: EjemploPractitionerRoleRevisar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Revisar"
Description: "Ejemplo de PractitionerRole Evento de Revisar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/revisar)
* organization = Reference(http://acme.com/ehr/fhir/Organization/revisar)
* code = #revisor
/*FIN PARA BUNDLE Revisar*/

/*EJEMPLOS PARA BUNDLE Agendar*/
Instance: EjemploPractitionerRoleAgendarMH
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Agendar"
Description: "Ejemplo de PractitionerRole Evento de Agendar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/PractitionerAgendarAgendador)
* organization = Reference(http://acme.com/ehr/fhir/Organization/agendar)
* code = #agendador


//revisado JM
Instance: EjemploPractitionerRoleAgendarAPPO
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Agendar"
Description: "Ejemplo de PractitionerRole Evento de Agendar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/agendarAtendedor)
//* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #atendedor




/*FIN PARA BUNDLE Agendar*/