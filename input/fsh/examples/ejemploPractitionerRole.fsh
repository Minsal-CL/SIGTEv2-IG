Instance: EjemploPractitionerRole
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento Iniciar"
Description: "PractitionerRole Evento Iniciar"

* practitioner = Reference(EjemploPractitionerIniciar) "Ernesto Sepulveda Sierra"
* organization = Reference(EjemploOrganization) "Centro de Salud Familiar San Juan Dios"
* code.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE#iniciador

/*EJEMPLOS PARA BUNDLE REFERENCIA*/
Instance: EjemploPractitionerRoleReferenciadorMHREFERENCIADA
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Referenciador Evento Referenciar"
Description: "PractitionerRole Referenciador Evento Referenciar"

* practitioner = Reference(EjemploPractitionerReferenciadorMHREFERENCIADA)
* organization = Reference(EjemploOrganizationReferencia)
* code.coding.code = #referenciador
* code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE"

Instance: EjemploPractitionerRoleAtendedorSRREFERENCIADA
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Atendedor Evento Referenciar"
Description: "PractitionerRole Atendedor Evento Referenciar"

* organization = Reference(EjemploOrganizationReferencia)
* code.coding.code = #atendedor
* code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE"
/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLOS PARA BUNDLE TERMINAR*/
Instance: EjemploPractitionerRoleTerminar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento Terminar"
Description: "PractitionerRole Evento Terminar"

* practitioner = Reference(EjemploPractitionerTerminar)
* organization = Reference(EjemploOrganizationTerminar)
* code = #terminador
* code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE"
/*FIN PARA BUNDLE TERMINAR*/

/*EJEMPLOS PARA BUNDLE REVISAR*/
Instance: EjemploPractitionerRoleRevisar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento Revisar"
Description: "PractitionerRole Evento Revisar"

* practitioner = Reference(EjemploPractitionerRevisar)
* organization = Reference(EjemploOrganizationRevisar)
* code = #revisor
* code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE AGENDARMH*/
Instance: EjemploPractitionerRoleAgendarMH
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento Agendar MessageHeader"
Description: "PractitionerRole Evento Agendar MessageHeader"

* practitioner = Reference(EjemploPractitionerAgendarAgendador)
* organization = Reference(EjemploOrganizationAgendar)
* code.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE#agendador
/*FIN PARA BUNDLE AGENDARMH*/

/*EJEMPLOS PARA BUNDLE AGENDARAPPO*/
Instance: EjemploPractitionerRoleAgendarAPPO
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento Agendar Apponitment"
Description: "PractitionerRole Evento Agendar Apponitment"

* practitioner = Reference(EjemploPractitionerAgendarAtendedor)
* organization = Reference(EjemploOrganizationAtender)
* code.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE#atendedor
/*FIN PARA BUNDLE AGENDARAPPO*/



/*EJEMPLOS PARA BUNDLE PRIORIZAR*/
Instance: EjemploPractitionerRolePriorizar
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento Priorizar"
Description: "PractitionerRole Evento Priorizar"

* practitioner = Reference(EjemploPractitionerPriorizar)
* organization = Reference(EjemploOrganizationPriorizar)
* code.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE#priorizador
/*FIN PARA BUNDLE PRIORIZAR*/



/*EJEMPLOS PARA BUNDLE Atender*/
Instance: EjemploPractitionerRoleAtender
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "PractitionerRole Evento Atender"
Description: "PractitionerRole Evento Atender"

* practitioner = Reference(EjemploPractitionerAtender)
* organization = Reference(EjemploOrganizationAtender)
* code.coding = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE#atendedor
/*FIN PARA BUNDLE Atender*/