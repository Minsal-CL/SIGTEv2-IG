Alias: $SegundoApellido = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido
Alias: $cl-address = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/cl-address


Profile: MINSALPrestadorAdministrativo
Parent: PrestadorCL
Id: MINSALPrestadorAdministrativo
Title: "MINSAL Prestador Administrativo"
Description: "Prestador Administrativo definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud."

* name 1..1 MS

* identifier ^short = "Id de los prestadores"
* identifier ^definition = "Identificador para cada prestador. El identificador principal en Chile es el Registro Único Nacional (RUN), identificador que es obligatorio. Además, se puede ingresar un ID extra para cada prestador, disponibilizado por Registro Nacional de Prestadores Institucionales (NRPI), este identificador es opcional"
* identifier ^comment = "Este elemento permite ingresar dos identificadores, uno de tipo RUN y uno de otro tipo de identificador"


* identifier 1..2
* identifier[run] ^short = "Identificador destinado a determinar el número de RUN"
* identifier[run] ^definition = "Corresponde al identificador (RUN) otorgado el Registro Civil de Chile"
  //* use 1..1 MS 
  //* use = #official
  * type 1..1 MS
  //* type from VSTipoIdentificadorDEIS
  * type ^short = "Descripción del identificador"
  * type ^definition = "Descripción para el tipo de identificador"
    * coding MS
      * system 0..1 MS
      * system ^short = "Sistema de codificación para el código de tipo de identificador"
      * code 1..1 MS
      * code = #1
      * code ^short = "Código que identifica al tipo de documento de identificador"
      * code ^definition = "Código que identifica al tipo de documento de identificador"
  
* identifier[pasaporte] 0..0 
* identifier[rnpi] 0..0 
* identifier[otro] 0..0 



* extension contains PaisOrigenNacionalidadCl named Nacionalidad 1..1 MS
* active MS

* telecom MS
* telecom ^definition = "Contacto del prestador"
  * system MS
  * system ^short = "Debe utilizar \"phone\" o \"email\"."
  * value MS
  * use MS
  * use ^short = "Uso del contacto descrito. Puede usar \"home | work | temp | old | mobile\""
  * rank 0..1 MS
  * rank ^short = "Ranking de preferencia de uso de contacto (el más alto es 1)"
  * rank ^definition = "Ranking de preferencia de uso de contacto (el más alto es 1)"
  * period 0..1 MS 
  * period ^short = "Período en el cual el contacto está o estuvo en uso"
  * period ^definition = "Período en el cual el contacto está o estuvo en uso"
    * start 0..1 MS
    * start ^short = "Inicio del uso del medio de contacto"
    * end 0..1 MS
    * end ^short = "Fecha en la cual ya se dejó de utilizar el medio de contacto"


* address only $cl-address
* address ^short = "Dirección según Guía Core-CL"
* address ^definition = "Dirección según Guía Core-CL"
* address MS



//* gender 1.. MS
//* gender ^short = "Sexo de nacimiento Registrado, male | female | other | unknown (requerido)"
//* gender ^definition = "Sexo de nacimiento Registrado"
* birthDate 1..1 MS
* birthDate ^short = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD"
* birthDate ^definition = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"
