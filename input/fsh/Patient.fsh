// Profile: PatientLE
// Parent: Patient
// Id: PatientLE
// Title: "Paciente LE"
// Description: "Paciente LE recurso que se utiliza para representar la información de identificación del paciente."
// * ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
// * ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// // EXTESIONES
// * extension contains PaisOrigenClLE named PaisOrigenCodigo 1..1 MS
// * extension contains NacionalidadCodigoClLE named NacionalidadCodigo 1..1 MS
// * extension contains IdentidadGenero named GeneroCodigo 1..1 MS
// //* extension contains http://hl7.org/fhir/StructureDefinition/patient-genderIdentity named GeneroCodigo 1..1 MS

// * extension contains PuebloIndigena named PuebloIndigena 1..1 MS
// * extension contains ExtBoolAfrodescendiente named Afrodescendiente 1..1 MS

// * name ^slicing.discriminator.type = #value
// * name ^slicing.discriminator.path = "use"
// * name ^slicing.rules = #open
// * name ^slicing.description = "Slice creado para nombres"
// * name contains NombreOficial 1..1 MS and NombreSocial 0..1 MS


// * name[NombreOficial].family.extension contains SegundoApellido named segundoApellido 0..1 MS
// * name[NombreOficial].family.extension ^short = "Extensión para el segundo apellido"
// * name[NombreOficial].use =  #official
// * name[NombreOficial].given 1..*
// * name[NombreOficial].prefix 0..0
// * name[NombreOficial].suffix 0..0
// * name[NombreOficial].period 0..0
// * name[NombreOficial].text 0..0

// * name[NombreSocial].use = #usual
// * name[NombreSocial].given 1..*
// * name[NombreSocial].text 0..0
// * name[NombreSocial].family 0..0
// * name[NombreSocial].prefix 0..0
// * name[NombreSocial].suffix 0..0
// * name[NombreSocial].period 0..0

// // FIN EXTENSIONES

// * identifier ^slicing.discriminator.type = #value
// * identifier ^slicing.discriminator.path = "type.coding.code"
// * identifier ^slicing.rules = #open
// * identifier ^slicing.description = "Slice creado para almacenar diferentes tipos de identificación"
// * identifier contains RUN 1..1 MS and RUNMaterno 0..* MS and FolioParto 0..* MS and Pasaporte 0..* MS and OtroDocumento 0..* MS and IDFonasa 0..* MS



// * identifier[RUN] MS

// * identifier[RUN].extension contains DigitoVerificador named DigitoVerificador 1..1 MS
// * identifier[RUN].type 1..1 MS
// * identifier[RUN].type.coding.code = #1

// * identifier[RUN].type from VSTipoIdentificador
// * identifier[RUN].value 1..1 MS
// * identifier[RUN].value ^short = "Numero de RUN sin digito verificador ni puntos"
// * identifier[RUN].extension[DigitoVerificador] ^short = "Digito verificador del RUN"

// * identifier[RUNMaterno] MS
// * identifier[RUNMaterno].extension contains DigitoVerificador named DigitoVerificador 1..1 MS
// * identifier[RUNMaterno].type 1..1 MS
// * identifier[RUNMaterno].type.coding.code = #2
// * identifier[RUNMaterno].type from VSTipoIdentificador

// * identifier[FolioParto] MS
// * identifier[FolioParto].type 1..1 MS
// * identifier[FolioParto].type.coding.code = #3
// * identifier[FolioParto].type from VSTipoIdentificador

// * identifier[Pasaporte] MS
// * identifier[Pasaporte].type 1..1 MS
// * identifier[Pasaporte].type.coding.code = #4
// * identifier[Pasaporte].type from VSTipoIdentificador

// * identifier[OtroDocumento] MS
// * identifier[OtroDocumento].type 1..1 MS
// * identifier[OtroDocumento].type.coding.code = #5
// * identifier[OtroDocumento].type from VSTipoIdentificador

// * identifier[IDFonasa] MS
// * identifier[IDFonasa].type 1..1 MS
// * identifier[IDFonasa].type.coding.code = #6
// * identifier[IDFonasa].type from VSTipoIdentificador

// * birthDate 1..1 MS

// * telecom ^slicing.discriminator.type = #value
// * telecom ^slicing.discriminator.path = "rank"
// * telecom ^slicing.rules = #open
// * telecom ^slicing.description = "Slice creado para almacenar diferentes contactos"
// * telecom contains TelefonoMovil1 1..1 MS and TelefonoMovil2 0..1 MS and TelefonoMovil3 0..1 MS and TelefonoFijo 0..1 MS and CorreoElectronico 0..1 MS and TelefonoOtro 0..1 MS

// * telecom[TelefonoMovil1].rank = 1
// * telecom[TelefonoMovil1].rank 1..1 MS
// * telecom[TelefonoMovil1].system = #phone
// * telecom[TelefonoMovil1].system 1..1 MS
// * telecom[TelefonoMovil1].use = #mobile

// * telecom[TelefonoMovil2].rank = 2
// * telecom[TelefonoMovil2].rank 1..1 MS
// * telecom[TelefonoMovil2].system = #phone
// * telecom[TelefonoMovil2].system 1..1 MS
// * telecom[TelefonoMovil2].use = #mobile 

// * telecom[TelefonoMovil3].rank = 3
// * telecom[TelefonoMovil3].rank 1..1 MS
// * telecom[TelefonoMovil3].system = #phone
// * telecom[TelefonoMovil3].system 1..1 MS 
// * telecom[TelefonoMovil3].use = #mobile

// * telecom[TelefonoFijo].rank = 4
// * telecom[TelefonoFijo].system = #phone 
// * telecom[TelefonoFijo].use = #temp
// * telecom[TelefonoFijo].extension[TipoOtroTelefono1]

// * telecom[CorreoElectronico].rank = 5
// * telecom[CorreoElectronico].system = #email 
// * telecom[CorreoElectronico].use = #home

// * telecom[TelefonoOtro].rank = 6
// * telecom[TelefonoOtro].extension contains TipoOtroTelefono named TipoOtroTelefonoCodigo 1..1 MS
// * telecom[TelefonoOtro].system = #phone 
// * telecom[TelefonoOtro].use = #temp


// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PacienteMinsalMPI
Parent: PacienteCl
Id: PacienteMinsalMPI
Title: "PacienteMPI"
Description: "Paciente definido para el Registro Maestro de Pacientes"

* extension contains PaisOrigenMPI named PaisOrigen 1..1 MS
* extension contains Religion named Religion 0..1 MS
// * extension contains SexoBiologico named SexoBiologico 1..1 MS
* extension contains IdentidadDeGenero named identidadGenero 0..1 MS
* extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named LugarDeNacimiento 1..1 MS
* extension contains PueblosOriginariosPerteneciente named PueblosOriginariosPerteneciente 1..1 MS

* extension contains PueblosAfrodescendiente named PueblosAfrodescendiente 0..1 MS

* extension contains PueblosOriginarios named PueblosOriginarios 0..1 MS
//* extension[PueblosOriginarios].valueCodeableConcept.text 0..1 MS


* extension[nacionalidad].url ^short = "Extensión de Nacionalidad para pacientes extranjeros"
* extension ^definition = "Para hacer uso de esta extensión se debe agregar el path: extension.url = \"nacionalidad\""


* identifier.type 1..1 MS
* identifier.type ^short = "Tipo de documento de Id (Extensible)"
* identifier.type ^definition = "Tipo de documento de Id (Extensible)"
* identifier.type ^comment = "Tipo de documento de Id (Extensible)"
* identifier.type from VSTipoIdentificador
* identifier.type ^binding.description = "Identificadores definidos por DEIS"

* gender ^short = "Sexo Registral del paciente"
* gender 1..1 MS

* extension[nacionalidad] 1..1 MS

* address.extension contains http://hl7.org/fhir/StructureDefinition/geolocation named geolocalizacion 0..1
* address.use 1..1 MS
* address.line 1..1 MS
* address.line ^short = "Explicas Pasaje Lircay 24, casa 3"
* address.line ^definition = "Explicas Pasaje Lircay 24, casa 3"
* address.period 0..1 MS
* address.period ^short = "Periodo de tiempo durante el  cual es válida la dirección entregada"
* address.extension contains SituacionCalle named SituacionCalle 0..1 MS



* telecom 1..* MS
//* telecom.system 1..1 MS
//* telecom.value 1..1 MS
* telecom.rank  MS
* telecom.period MS
* telecom.period ^short = "Periodo de tiempo durante el cual es válido el contacto del paciente"
* maritalStatus from VSEstadoCivil
* maritalStatus MS

* deceasedBoolean 1..1 MS
* deceasedBoolean ^short = "Información si el paciente esta fallecido"
* deceasedBoolean ^definition = "Información si el paciente esta fallecido"

* contact 0..* MS

