Instance: EjemploPractitionerRole
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Inicio"
Description: ""

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #iniciador

/*EJEMPLOS PARA BUNDLE REFERENCIA*/
Instance: EjemploPractitionerRoleReferencia
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Referencia"
Description: ""

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #referenciador
/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLOS PARA BUNDLE TERMINAR*/
Instance: EjemploPractitionerRoleTerminar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo de PractitionerRole Evento de Terminar"
Description: ""

* practitioner = Reference(http://acme.com/ehr/fhir/Practitioner/pra1)
* organization = Reference(http://acme.com/ehr/fhir/Organization/org1)
* code = #terminador
/*FIN PARA BUNDLE TERMINAR*/



