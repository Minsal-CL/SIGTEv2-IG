Instance: EjemploPractitioner
InstanceOf: PractitionerLE
Usage: #example
Title: "Practitioner Evento de Inicio"
Description: "Practitioner Evento de Inicio"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"

//* gender = #male
//* birthDate = "1974-01-22"
* qualification.identifier.value = "cert"
* qualification.code.coding.system = "http://terminology.cens.cl/CodeSystem/certMedicos"
* qualification.code.coding.display = "Medico Cirujano"
* qualification.code.text = "Certificado(s)"


/*EJEMPLOS PARA BUNDLE REFERENCIA*/
Instance: EjemploPractitionerReferenciadorMHREFERENCIADA
InstanceOf: PractitionerLE
Usage: #example
Title: "Practitioner Referenciador Evento de Referenciada"
Description: "Practitioner Referenciador Evento de Referenciada"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* qualification.identifier.value = "cert"
* qualification.code.coding.system = "http://terminology.cens.cl/CodeSystem/certMedicos"
* qualification.code.coding.display = "Medico Cirujano"
* qualification.code.text = "Certificado(s)"
/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLOS PARA BUNDLE TERMINAR*/
Instance: EjemploPractitionerTerminar
InstanceOf: PractitionerLE
Usage: #example
Title: "Practitioner Evento Terminar"
Description: "Practitioner Evento Terminar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
/*FIN PARA BUNDLE TERMINAR*/

/*EJEMPLOS PARA BUNDLE REVISAR*/
Instance: EjemploPractitionerRevisar
InstanceOf: PractitionerLE
Usage: #example
Title: "Practitioner Evento Revisar"
Description: "Practitioner Evento Revisar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.code = #01
* qualification[Cert].code.coding.system = "http://terminology.cens.cl"
* qualification[Cert].code.coding.display = "Medico"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE Atender*/
Instance: EjemploPractitionerAtender
InstanceOf: PractitionerLE
Usage: #example
Title: "Practitioner Evento de Atender"
Description: "Practitioner Evento de Atender"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.code = #01
* qualification[Cert].code.coding.system = "http://terminology.cens.cl"
* qualification[Cert].code.coding.display = "Medico"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE Agendar*/
Instance: EjemploPractitionerAgendarAtendedor
InstanceOf: PractitionerLE
Usage: #example
Title: "Practitioner Atendedor Evento de Agendar"
Description: "Practitioner Atendedor Evento de Agendar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.code = #01
* qualification[Cert].code.coding.system = "http://terminology.cens.cl"
* qualification[Cert].code.coding.display = "Medico"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE Agendar*/
Instance: EjemploPractitionerAgendarAgendador
InstanceOf: PractitionerLE
Usage: #example
Title: "Practitioner Agendador Evento de Agendar"
Description: "Practitioner Agendador Evento de Agendar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.code = #01
* qualification[Cert].code.coding.system = "http://terminology.cens.cl"
* qualification[Cert].code.coding.display = "Medico"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE PRIORIZAR*/
Instance: EjemploPractitionerPriorizar
InstanceOf: PractitionerLE
Usage: #example
Title: "Practitioner Evento de Priorizar"
Description: "Practitioner Evento de Priorizar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.code = #01
* qualification[Cert].code.coding.system = "http://terminology.cens.cl"
* qualification[Cert].code.coding.display = "Medico"
/*FIN PARA BUNDLE PRIORIZAR*/