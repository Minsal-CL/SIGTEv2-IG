Profile: PatientLE
Parent: PacienteCl
Id: PatientLE
Title: "Patient LE"
Description: "Paciente definido para el Registro Maestro de Pacientes"

* extension contains PaisOrigenMPI named PaisOrigen 1..1 MS
* extension contains Religion named Religion 0..1 MS
* extension contains PueblosOriginariosPerteneciente named PueblosOriginariosPerteneciente 1..1 MS
* extension contains PueblosAfrodescendiente named PueblosAfrodescendiente 0..1 MS
* extension contains PueblosOriginarios named PueblosOriginarios 0..1 MS
* extension[nacionalidad] 1..1 MS
* extension[IdentidadDeGenero] 1..1 MS

* identifier.type 1..1 MS
* identifier.type ^short = "Tipo de documento"
* identifier.type ^definition = "Tipo de documento"
* identifier.type ^comment = "Tipo de documento"
* identifier.type from VSTipoIdentificador
* identifier.type ^binding.description = "Identificadores definidos por DEIS"
* identifier.type.extension[paisEmisionDocumento] 1..1 MS



* gender ^short = "Sexo Registral del paciente"
* gender 1..1 MS



* address.extension contains http://hl7.org/fhir/StructureDefinition/geolocation named geolocalizacion 0..1
* address.extension[geolocalizacion] ^short = "Dirección absoluta, es decir, latitud y longitud." 
* address.use 1..1 MS

* address.line 1..1 MS
* address.line ^short = "Calle o avenida, numero y casa o dpto"
* address.line ^definition = "Calle o avenida, numero y casa o dpto"
* address.period 0..1 MS
* address.period ^short = "Periodo de tiempo durante el  cual es válida la dirección entregada"
* address.extension contains SituacionCalle named SituacionCalle 0..1 MS


* birthDate 1..1 MS

* telecom 1..* MS
* telecom.rank MS
* telecom.rank ^short = "Orden de uso del método de contacto, siendo 1 = prioritario"
* telecom.system ^short = "Orden de uso del método de contacto, siendo 1 = prioritario"
* telecom.period MS
* telecom.period ^short = "Para completar este campo utilice solo los valores \"phone | email\""

* maritalStatus from VSEstadoCivil
* maritalStatus MS
* maritalStatus ^short = "Estado civil del paciente"

* deceased[x] 1..1 MS
* deceased[x] ^short = "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento."
* deceased[x] ^definition = "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento."

* contact 0..* MS