Instance: EjemploPractitioner
InstanceOf: PractitionerLE
Usage: #example
Title: "Practitioner Evento de Inicio"
Description: "Practitioner Evento de Inicio"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[RUN].extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/DigitoVerificador"
* identifier[RUN].extension.valueString = "K"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* name.use = #official
* name.given = "Luis"
* name.family = "Perez"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
//* gender = #male
//* birthDate = "1974-01-22"
* qualification[Tit].identifier.value = "tit"
* qualification[Tit].code.coding.code = #1
* qualification[Tit].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"


/*EJEMPLOS PARA BUNDLE REFERENCIA*/
Instance: EjemploPractitionerReferenciadorMHREFERENCIADA
InstanceOf: PractitionerLE
Usage: #example
Title: "Practitioner Referenciador Evento de Referenciada"
Description: "Practitioner Referenciador Evento de Referenciada"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[RUN].extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/DigitoVerificador"
* identifier[RUN].extension.valueString = "K"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* name.use = #official
* name.given = "Luis"
* name.family = "Perez"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* qualification[Tit].identifier.value = "tit"
* qualification[Tit].code.coding.code = #1
* qualification[Tit].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
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
* identifier[RUN].extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/DigitoVerificador"
* identifier[RUN].extension.valueString = "K"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* name.use = #official
* name.given = "Luis"
* name.family = "Perez"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* qualification[Tit].identifier.value = "tit"
* qualification[Tit].code.coding.code = #1
* qualification[Tit].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
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
* identifier[RUN].extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/DigitoVerificador"
* identifier[RUN].extension.valueString = "K"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* name.use = #official
* name.given = "Luis"
* name.family = "Perez"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* qualification[Tit].identifier.value = "tit"
* qualification[Tit].code.coding.code = #1
* qualification[Tit].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[Esp].identifier.value = "esp"
* qualification[Esp].code.coding.code = #2
* qualification[Esp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed"
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
* identifier[RUN].extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/DigitoVerificador"
* identifier[RUN].extension.valueString = "K"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* name.use = #official
* name.given = "Luis"
* name.family = "Perez"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* qualification[Tit].identifier.value = "tit"
* qualification[Tit].code.coding.code = #1
* qualification[Tit].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[Esp].identifier.value = "esp"
* qualification[Esp].code.coding.code = #2
* qualification[Esp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed"
* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.text = "Alergia e Inmunología Clínica"
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
* identifier[RUN].extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/DigitoVerificador"
* identifier[RUN].extension.valueString = "K"
* identifier[RUN].extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/DigitoVerificador"
* identifier[RUN].extension.valueString = "K"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* name.use = #official
* name.given = "Luis"
* name.family = "Perez"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* qualification[Tit].identifier.value = "tit"
* qualification[Tit].code.coding.code = #1
* qualification[Tit].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[Esp].identifier.value = "esp"
* qualification[Esp].code.coding.code = #2
* qualification[Esp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed"
* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.text = "Alergia e Inmunología Clínica"
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
* identifier[RUN].extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/DigitoVerificador"
* identifier[RUN].extension.valueString = "K"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* name.use = #official
* name.given = "Luis"
* name.family = "Perez"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* qualification[Tit].identifier.value = "tit"
* qualification[Tit].code.coding.code = #1
* qualification[Tit].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
/*FIN PARA BUNDLE Agendar*/

/*EJEMPLOS PARA BUNDLE PRIORIZAR*/
Instance: EjemploPractitionerPriorizar
InstanceOf: PractitionerLE
Usage: #example
Title: "Practitioner Evento de Priorizar"
Description: "Practitioner Evento de Priorizar"

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[RUN].extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/DigitoVerificador"
* identifier[RUN].extension.valueString = "K"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "2134"
* name.use = #official
* name.given = "Luis"
* name.family = "Perez"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* qualification[Tit].identifier.value = "tit"
* qualification[Tit].code.coding.code = #1
* qualification[Tit].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[Esp].identifier.value = "esp"
* qualification[Esp].code.coding.code = #2
* qualification[Esp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed"
/*FIN PARA BUNDLE PRIORIZAR*/