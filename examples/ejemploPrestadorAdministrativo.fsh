/*EJEMPLOS PARA BUNDLE AGENDAR*/
Instance: EjemploPractitionerAgendarAtendedor
InstanceOf: PrestadorProfesionalLE
Usage: #example
Title: "Practitioner Atendedor Evento Agendar"
Description: "Practitioner Atendedor Evento Agendar"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
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

* active = true
* birthDate = "1982-08-24"

* gender = #male

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
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.code = #152
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.display = "Chile"

* qualification[Esp].identifier.value = "esp"
* qualification[Esp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[Esp].code.coding.code = #1
* qualification[Esp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[Esp].code.text = "Cirujano Plastico"
* qualification[Esp].period.start = "2023-01-01"
* qualification[Esp].period.end = "2100-01-31"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[SubEsp].code.coding.code = #1
* qualification[SubEsp].code.coding.display = "MÉDICO CIRUJANO"
* qualification[SubEsp].code.text = "Cirujano Plastico en Oreja Derecha"
* qualification[SubEsp].period.start = "2024-01-01"
* qualification[SubEsp].period.end = "2100-01-31"
/*FIN PARA BUNDLE AGENDAR*/

/*EJEMPLOS PARA BUNDLE Agendar*/
Instance: EjemploPractitionerAgendarAgendador
InstanceOf: PrestadorAdministrativoLE
Usage: #example
Title: "Practitioner Agendador Evento Agendar"
Description: "Practitioner Agendador Evento Agendar"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name.family = "Perez"
* name.given = "Juan"

* identifier[run].use = #official
* identifier[run].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[run].type.coding.code = #1
* identifier[run].system = "https://api.cl/system/run"
* identifier[run].value = "32.333.333-3"

* active = true
* birthDate = "1982-08-24"

* gender = #male

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
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.code = #152
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.display = "Chile"
/*FIN PARA BUNDLE Agendar*/

/*EJEMPLOS PARA BUNDLE TERMINAR*/
Instance: EjemploPractitionerTerminar
InstanceOf: PrestadorProfesionalLE
Usage: #example
Title: "Practitioner Evento Terminar"
Description: "Practitioner Evento Terminar"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
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

* active = true
* birthDate = "1982-08-24"

* gender = #male

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
/*FIN PARA BUNDLE TERMINAR*/