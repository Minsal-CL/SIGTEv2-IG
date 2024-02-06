Instance: EjemploPractitionerIniciar
InstanceOf: PrestadorProfesionalLE
Usage: #example
Title: "Practitioner Evento Iniciar"
Description: "Practitioner Evento Iniciar"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name.use = #official
* name.family = "Sepulveda"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* name.given = "Ernesto"

* identifier[run].use = #official
* identifier[run].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[run].type.coding.code = #1
* identifier[run].system = "https://api.cl/system/run"
* identifier[run].value = "32.333.333-3"

* identifier[rnpi].use = #official
* identifier[rnpi].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[rnpi].type.coding.code = #2
* identifier[rnpi].value = "123884"

* identifier[otro].use = #secondary
* identifier[otro].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[otro].type.coding.code = #4
* identifier[otro].value = "123884"

* active = true
* gender = #female
* birthDate = "1982-08-24"

* telecom.system = #phone
* telecom.value = "+56982460152"
* telecom.use = #home
* telecom.rank = 1

* qualification[Esp].identifier.value = "esp"
* qualification[Esp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[Esp].code.coding.code = #1
* qualification[Esp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[Esp].code.text = "Cirujano Cardiovascular"
* qualification[Esp].period.start = "2023-01-01"
* qualification[Esp].period.end = "2100-01-31"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[SubEsp].code.coding.code = #1
* qualification[SubEsp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[SubEsp].code.text = "CardiologíaCardiotorácico"
* qualification[SubEsp].period.start = "2024-01-01"
* qualification[SubEsp].period.end = "2100-01-31"


/*EJEMPLOS PARA BUNDLE REFERENCIA*/
Instance: EjemploPractitionerReferenciadorMHREFERENCIADA
InstanceOf: PrestadorProfesionalLE
Usage: #example
Title: "Practitioner Referenciador Evento Referenciar"
Description: "Practitioner Referenciador Evento Referenciar"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name.use = #official
* name.family = "Sepulveda"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* name.given = "Ernesto"
* identifier[run].use = #official
* identifier[run].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[run].type.coding.code = #1
* identifier[run].system = "https://api.cl/system/run"
* identifier[run].value = "32.333.333-3"

* identifier[rnpi].use = #official
* identifier[rnpi].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[rnpi].type.coding.code = #2
* identifier[rnpi].value = "123884"

* identifier[otro].use = #secondary
* identifier[otro].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[otro].type.coding.code = #4
* identifier[otro].value = "123884"

* active = true
* gender = #female
* birthDate = "1982-08-24"

* telecom.system = #phone
* telecom.value = "+56982460152"
* telecom.use = #home
* telecom.rank = 1

* qualification[Esp].identifier.value = "esp"
* qualification[Esp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[Esp].code.coding.code = #1
* qualification[Esp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[Esp].code.text = "Cirujano Cardiovascular"
* qualification[Esp].period.start = "2023-01-01"
* qualification[Esp].period.end = "2100-01-31"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[SubEsp].code.coding.code = #1
* qualification[SubEsp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[SubEsp].code.text = "CardiologíaCardiotorácico"
* qualification[SubEsp].period.start = "2024-01-01"
* qualification[SubEsp].period.end = "2100-01-31"

/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLOS PARA BUNDLE REVISAR*/
Instance: EjemploPractitionerRevisar
InstanceOf: PrestadorProfesionalLE
Usage: #example
Title: "Practitioner Evento Revisar"
Description: "Practitioner Evento Revisar"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name.use = #official
* name.family = "Sepulveda"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* name.given = "Ernesto"

* identifier[run].use = #official
* identifier[run].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[run].type.coding.code = #1
* identifier[run].system = "https://api.cl/system/run"
* identifier[run].value = "32.333.333-3"

* identifier[rnpi].use = #official
* identifier[rnpi].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[rnpi].type.coding.code = #2
* identifier[rnpi].value = "123884"

* identifier[otro].use = #secondary
* identifier[otro].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[otro].type.coding.code = #4
* identifier[otro].value = "123884"

* active = true
* gender = #female
* birthDate = "1982-08-24"

* telecom.system = #phone
* telecom.value = "+56982460152"
* telecom.use = #home
* telecom.rank = 1

* qualification[Esp].identifier.value = "esp"
* qualification[Esp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[Esp].code.coding.code = #1
* qualification[Esp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[Esp].code.text = "Cirujano Cardiovascular"
* qualification[Esp].period.start = "2023-01-01"
* qualification[Esp].period.end = "2100-01-31"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[SubEsp].code.coding.code = #1
* qualification[SubEsp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[SubEsp].code.text = "CardiologíaCardiotorácico"
* qualification[SubEsp].period.start = "2024-01-01"
* qualification[SubEsp].period.end = "2100-01-31"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE Atender*/
Instance: EjemploPractitionerAtender
InstanceOf: PrestadorProfesionalLE
Usage: #example
Title: "Practitioner Evento Atender"
Description: "Practitioner Evento Atender"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name.use = #official
* name.family = "Sepulveda"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* name.given = "Ernesto"

* identifier[run].use = #official
* identifier[run].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[run].type.coding.code = #1
* identifier[run].system = "https://api.cl/system/run"
* identifier[run].value = "32.333.333-3"

* identifier[rnpi].use = #official
* identifier[rnpi].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[rnpi].type.coding.code = #2
* identifier[rnpi].value = "123884"

* identifier[otro].use = #secondary
* identifier[otro].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[otro].type.coding.code = #4
* identifier[otro].value = "123884"

* active = true
* gender = #female
* birthDate = "1982-08-24"

* telecom.system = #phone
* telecom.value = "+56982460152"
* telecom.use = #home
* telecom.rank = 1

* qualification[Esp].identifier.value = "esp"
* qualification[Esp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[Esp].code.coding.code = #1
* qualification[Esp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[Esp].code.text = "Cirujano Cardiovascular"
* qualification[Esp].period.start = "2023-01-01"
* qualification[Esp].period.end = "2100-01-31"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[SubEsp].code.coding.code = #1
* qualification[SubEsp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[SubEsp].code.text = "CardiologíaCardiotorácico"
* qualification[SubEsp].period.start = "2024-01-01"
* qualification[SubEsp].period.end = "2100-01-31"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE PRIORIZAR*/
Instance: EjemploPractitionerPriorizar
InstanceOf: PrestadorProfesionalLE
Usage: #example
Title: "Practitioner Evento Priorizar"
Description: "Practitioner Evento Priorizar"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name.use = #official
* name.family = "Sepulveda"
* name.family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name.family.extension.valueString = "Sierra"
* name.given = "Ernesto"

* identifier[run].use = #official
* identifier[run].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[run].type.coding.code = #1
* identifier[run].system = "https://api.cl/system/run"
* identifier[run].value = "32.333.333-3"

* identifier[rnpi].use = #official
* identifier[rnpi].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[rnpi].type.coding.code = #2
* identifier[rnpi].value = "123884"

* identifier[otro].use = #secondary
* identifier[otro].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[otro].type.coding.code = #4
* identifier[otro].value = "123884"

* active = true
* gender = #female
* birthDate = "1982-08-24"

* telecom.system = #phone
* telecom.value = "+56982460152"
* telecom.use = #home
* telecom.rank = 1

* qualification[Esp].identifier.value = "esp"
* qualification[Esp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[Esp].code.coding.code = #1
* qualification[Esp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[Esp].code.text = "Cirujano Cardiovascular"
* qualification[Esp].period.start = "2023-01-01"
* qualification[Esp].period.end = "2100-01-31"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[SubEsp].code.coding.code = #1
* qualification[SubEsp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[SubEsp].code.text = "CardiologíaCardiotorácico"
* qualification[SubEsp].period.start = "2024-01-01"
* qualification[SubEsp].period.end = "2100-01-31"
/*FIN PARA BUNDLE PRIORIZAR*/