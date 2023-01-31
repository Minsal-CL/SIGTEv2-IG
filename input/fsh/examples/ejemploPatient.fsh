Instance: EjemploPatient
InstanceOf: Patient
Usage: #example
Title: "Ejemplo de Patient Evento de Inicio"
Description: ""

* extension[CodigoPaises].url = "http://minsal.cl/listaespera/StructureDefinition/CodigoPaises"
* extension[CodigoPaises].valueCodeableConcept.coding.code = #AD
* extension[CodigoPaises].valueCodeableConcept.text = "Andorra"
* extension[NacionalidadCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/NacionalidadCodigo"
* extension[NacionalidadCodigo].valueCodeableConcept.coding.code = #AD
* extension[NacionalidadCodigo].valueCodeableConcept.text = "Andorra"
* extension[IdentidadGenero].url = "http://minsal.cl/listaespera/StructureDefinition/IdentidadGenero"
* extension[IdentidadGenero].valueCodeableConcept.coding.code = #01
* extension[ExtBoolAfrodescendiente].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolAfrodescendiente"
* extension[ExtBoolAfrodescendiente].valueBoolean = false
* identifier.extension.url = "http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador"
* identifier.extension.valueString = "K"
* identifier.type.extension.url = "http://minsal.cl/listaespera/StructureDefinition/CodigoPaises"
* identifier.type.extension.valueCoding.code = #AD
* identifier.type = http://minsal.cl/listaespera/CodeSystem/CSTipoIdentificador#1 "RUN"
* identifier.value = "15999999"
* identifier.system = "http://www.acme.com/identifiers/patient"
* name[0].use = #official
* name[=].given = "Luis"
* name[=].family = "Perez"
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
* name[=].family.extension.valueString = "sierra"
* name[+].use = #usual
* name[=].given = "Luis"
* telecom.use = #mobile
* telecom.value = "569854875457"
* telecom.rank = 1
