Profile: PacienteLP
Parent: PacienteCl
Id: PacienteLP
Title: "PacienteLP"
Description: "PacienteLP"

// EXTESIONES
* extension contains PaisOrigenNacionalidadCl named paisOrigen 1..1 MS
* extension contains IdentidadGenero named IdentidadGenero 1..1 MS
* extension contains Etnia named Etnia 0..1 MS
* extension contains ExtBoolean named Afrodescendiente 1..1 MS


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
* identifier[identificacionPrincipal].type 1..1 MS
* identifier[identificacionPrincipal].value 1..1 MS

* identifier[otraIdentificacion] MS
* identifier[otraIdentificacion].type 1..1 MS
* identifier[otraIdentificacion].value 1..1 MS

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
* telecom contains contacto1 1..1 MS and contacto2 1..1 MS and contacto3 1..1 MS and contacto4 0..1 MS and contacto5 0..1 MS

* telecom[contacto1].rank = 1
* telecom[contacto1].system = #phone
* telecom[contacto1].use = #mobile
* telecom[contacto2].rank = 2
* telecom[contacto2].system = #phone
* telecom[contacto2].use = #mobile 
* telecom[contacto3].rank = 3
* telecom[contacto3].system = #phone 
* telecom[contacto3].use = #mobile
* telecom[contacto4].system = #phone 
* telecom[contacto4].use = #temp
* telecom[contacto5].system = #email 
* telecom[contacto5].use = #home