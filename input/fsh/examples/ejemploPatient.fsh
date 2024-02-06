// Instance: EjemploPatient
// InstanceOf: PatientLE
// Usage: #example
// Title: "Patient Lista de Espera"
// Description: "Patient Lista de Espera"

// * extension[PuebloIndigena].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PuebloIndigena"
// * extension[PuebloIndigena].extension[PuebloIndigenaCodigo].valueCodeableConcept.coding.code = #1
// * extension[PuebloIndigena].extension[PuebloIndigenaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPuebloIndigena"
// * extension[PuebloIndigena].extension[PuebloIndigenaCodigo].valueCodeableConcept.text = "Mapuche"
// * extension[PuebloIndigena].extension[PuebloIndigenaPertenencia].valueBoolean = true
// * extension[CodigoPaises].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/CodigoPaises"
// * extension[CodigoPaises].valueCodeableConcept.coding.code = #AD
// * extension[CodigoPaises].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
// * extension[CodigoPaises].valueCodeableConcept.text = "Andorra"
// * extension[NacionalidadCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/NacionalidadCodigo"
// * extension[NacionalidadCodigo].valueCodeableConcept.coding.code = #AD
// * extension[NacionalidadCodigo].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
// * extension[NacionalidadCodigo].valueCodeableConcept.text = "Andorra"
// * extension[IdentidadGenero].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/IdentidadGenero"
// * extension[IdentidadGenero].valueCodeableConcept.coding.code = #1
// * extension[IdentidadGenero].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSIdentidaddeGenero"
// * extension[ExtBoolAfrodescendiente].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtBoolAfrodescendiente"
// * extension[ExtBoolAfrodescendiente].valueBoolean = false
// * identifier.extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/DigitoVerificador"
// * identifier.extension.valueString = "K"
// * identifier.type.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises"
// * identifier.type.extension.valueCodeableConcept.coding.code = #AD
// * identifier.type.extension.valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
// * identifier.type.coding[0].code = #1
// * identifier.type.coding[0].system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoIdentificador"
// * identifier.value = "15999999"
// * identifier.system = "http://www.acme.com/identifiers/patient"
// * name[NombreOficial].use = #official
// * name[NombreOficial].given = "Luis"
// * name[NombreOficial].family = "Perez"
// * name[NombreOficial].family.extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SegundoApellido"
// * name[NombreOficial].family.extension.valueString = "sierra"
// * name[NombreSocial].use = #usual
// * name[NombreSocial].given = "Luisa"
// * telecom[TelefonoMovil1].use = #mobile
// * telecom[TelefonoMovil1].value = "569854875457"
// * telecom[TelefonoMovil1].rank = 1
// * gender = #male
// * birthDate = "1995-12-12"

Instance: EjemploPatient
InstanceOf: PatientLE
Usage: #example
Title: "Patient Lista de Espera"
Description: "Patient Lista de Espera"

* extension[PaisOrigen].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PaisOrigenMPI"
* extension[PaisOrigen].valueCodeableConcept.coding.code = #152
* extension[PaisOrigen].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Religion].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/Religion"
* extension[Religion].valueCodeableConcept.coding.code = #1
* extension[Religion].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSReligion"
* extension[SexoBiologico].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico"
* extension[SexoBiologico].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSSexoListadoDeis"
* extension[SexoBiologico].valueCodeableConcept.coding.code = #1
* extension[identidadGenero].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/IdentidadDeGenero"
* extension[identidadGenero].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSIdentidaddeGenero"
* extension[identidadGenero].valueCodeableConcept.coding.code = #1
* extension[LugarDeNacimiento].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[LugarDeNacimiento].valueAddress.text = "Curicó"
* extension[PueblosOriginariosPerteneciente].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosOriginariosPerteneciente"
* extension[PueblosOriginariosPerteneciente].valueBoolean = true
* extension[PueblosAfrodescendiente].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosAfrodescendiente"
* extension[PueblosAfrodescendiente].valueBoolean = true
* extension[PueblosOriginarios].url = "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosOriginarios"
* extension[PueblosOriginarios].valueCodeableConcept.coding.code = #01
* extension[PueblosOriginarios].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/PueblosOriginariosCS"
* extension[nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[nacionalidad].valueCodeableConcept.coding.code = #152
* extension[nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"


* identifier.type.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* identifier.type.extension.valueCodeableConcept = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais#152 "Chile"
* identifier.type = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#01 "Run"
* identifier.system = "http://www.acme.com/identifiers/patient"
* identifier.value = "15999999"

* telecom.system = #phone
* telecom.value = "999888777"
* telecom.use = #mobile

* active = true
* maritalStatus = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoCivil#99 "Desconocido"

* name[NombreOficial].use = #official
* name[NombreOficial].text = "Anibal Diaz Cortés"
* name[NombreOficial].family = "Diaz"
* name[NombreOficial].family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name[NombreOficial].family.extension.valueString = "Cortés"
* name[NombreOficial].given = "Anibal"
* birthDate = "1955-10-20"
* deceasedBoolean = false
* gender = #male