Profile: PacienteLE
Parent: PacienteCl
Id: PacienteLE
Title: "PacienteLE"
Description: "PacienteLE"

// EXTESIONES
* extension contains PaisOrigenNacionalidadClLE named PaisOrigenCodigo 1..1 MS
* extension contains PaisOrigenNacionalidadClLE named NacionalidadCodigo 1..1 MS
* extension contains IdentidadGenero named IdentidadGenero 1..1 MS
* extension contains PuebloIndigena named PuebloIndigena 0..1 MS
* extension contains ExtBoolean named Afrodescendiente 1..1 MS

// FIN EXTENSIONES

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice creado para almacenar diferentes tipos de identificación"
* identifier contains identificacionPrincipal 1..1 MS and OtraIdentificacion 0..1 MS



* identifier[identificacionPrincipal] MS

* identifier.extension contains DigitoVerificador named DigitoVerificador 1..1 MS
* identifier[identificacionPrincipal].type 1..1 MS
* identifier[identificacionPrincipal].type.coding.code = #1

* identifier[identificacionPrincipal].type.coding.code from VSTipoIdentificador
* identifier[identificacionPrincipal].value 1..1 MS
* identifier[identificacionPrincipal].value ^short = "Numero de RUN sin digito verificador ni puntos"
* identifier[identificacionPrincipal].extension[DigitoVerificador] ^short = "Digito verificador del RUN"

* identifier[OtraIdentificacion] MS
* identifier[OtraIdentificacion] MS
* identifier[OtraIdentificacion].type 1..1 MS
* identifier[OtraIdentificacion].type.coding.code from VSTipoIdentificador

* birthDate 1..1 MS

* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "use"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "Slice creado para almacenar diferentes contactos"
* telecom contains TelefonoMovil1 1..1 MS and TelefonoMovil2 0..1 MS and TelefonoMovil3 0..1 MS and TelefonoFijo 0..1 MS and CorreoElectronico 0..1 MS and TelefonoOtro 0..1 MS

* telecom[TelefonoMovil1].rank = 1
* telecom[TelefonoMovil1].system = #phone
* telecom[TelefonoMovil1].use = #mobile

* telecom[TelefonoMovil2].rank = 2
* telecom[TelefonoMovil2].system = #phone
* telecom[TelefonoMovil2].use = #mobile 

* telecom[TelefonoMovil3].rank = 3
* telecom[TelefonoMovil3].system = #phone 
* telecom[TelefonoMovil3].use = #mobile

* telecom[TelefonoFijo].system = #phone 
* telecom[TelefonoFijo].use = #temp
* telecom[TelefonoFijo].extension[TipoOtroTelefono1]

* telecom[CorreoElectronico].system = #email 
* telecom[CorreoElectronico].use = #home

* telecom[TelefonoOtro].extension contains TipoOtroTelefono named TipoOtroTelefonoCodigo 1..1 MS
* telecom[TelefonoOtro].system = #phone 
* telecom[TelefonoOtro].use = #temp