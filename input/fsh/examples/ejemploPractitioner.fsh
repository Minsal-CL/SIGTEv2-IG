Instance: EjemploPractitioner
InstanceOf: MINSALPrestadorProfesional
Usage: #example
Title: "Practitioner Evento de Inicio"
Description: "Practitioner Evento de Inicio"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name.family = "Perez"
* name.given = "Juan"

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

* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.code = #05602
* address.city.extension[ComunasCl].valueCodeableConcept.coding.display =  "Algarrobo"

* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL" 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.code = #056 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.display = "San Antonio"

* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL" 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.code  = #05 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.display  = "Valparaíso"

* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.code = #152
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.display = "Chile"

//* qualification[Cert].identifier.value = "cert"
//* qualification[Cert].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
//* qualification[Cert].code.coding.code = #1
//* qualification[Cert].code.coding.display = "Médico(a) Cirujano(a)"
//* qualification[Cert].code.text = "Cirujano Plastico"
//* qualification[Cert].extension[Mencion].url = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/StructureDefinition/Mencion"
//* qualification[Cert].extension[Mencion].valueString = "Inmunohematología"

* qualification[Esp].identifier.value = "esp"
* qualification[Esp].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
* qualification[Esp].code.coding.code = #1
* qualification[Esp].code.coding.display = "Médico(a) Cirujano(a)"
* qualification[Esp].code.text = "Cirujano Plastico"
* qualification[Esp].period.start = "2023-01-01"
* qualification[Esp].period.end = "2100-01-31"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
* qualification[SubEsp].code.coding.code = #1
* qualification[SubEsp].code.coding.display = "Médico(a) Cirujano(a)"
* qualification[SubEsp].code.text = "Cirujano Plastico en Oreja Derecha"
* qualification[SubEsp].period.start = "2024-01-01"
* qualification[SubEsp].period.end = "2100-01-31"


/*EJEMPLOS PARA BUNDLE REFERENCIA*/
Instance: EjemploPractitionerReferenciadorMHREFERENCIADA
InstanceOf: MINSALPrestadorProfesional
Usage: #example
Title: "Practitioner Referenciador Evento de Referenciada"
Description: "Practitioner Referenciador Evento de Referenciada"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name.family = "Perez"
* name.given = "Juan"

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
* qualification[Esp].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
* qualification[Esp].code.coding.code = #1
* qualification[Esp].code.coding.display = "Médico(a) Cirujano(a)"
* qualification[Esp].code.text = "Cirujano Plastico"
* qualification[Esp].period.start = "2023-01-01"
* qualification[Esp].period.end = "2100-01-31"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
* qualification[SubEsp].code.coding.code = #1
* qualification[SubEsp].code.coding.display = "Médico(a) Cirujano(a)"
* qualification[SubEsp].code.text = "Cirujano Plastico en Oreja Derecha"
* qualification[SubEsp].period.start = "2024-01-01"
* qualification[SubEsp].period.end = "2100-01-31"

/*FIN PARA BUNDLE REFERENCIA*/

/*EJEMPLOS PARA BUNDLE REVISAR*/
Instance: EjemploPractitionerRevisar
InstanceOf: MINSALPrestadorProfesional
Usage: #example
Title: "Practitioner Evento Revisar"
Description: "Practitioner Evento Revisar"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name.family = "Perez"
* name.given = "Juan"

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
* qualification[Esp].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
* qualification[Esp].code.coding.code = #1
* qualification[Esp].code.coding.display = "Médico(a) Cirujano(a)"
* qualification[Esp].code.text = "Cirujano Plastico"
* qualification[Esp].period.start = "2023-01-01"
* qualification[Esp].period.end = "2100-01-31"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
* qualification[SubEsp].code.coding.code = #1
* qualification[SubEsp].code.coding.display = "Médico(a) Cirujano(a)"
* qualification[SubEsp].code.text = "Cirujano Plastico en Oreja Derecha"
* qualification[SubEsp].period.start = "2024-01-01"
* qualification[SubEsp].period.end = "2100-01-31"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE Atender*/
Instance: EjemploPractitionerAtender
InstanceOf: MINSALPrestadorProfesional
Usage: #example
Title: "Practitioner Evento de Atender"
Description: "Practitioner Evento de Atender"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name.family = "Perez"
* name.given = "Juan"

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
* qualification[Esp].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
* qualification[Esp].code.coding.code = #1
* qualification[Esp].code.coding.display = "Médico(a) Cirujano(a)"
* qualification[Esp].code.text = "Cirujano Plastico"
* qualification[Esp].period.start = "2023-01-01"
* qualification[Esp].period.end = "2100-01-31"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
* qualification[SubEsp].code.coding.code = #1
* qualification[SubEsp].code.coding.display = "Médico(a) Cirujano(a)"
* qualification[SubEsp].code.text = "Cirujano Plastico en Oreja Derecha"
* qualification[SubEsp].period.start = "2024-01-01"
* qualification[SubEsp].period.end = "2100-01-31"
/*FIN PARA BUNDLE REVISAR*/

/*EJEMPLOS PARA BUNDLE PRIORIZAR*/
Instance: EjemploPractitionerPriorizar
InstanceOf: MINSALPrestadorProfesional
Usage: #example
Title: "Practitioner Evento de Priorizar"
Description: "Practitioner Evento de Priorizar"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name.family = "Perez"
* name.given = "Juan"

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
* qualification[Esp].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
* qualification[Esp].code.coding.code = #1
* qualification[Esp].code.coding.display = "Médico(a) Cirujano(a)"
* qualification[Esp].code.text = "Cirujano Plastico"
* qualification[Esp].period.start = "2023-01-01"
* qualification[Esp].period.end = "2100-01-31"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
* qualification[SubEsp].code.coding.code = #1
* qualification[SubEsp].code.coding.display = "Médico(a) Cirujano(a)"
* qualification[SubEsp].code.text = "Cirujano Plastico en Oreja Derecha"
* qualification[SubEsp].period.start = "2024-01-01"
* qualification[SubEsp].period.end = "2100-01-31"
/*FIN PARA BUNDLE PRIORIZAR*/