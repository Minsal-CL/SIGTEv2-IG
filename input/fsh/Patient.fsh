Profile: PacienteLE
Parent: PacienteCl
Id: PacienteLE
Title: "PacienteLE"
Description: "PacienteLE"

// EXTESIONES
* extension contains PaisOrigenNacionalidadCl named paisOrigen 1..1 MS
* extension contains IdentidadGenero named IdentidadGenero 1..1 MS
* extension contains Etnia named Etnia 0..1 MS
* extension contains ExtBoolean named Afrodescendiente 1..1 MS
//* extension contains ExtBoolean named  1..1 MS

//* extension contains TipoOtroTelefono named TipoOtroTelefono 1..1 MS
//* extension[Etnia].valueCodeableConcept.coding.code from CodPais

// FIN EXTENSIONES

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice creado para almacenar diferentes tipos de identificación"
* identifier contains identificacionPrincipal 1..1 MS and otraIdentificacion 0..1 MS

//* identifier[ide] MS
  //* use and type MS
    //* coding MS
      //* system and code MS

* identifier[identificacionPrincipal] MS
//* identifier[identificacionPrincipal].type 1..1 MS
//* identifier[identificacionPrincipal].coding 1..1 MS
      //* code 1..1 MS
      //* system 1..1 MS
      //* display 1..1 MS
 // * value 1..1 MS

* identifier.extension contains DigitoVerificador named DigitoVerificador 1..1 MS
* identifier[identificacionPrincipal].type 1..1 MS
* identifier[identificacionPrincipal].type.coding.code = #1
/*
* identifier[identificacionPrincipal].type.coding 1..1 MS
* identifier[identificacionPrincipal].type.coding.code 1..1 MS
* identifier[identificacionPrincipal].type.coding.system 1..1 MS
* identifier[identificacionPrincipal].type.coding.display 1..1 MS
*/
* identifier[identificacionPrincipal].type.coding.code from VSTipoIdentificador
* identifier[identificacionPrincipal].value 1..1 MS
* identifier[identificacionPrincipal].value ^short = "Numero de RUN sin digito verificador ni puntos"
* identifier[identificacionPrincipal].extension[DigitoVerificador] ^short = "Digito verificador del RUN"




* identifier[otraIdentificacion] MS
  //* type 1..1 MS
    //* coding 1..1 MS
    //  * code 1..1 MS
    //  * system 1..1 MS
      //* display 1..1 MS
  //* value 1..1 MS
* identifier[otraIdentificacion] MS
* identifier[otraIdentificacion].type 1..1 MS
//* identifier[otraIdentificacion].type.coding.code 
* identifier[otraIdentificacion].type.coding.code from VSTipoIdentificador


/*
* identifier[otraIdentificacion].type.coding 1..1 MS
* identifier[otraIdentificacion].type.coding.code 1..1 MS
* identifier[otraIdentificacion].type.coding.system 1..1 MS
* identifier[otraIdentificacion].type.coding.display 1..1 MS
* identifier[otraIdentificacion].value 1..1 MS
*/


/*
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.description = "Slice creado para almacenar nombre y nombresocial"
* name contains Nombres 1..1 MS and NombresSocial 0..1 MS

* name[Nombres] 1..1 MS
  * given 1..* MS
  * use 1..1 MS
  * family 1..1 MS


* name[Nombres].use ^short = "Uso del nombre del paciente"
* name[Nombres].use ^definition = "Este es el uso que se le da al nombre del paciente considerando que puede ser nombre oficial, temporal, seudonimo, entre otros, Pero por motivos legales este uso es Oficial "
* name[Nombres].use = #official  
* name[Nombres].family ^short = "Primer Apellido"
* name[Nombres].family ^definition = "Se debe ingresar el primer apellido, segun indica su identificacion personal"
* name[Nombres].family.extension contains SegundoApellido named SegundoApellido 0..1 MS



//* name[Nombres].family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named mothers-family 0..1 MS
//* name[Nombres].family.extension ^short = "Extensión para apellido materno"
//* name[Nombres].family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-fathers-family named fathers-family 0..1 MS
//* name[Nombres].family.extension ^short = "Extensión para apellido paterno"

* name[NombresSocial] 0..1 MS
  * text 0..1 MS  
  * family 0..0
  * given 1..* MS
  * given ^short = "Nombre Social"
  * given ^definition = "Nombre Social del Paciente"
  * prefix 0..0
  * suffix 0..0
  * period 0..0

* name[NombresSocial].use = #nickname
* name.use = #official  

*/

* birthDate 1..1 MS



* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "use"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "Slice creado para almacenar diferentes contactos"
* telecom contains TelefonoMovil1 1..1 MS and TelefonoMovil2 0..1 MS and TelefonoMovil3 0..1 MS and TelefonoFijo 0..1 MS and TelefonoOtro 0..1 MS

* telecom[TelefonoMovil1].rank = 1
* telecom[TelefonoMovil1].system = #phone
* telecom[TelefonoMovil1].use = #mobile

* telecom[TelefonoMovil2].rank = 2
* telecom[TelefonoMovil2].system = #phone
* telecom[TelefonoMovil2].use = #mobile 

* telecom[TelefonoMovil3].rank = 3
* telecom[TelefonoMovil3].system = #phone 
* telecom[TelefonoMovil3].use = #mobile

* telecom[TelefonoOtro].system = #email 
* telecom[TelefonoOtro].use = #home

* telecom.extension contains TipoOtroTelefono named TipoOtroTelefono1 1..1 MS
* telecom[TelefonoFijo].system = #phone 
* telecom[TelefonoFijo].use = #temp
* telecom[TelefonoFijo].extension[TipoOtroTelefono1]

//https://id.who.int/icd/release/11/mms
