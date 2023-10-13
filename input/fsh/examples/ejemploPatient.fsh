// Instance: EjemploPatient
// InstanceOf: PatientLE
// Usage: #example
// Title: "Patient Lista de Espera"
// Description: "Patient Lista de Espera"

// * extension[PuebloIndigena].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/PuebloIndigena"
// * extension[PuebloIndigena].extension[PuebloIndigenaCodigo].valueCodeableConcept.coding.code = #1
// * extension[PuebloIndigena].extension[PuebloIndigenaCodigo].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSPuebloIndigena"
// * extension[PuebloIndigena].extension[PuebloIndigenaCodigo].valueCodeableConcept.text = "Mapuche"
// * extension[PuebloIndigena].extension[PuebloIndigenaPertenencia].valueBoolean = true
// * extension[CodigoPaises].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/CodigoPaises"
// * extension[CodigoPaises].valueCodeableConcept.coding.code = #AD
// * extension[CodigoPaises].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
// * extension[CodigoPaises].valueCodeableConcept.text = "Andorra"
// * extension[NacionalidadCodigo].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/NacionalidadCodigo"
// * extension[NacionalidadCodigo].valueCodeableConcept.coding.code = #AD
// * extension[NacionalidadCodigo].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
// * extension[NacionalidadCodigo].valueCodeableConcept.text = "Andorra"
// * extension[IdentidadGenero].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/IdentidadGenero"
// * extension[IdentidadGenero].valueCodeableConcept.coding.code = #1
// * extension[IdentidadGenero].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSIdentidaddeGenero"
// * extension[ExtBoolAfrodescendiente].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/ExtBoolAfrodescendiente"
// * extension[ExtBoolAfrodescendiente].valueBoolean = false
// * identifier.extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/DigitoVerificador"
// * identifier.extension.valueString = "K"
// * identifier.type.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises"
// * identifier.type.extension.valueCodeableConcept.coding.code = #AD
// * identifier.type.extension.valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
// * identifier.type.coding[0].code = #1
// * identifier.type.coding[0].system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSTipoIdentificador"
// * identifier.value = "15999999"
// * identifier.system = "http://www.acme.com/identifiers/patient"
// * name[NombreOficial].use = #official
// * name[NombreOficial].given = "Luis"
// * name[NombreOficial].family = "Perez"
// * name[NombreOficial].family.extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/SegundoApellido"
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

* extension[PaisOrigen].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/PaisOrigenMPI"
* extension[PaisOrigen].valueCodeableConcept.coding.code = #158
* extension[PaisOrigen].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[Religion].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/Religion"
* extension[Religion].valueCodeableConcept.coding.code = #1
* extension[Religion].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSReligion"
* extension[SexoBiologico].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/SexoBiologico"
* extension[SexoBiologico].valueCodeableConcept.coding.system = "http://hl7.org/fhir/administrative-gender"
* extension[SexoBiologico].valueCodeableConcept.coding.code = #male
* extension[identidadGenero].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/IdentidadDeGenero"
* extension[identidadGenero].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSIdentidaddeGenero"
* extension[identidadGenero].valueCodeableConcept.coding.code = #1
* extension[LugarDeNacimiento].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[LugarDeNacimiento].valueAddress.text = "Curicó"
* extension[PueblosOriginariosPerteneciente].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/PueblosOriginariosPerteneciente"
* extension[PueblosOriginariosPerteneciente].valueBoolean = true
* extension[PueblosAfrodescendiente].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/PueblosAfrodescendiente"
* extension[PueblosAfrodescendiente].valueBoolean = true
* extension[PueblosOriginarios].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/PueblosOriginarios"
* extension[PueblosOriginarios].valueCodeableConcept.coding.code = #01
* extension[PueblosOriginarios].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/PueblosOriginariosCS"
* extension[nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[nacionalidad].valueCodeableConcept.coding.code = #158
* extension[nacionalidad].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"


* identifier.type.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* identifier.type.extension.valueCodeableConcept.coding.code = #032
* identifier.type.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* identifier.type.coding[0].code = #01
* identifier.type.coding[0].system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"


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
* address.extension[SituacionCalle].url = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/StructureDefinition/SituacionCalle"
* address.extension[SituacionCalle].valueBoolean = true

* maritalStatus.coding.code = #01
* maritalStatus.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tiemposdeesperainteroperables/CodeSystem/CSEstadoCivil"
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