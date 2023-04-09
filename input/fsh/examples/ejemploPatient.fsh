Instance: EjemploPatient
InstanceOf: PatientLE
Usage: #example
Title: "Patient Lista de Espera"
Description: "Patient Lista de Espera"

* extension[CodigoPaises].url = "http://minsal.cl/listaespera/StructureDefinition/CodigoPaises"
* extension[CodigoPaises].valueCodeableConcept.coding.code = #AD
* extension[CodigoPaises].valueCodeableConcept.text = "Andorra"
* extension[NacionalidadCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/NacionalidadCodigo"
* extension[NacionalidadCodigo].valueCodeableConcept.coding.code = #AD
* extension[NacionalidadCodigo].valueCodeableConcept.text = "Andorra"
* extension[IdentidadGenero].url = "http://minsal.cl/listaespera/StructureDefinition/IdentidadGenero"
* extension[GeneroCodigo].valueCodeableConcept.coding.code = #male
* extension[ExtBoolAfrodescendiente].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolAfrodescendiente"
* extension[ExtBoolAfrodescendiente].valueBoolean = false
* identifier.extension.url = "http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador"
* identifier.extension.valueString = "K"
* identifier.type.extension.url = "http://minsal.cl/listaespera/StructureDefinition/CodigoPaises"
* identifier.type.extension.valueCoding.code = #AD
* identifier.type = http://minsal.cl/listaespera/CodeSystem/CSTipoIdentificador#1 "RUN"
* identifier.value = "15999999"
* identifier.system = "http://www.acme.com/identifiers/patient"
* name[NombreOficial].use = #official
* name[NombreOficial].given = "Luis"
* name[NombreOficial].family = "Perez"
* name[NombreOficial].family.extension.url = "http://minsal.cl/listaespera/StructureDefinition/SegundoApellido"
* name[NombreOficial].family.extension.valueString = "sierra"
* name[NombreSocial].use = #usual
* name[NombreSocial].given = "Luisa"
* telecom[TelefonoMovil1].use = #mobile
* telecom[TelefonoMovil1].value = "569854875457"
* telecom[TelefonoMovil1].rank = 1
* gender = #male
* birthDate = "1995-12-12"
