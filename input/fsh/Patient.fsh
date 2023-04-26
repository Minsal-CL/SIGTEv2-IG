Profile: PatientLE
Parent: Patient
Id: PatientLE
Title: "Paciente LE"
Description: "Paciente LE recurso que se utiliza para representar la información de identificación del paciente."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// EXTESIONES
* extension contains PaisOrigenClLE named PaisOrigenCodigo 1..1 MS
* extension contains NacionalidadCodigoClLE named NacionalidadCodigo 1..1 MS
* extension contains IdentidadGenero named GeneroCodigo 1..1 MS
//* extension contains http://hl7.org/fhir/StructureDefinition/patient-genderIdentity named GeneroCodigo 1..1 MS

* extension contains PuebloIndigena named PuebloIndigena 1..1 MS
* extension contains ExtBoolAfrodescendiente named Afrodescendiente 1..1 MS

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.description = "Slice creado para nombres"
* name contains NombreOficial 1..1 MS and NombreSocial 0..1 MS


* name[NombreOficial].family.extension contains SegundoApellido named segundoApellido 0..1 MS
* name[NombreOficial].family.extension ^short = "Extensión para el segundo apellido"
* name[NombreOficial].use =  #official
* name[NombreOficial].given 1..*
* name[NombreOficial].prefix 0..0
* name[NombreOficial].suffix 0..0
* name[NombreOficial].period 0..0
* name[NombreOficial].text 0..0

* name[NombreSocial].use = #usual
* name[NombreSocial].given 1..*
* name[NombreSocial].text 0..0
* name[NombreSocial].family 0..0
* name[NombreSocial].prefix 0..0
* name[NombreSocial].suffix 0..0
* name[NombreSocial].period 0..0

// FIN EXTENSIONES

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice creado para almacenar diferentes tipos de identificación"
* identifier contains RUT 1..1 MS and RUTMaterno 0..* MS and FolioParto 0..* MS and Pasaporte 0..* MS and OtroDocumento 0..* MS and IDFonasa 0..* MS



* identifier[RUT] MS

* identifier[RUT].extension contains DigitoVerificador named DigitoVerificador 1..1 MS
* identifier[RUT].type 1..1 MS
* identifier[RUT].type.coding.code = #1

* identifier[RUT].type from VSTipoIdentificador
* identifier[RUT].value 1..1 MS
* identifier[RUT].value ^short = "Numero de RUN sin digito verificador ni puntos"
* identifier[RUT].extension[DigitoVerificador] ^short = "Digito verificador del RUN"

* identifier[RUTMaterno] MS
* identifier[RUTMaterno].type 1..1 MS
* identifier[RUTMaterno].type.coding.code = #2
* identifier[RUTMaterno].type from VSTipoIdentificador

* identifier[FolioParto] MS
* identifier[FolioParto].type 1..1 MS
* identifier[FolioParto].type.coding.code = #3
* identifier[FolioParto].type from VSTipoIdentificador

* identifier[Pasaporte] MS
* identifier[Pasaporte].type 1..1 MS
* identifier[Pasaporte].type.coding.code = #4
* identifier[Pasaporte].type from VSTipoIdentificador

* identifier[OtroDocumento] MS
* identifier[OtroDocumento].type 1..1 MS
* identifier[OtroDocumento].type.coding.code = #5
* identifier[OtroDocumento].type from VSTipoIdentificador

* identifier[IDFonasa] MS
* identifier[IDFonasa].type 1..1 MS
* identifier[IDFonasa].type.coding.code = #6
* identifier[IDFonasa].type from VSTipoIdentificador

* birthDate 1..1 MS

* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "rank"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "Slice creado para almacenar diferentes contactos"
* telecom contains TelefonoMovil1 1..1 MS and TelefonoMovil2 0..1 MS and TelefonoMovil3 0..1 MS and TelefonoFijo 0..1 MS and CorreoElectronico 0..1 MS and TelefonoOtro 0..1 MS

* telecom[TelefonoMovil1].rank = 1
* telecom[TelefonoMovil1].rank 1..1 MS
* telecom[TelefonoMovil1].system = #phone
* telecom[TelefonoMovil1].system 1..1 MS
* telecom[TelefonoMovil1].use = #mobile

* telecom[TelefonoMovil2].rank = 2
* telecom[TelefonoMovil2].rank 1..1 MS
* telecom[TelefonoMovil2].system = #phone
* telecom[TelefonoMovil2].system 1..1 MS
* telecom[TelefonoMovil2].use = #mobile 

* telecom[TelefonoMovil3].rank = 3
* telecom[TelefonoMovil3].rank 1..1 MS
* telecom[TelefonoMovil3].system = #phone
* telecom[TelefonoMovil3].system 1..1 MS 
* telecom[TelefonoMovil3].use = #mobile

* telecom[TelefonoFijo].rank = 4
* telecom[TelefonoFijo].system = #phone 
* telecom[TelefonoFijo].use = #temp
* telecom[TelefonoFijo].extension[TipoOtroTelefono1]

* telecom[CorreoElectronico].rank = 5
* telecom[CorreoElectronico].system = #email 
* telecom[CorreoElectronico].use = #home

* telecom[TelefonoOtro].rank = 6
* telecom[TelefonoOtro].extension contains TipoOtroTelefono named TipoOtroTelefonoCodigo 1..1 MS
* telecom[TelefonoOtro].system = #phone 
* telecom[TelefonoOtro].use = #temp