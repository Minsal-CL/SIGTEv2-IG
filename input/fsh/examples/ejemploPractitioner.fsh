Instance: EjemploPractitioner
InstanceOf: PractitionerLE
Usage: #example
Title: "Ejemplo de Practitioner Evento de Inicio"
Description: "Ejemplo de Practitioner Evento de Inicio"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[OtrosID].type = http://terminology.cens.cl/CodeSystem/listaespera#ValorRNPI
* identifier[OtrosID].use = #secondary
* identifier[OtrosID].value = "2134"

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
Title: "Ejemplo de Practitioner Evento de Referencia y Terminar"
Description: "Ejemplo de Practitioner Evento de Referencia y Terminar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[OtrosID].type = http://terminology.cens.cl/CodeSystem/listaespera#ValorRNPI
* identifier[OtrosID].use = #secondary
* identifier[OtrosID].value = "2134"
* qualification.identifier.value = "cert"
* qualification.code.coding.system = "http://terminology.cens.cl/CodeSystem/certMedicos"
* qualification.code.coding.display = "Medico Cirujano"
* qualification.code.text = "Certificado(s)"
/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLOS PARA BUNDLE TERMINAR*/
Instance: EjemploPractitionerTerminar
InstanceOf: PractitionerLE
Usage: #example
Title: "Ejemplo de Practitioner Evento Terminar"
Description: "Ejemplo de Practitioner Evento Terminar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[OtrosID].type = http://terminology.cens.cl/CodeSystem/listaespera#ValorRNPI
* identifier[OtrosID].use = #secondary
* identifier[OtrosID].value = "2134"
/*FIN PARA BUNDLE TERMINAR*/

/*EJEMPLOS PARA BUNDLE REVISAR*/
Instance: EjemploPractitionerRevisar
InstanceOf: PractitionerLE
Usage: #example
Title: "Ejemplo de Practitioner Evento de Referencia y Terminar"
Description: "Ejemplo de Practitioner Evento de Referencia y Terminar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[OtrosID].type = http://terminology.cens.cl/CodeSystem/listaespera#ValorRNPI
* identifier[OtrosID].use = #secondary
* identifier[OtrosID].value = "2134"
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.code = #01
* qualification[Cert].code.coding.system = "http://terminology.cens.cl"
* qualification[Cert].code.coding.display = "Medico"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE Atender*/
Instance: EjemploPractitionerAtender
InstanceOf: PractitionerLE
Usage: #example
Title: "Ejemplo de Practitioner Evento de Atender"
Description: "Ejemplo de Practitioner Evento de Atender"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[OtrosID].type = http://terminology.cens.cl/CodeSystem/listaespera#ValorRNPI
* identifier[OtrosID].use = #secondary
* identifier[OtrosID].value = "2134"
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.code = #01
* qualification[Cert].code.coding.system = "http://terminology.cens.cl"
* qualification[Cert].code.coding.display = "Medico"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE Agendar*/
Instance: EjemploPractitionerAgendarAtendedor
InstanceOf: PractitionerLE
Usage: #example
Title: "Ejemplo de Practitioner Evento de Agendar"
Description: "Ejemplo de Practitioner Evento de Agendar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[OtrosID].type = http://terminology.cens.cl/CodeSystem/listaespera#ValorRNPI
* identifier[OtrosID].use = #secondary
* identifier[OtrosID].value = "2134"
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.code = #01
* qualification[Cert].code.coding.system = "http://terminology.cens.cl"
* qualification[Cert].code.coding.display = "Medico"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE Agendar*/
Instance: EjemploPractitionerAgendarAgendador
InstanceOf: PractitionerLE
Usage: #example
Title: "Ejemplo de Practitioner Evento de Agendar"
Description: "Ejemplo de Practitioner Evento de Agendar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[OtrosID].type = http://terminology.cens.cl/CodeSystem/listaespera#ValorRNPI
* identifier[OtrosID].use = #secondary
* identifier[OtrosID].value = "2134"
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.code = #01
* qualification[Cert].code.coding.system = "http://terminology.cens.cl"
* qualification[Cert].code.coding.display = "Medico"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE PRIORIZAR*/
Instance: EjemploPractitionerPriorizar
InstanceOf: PractitionerLE
Usage: #example
Title: "Ejemplo de Practitioner Evento de Priorizar"
Description: "Ejemplo de Practitioner Evento de Priorizar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[OtrosID].type = http://terminology.cens.cl/CodeSystem/listaespera#ValorRNPI
* identifier[OtrosID].use = #secondary
* identifier[OtrosID].value = "2134"
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.code = #01
* qualification[Cert].code.coding.system = "http://terminology.cens.cl"
* qualification[Cert].code.coding.display = "Medico"
/*FIN PARA BUNDLE PRIORIZAR*/