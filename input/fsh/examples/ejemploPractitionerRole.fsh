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

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #referenciador

Instance: EjemploPractitionerRoleAgendadorSRREFERENCIADA
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Referencia"
Description: "Ejemplo de PractitionerRole Evento de Referencia"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #agendador

/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLOS PARA BUNDLE TERMINAR*/
Instance: EjemploPractitionerRoleTerminar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Terminar"
Description: "Ejemplo de PractitionerRole Evento de Terminar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #terminador
/*FIN PARA BUNDLE TERMINAR*/



/*EJEMPLOS PARA BUNDLE Revisar*/
Instance: EjemploPractitionerRoleRevisar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Revisar"
Description: "Ejemplo de PractitionerRole Evento de Revisar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #revisor
/*FIN PARA BUNDLE Revisar*/

/*EJEMPLOS PARA BUNDLE Agendar*/
Instance: EjemploPractitionerRoleAgendarMH
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Agendar"
Description: "Ejemplo de PractitionerRole Evento de Agendar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #agendador

Instance: EjemploPractitionerRoleAgendarAPPO
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Agendar"
Description: "Ejemplo de PractitionerRole Evento de Agendar"

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #atendedor




/*FIN PARA BUNDLE Agendar*/