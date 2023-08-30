// Instance: EjemploPatient
// InstanceOf: PatientLE
// Usage: #example
// Title: "Patient Lista de Espera"
// Description: "Patient Lista de Espera"

// * extension[PuebloIndigena].url = "http://minsal.cl/listaespera/StructureDefinition/PuebloIndigena"
// * extension[PuebloIndigena].extension[PuebloIndigenaCodigo].valueCodeableConcept.coding.code = #1
// * extension[PuebloIndigena].extension[PuebloIndigenaCodigo].valueCodeableConcept.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSPuebloIndigena"
// * extension[PuebloIndigena].extension[PuebloIndigenaCodigo].valueCodeableConcept.text = "Mapuche"
// * extension[PuebloIndigena].extension[PuebloIndigenaPertenencia].valueBoolean = true
// * extension[CodigoPaises].url = "http://minsal.cl/listaespera/StructureDefinition/CodigoPaises"
// * extension[CodigoPaises].valueCodeableConcept.coding.code = #AD
// * extension[CodigoPaises].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
// * extension[CodigoPaises].valueCodeableConcept.text = "Andorra"
// * extension[NacionalidadCodigo].url = "http://minsal.cl/listaespera/StructureDefinition/NacionalidadCodigo"
// * extension[NacionalidadCodigo].valueCodeableConcept.coding.code = #AD
// * extension[NacionalidadCodigo].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
// * extension[NacionalidadCodigo].valueCodeableConcept.text = "Andorra"
// * extension[IdentidadGenero].url = "http://minsal.cl/listaespera/StructureDefinition/IdentidadGenero"
// * extension[IdentidadGenero].valueCodeableConcept.coding.code = #1
// * extension[IdentidadGenero].valueCodeableConcept.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSIdentidaddeGenero"
// * extension[ExtBoolAfrodescendiente].url = "http://minsal.cl/listaespera/StructureDefinition/ExtBoolAfrodescendiente"
// * extension[ExtBoolAfrodescendiente].valueBoolean = false
// * identifier.extension.url = "http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador"
// * identifier.extension.valueString = "K"
// * identifier.type.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises"
// * identifier.type.extension.valueCodeableConcept.coding.code = #AD
// * identifier.type.extension.valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
// * identifier.type.coding[0].code = #1
// * identifier.type.coding[0].system = "http://minsal.cl/listaespera/CodeSystem/CSTipoIdentificador"
// * identifier.value = "15999999"
// * identifier.system = "http://www.acme.com/identifiers/patient"
// * name[NombreOficial].use = #official
// * name[NombreOficial].given = "Luis"
// * name[NombreOficial].family = "Perez"
// * name[NombreOficial].family.extension.url = "http://minsal.cl/listaespera/StructureDefinition/SegundoApellido"
// * name[NombreOficial].family.extension.valueString = "sierra"
// * name[NombreSocial].use = #usual
// * name[NombreSocial].given = "Luisa"
// * telecom[TelefonoMovil1].use = #mobile
// * telecom[TelefonoMovil1].value = "569854875457"
// * telecom[TelefonoMovil1].rank = 1
// * gender = #male
// * birthDate = "1995-12-12"

Instance: EjemploPatient
InstanceOf: PacienteMinsalMPI
Usage: #example
Title: "Patient Lista de Espera"
Description: "Patient Lista de Espera"

* extension[PaisOrigen].url = "http://minsal.cl/listaespera/StructureDefinition/PaisOrigenMPI"
* extension[PaisOrigen].valueCodeableConcept.coding.code = #158
* extension[PaisOrigen].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[Religion].url = "http://minsal.cl/listaespera/StructureDefinition/Religion"
* extension[Religion].valueCodeableConcept.coding.code = #1
* extension[Religion].valueCodeableConcept.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSReligion"
* extension[SexoBiologico].url = "http://minsal.cl/listaespera/StructureDefinition/SexoBiologico"
* extension[SexoBiologico].valueCodeableConcept.coding.display = "Hombre"
* extension[identidadGenero].url = "http://minsal.cl/listaespera/StructureDefinition/IdentidadDeGenero"
* extension[identidadGenero].valueCodeableConcept.coding.display = "Hombre"
* extension[LugarDeNacimiento].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[LugarDeNacimiento].valueAddress.text = "Curicó"
* extension[PueblosOriginariosPerteneciente].url = "http://minsal.cl/listaespera/StructureDefinition/PueblosOriginariosPerteneciente"
* extension[PueblosOriginariosPerteneciente].valueBoolean = true
* extension[PueblosAfrodescendiente].url = "http://minsal.cl/listaespera/StructureDefinition/PueblosAfrodescendiente"
* extension[PueblosAfrodescendiente].valueBoolean = true
* extension[PueblosOriginarios].url = "http://minsal.cl/listaespera/StructureDefinition/PueblosOriginarios"
* extension[PueblosOriginarios].valueCodeableConcept.coding.code = #01
* extension[PueblosOriginarios].valueCodeableConcept.coding.system = "http://minsal.cl/listaespera/CodeSystem/PueblosOriginariosCS"
* extension[nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[nacionalidad].valueCodeableConcept.coding.code = #158
* extension[nacionalidad].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"


* identifier.type.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* identifier.type.extension.valueCodeableConcept.coding.code = #AD
* identifier.type.extension.valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
// * identifier.type.coding[0].code = #01
// * identifier.type.coding[0].system = "http://minsal.cl/listaespera/CodeSystem/CSTipoIdentificador"
* identifier.type.coding[0].code = #NNCHL
* identifier.type.coding[0].system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI"


* identifier.value = "15999999"
* identifier.system = "http://www.acme.com/identifiers/patient"

* gender = #male

* address.extension[geolocalizacion].url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* address.extension[geolocalizacion].extension[latitude].url = "latitude"
* address.extension[geolocalizacion].extension[latitude].valueDecimal = 31.123
* address.extension[geolocalizacion].extension[longitude].url = "longitude"
* address.extension[geolocalizacion].extension[longitude].valueDecimal = 31.123
* address.use = #home
* address.line = "El boldo 4 #97"
* address.extension[SituacionCalle].url = "http://minsal.cl/listaespera/StructureDefinition/SituacionCalle"
* address.extension[SituacionCalle].valueBoolean = true


* maritalStatus.coding.code = #01
* maritalStatus.coding.system = "http://minsal.cl/listaespera/CodeSystem/CSEstadoCivil"
* deceasedBoolean = false




* name[NombreOficial].use = #official
* name[NombreOficial].given = "Luis"
* name[NombreOficial].family = "Perez"
* name[NombreOficial].family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name[NombreOficial].family.extension.valueString = "sierra"
* name[NombreSocial].use = #usual
* name[NombreSocial].given = "Luisa"
* telecom.use = #mobile
* telecom.value = "569854875457"
* telecom.rank = 1
* telecom.system = #phone
* birthDate = "1995-12-12"