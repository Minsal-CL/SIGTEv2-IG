Alias: $SegundoApellido = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido
Alias: $cl-address = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/cl-address


Profile: PractitionerAdministrativoLE
Parent: PrestadorCL
Id: PractitionerAdministrativoLE
Title: "Prestador Administrativo LE"
Description: "Prestador Administrativo definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud."

* extension[SexoBiologico] 0..0 MS

* identifier[run] 1..1
* identifier[run].type 1..1 MS
* identifier[run].type.coding 1..1 MS
* identifier.value 1..1 MS

* identifier[rnpi] 0..0
* identifier[pasaporte] 0..0
* identifier[otro] 0..0

* name 1..1 MS
* name ^short = "Nombre del prestador administrativo"
  * family 1..1 MS
  * family ^short = "Apellidos del administrativo"
  * given 1..* MS 
  * given ^short = "Nombres del administrativo"

* active MS

* telecom MS
* telecom ^definition = "Contacto del prestador"
  * system 1..1 MS
  * system ^short = "Debe utilizar \"phone\" o \"email\"."
  * value 1..1 MS
  * use MS
  * use ^short = "Uso del contacto descrito. Puede usar \"home | work | temp | old | mobile\""
  * rank 0..1 MS
  * rank ^short = "Ranking de preferencia de uso de contacto (el más alto es 1)"
  * rank ^definition = "Ranking de preferencia de uso de contacto (el más alto es 1)"
  * period 0..1 MS 
  * period ^short = "Período en el cual el contacto está o estuvo en uso"
  * period ^definition = "Período en el cual el contacto está o estuvo en uso"
    * start 0..1 MS
    * start ^short = "Iniciar del uso del medio de contacto"
    * end 0..1 MS
    * end ^short = "Fecha en la cual ya se dejó de utilizar el medio de contacto"


* address only $cl-address
* address ^short = "Dirección según Guía Core-CL"
* address ^definition = "Dirección según Guía Core-CL"
* address MS

* qualification 0..*
* qualification[TituloProfesional] 0..*
* qualification[EspecialidadMedica] 0..0
* qualification[Subespecialidad] 0..0

* qualification[TituloProfesional]
  * code
    * text ^short = "Título Profesional como texto libre"

* birthDate 0..1 MS
* birthDate ^short = "Fecha de nacimiento del prestador administrativo. El formato debe ser YYYY-MM-DD"
* birthDate ^definition = "Fecha de nacimiento del prestador administrativo. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"
