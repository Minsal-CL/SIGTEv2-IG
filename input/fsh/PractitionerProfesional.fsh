Alias: $SegundoApellido = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido
Alias: $cl-address = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/cl-address

Profile: PractitionerProfesionalLE
Parent: PrestadorCL
Id: PractitionerProfesionalLE
Title: "Prestador Profesional LE"
Description: "Prestador Profesional Individual definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud."

* extension contains https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises named Nacionalidad 0..1 MS
* extension[SexoBiologico] 0..0 

* identifier 1..2
* identifier ^short = "Identificador de identidad del Profesional.
Corresponde a tres slices:"

* identifier[run] 1..1 MS
* identifier[run] ^short = "Identificador destinado a determinar el número de RUN"
* identifier[run].use = #official
* identifier[run].use ^short = "Uso del identificador"
* identifier[run].use 1..1 MS
* identifier[run] ^definition = "Corresponde al identificador (RUN) otorgado el Registro Civil de Chile"
  * type 1..1 MS
  * type from VSIdentificadorPrestador
  * type ^short = "Descripción del identificador"
  * type ^definition = "Descripción para el tipo de identificador"
    * coding MS
    * coding ^short = "Código definido por un sistema terminológico"
      * system 0..1 MS
      * system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
      * system ^short = "Sistema de codificación para el tipo de identificador"
      * code 1..1 MS
      * code = #01
      * code ^short = "Código que identifica al tipo de documento de identificador"
      * code ^definition = "Código que identifica al tipo de documento de identificador"
  * value 1..1 MS
  * value ^short = "Número RUN"
  * value ^definition = "Valor RUN"

* identifier[rnpi] 0..1 MS
* identifier[rnpi] ^short = "Identificador para RNPI"
  //* use 0..1 MS
  //* use = #secondary
  * use ^short = "Se define el uso de este identificador"
  * use ^definition = "Se definirá este uso siempre como \"secondary\""
  * type 1..1 MS
  * type from VSIdentificadorPrestador
  * type ^short = "Descripción del identificador"
  * type ^definition = "Descripción para el tipo de identificador"
    * coding MS
    * coding ^short = "Código definido por un sistema terminológico"
      * system 0..1 MS
      * code 1..1 MS
      * code = #13
      * system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
      * system ^short = "Sistema de codificación para el código de tipo de identificador"
      * code ^short = "Código que identifica al tipo de documento de identificador"
      * code ^definition = "Código que identifica al tipo de documento de identificador. Será #98 para RNPI"
  * value 1..1 MS
  * value ^short = "Número RNPI"
  * value ^definition = "Valor RNPI entregado por la SuperIntendecia de Salud"

* identifier[pasaporte] 0..0
* identifier[otro] 0..0

* active MS

* name 1..1 MS
* name ^short = "Nombre(s) y apellido(s) del profesional"
  * family 1..1 MS
  * family ^short = "Primer apellido del profesional"
  * family.extension[segundoApellido] MS
  * family.extension[segundoApellido] ^short = "Segundo apellido del profesional"
  * given 1..* MS 
  * given ^short = "Nombre(s) del Profesional"

* birthDate 1..1 MS
* birthDate ^short = "Fecha de nacimiento del prestador profesional. El formato debe ser YYYY-MM-DD"
* birthDate ^definition = "Fecha de nacimiento del prestador profesional. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"

* telecom MS
  * system 1..1 MS
  * system ^short = "Debe utilizar \"phone\" o \"email\"."
  * value 1..1 MS
  * rank 0..1 MS
    * ^short = "Ranking de preferencia en el uso del contacto"
    * ^definition = "Ranking de preferencia en el uso del contacto"

* address only $cl-address
* address 0..1 MS
* address.use 1..1 MS
* address.use = #work
* address ^short = "Dirección según Guía Core-CL"
* address.line 1..1 MS
* address.line ^short = "Calle o avenida, numero y casa o dpto"
* address.line ^definition = "Calle o avenida, numero y casa o dpto"
* address.period 0..1 MS
* address.period ^short = "Periodo de tiempo durante el  cual es válida la dirección entregada"

* qualification 1..* MS
* qualification.code from VSTituloProfesional (example)
* qualification[TituloProfesional] 1..* MS
* qualification contains 
    EspecialidadOdontologica 0..* MS and
    EspecialidadBioQuimica 0..* MS and
    EspecialidadFarmacologica 0..* MS

* qualification[TituloProfesional].code.text 1..1
* qualification[EspecialidadMedica].code.text 1..1
* qualification[Subespecialidad].code.text 1..1
* qualification[EspecialidadMedica].code from VSIdentificadorPrestador
* qualification[EspecialidadOdontologica].code.text 1..1
* qualification[EspecialidadBioQuimica].code.text 1..1
* qualification[EspecialidadFarmacologica].code.text 1..1

* qualification[TituloProfesional].identifier 1..1 MS
* qualification[EspecialidadMedica].identifier 1..1 MS
* qualification[Subespecialidad].identifier 1..1 MS
* qualification[EspecialidadOdontologica].identifier 1..1 MS
* qualification[EspecialidadBioQuimica].identifier 1..1 MS
* qualification[EspecialidadFarmacologica].identifier 1..1 MS


* qualification[TituloProfesional] ^short = "Especificación de los Títulos o Certificados Profesionales que tiene el Prestador"
* qualification[TituloProfesional] ^definition = "Listado de Títulos o Cetificados Profesionales que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[TituloProfesional].code MS
* qualification[TituloProfesional].code ^short = "Representación del título profesional"
* qualification[TituloProfesional].code.text ^short = "Representación textual del título profesional"
* qualification[TituloProfesional].code from VSTituloProfesional
* qualification[TituloProfesional].period 0..1 MS
  * ^short = "Período en el cual se entregó el título considerando fecha de emisión y de caducidad"
  * start ^short = "Fecha de emisión"
  * end ^short = "Fecha de expiración" 
* qualification[TituloProfesional].issuer 0..1 MS
  * ^short = "Entidad que otorga el título"
  * ^definition  = "El nombre de la entidad se solicitará en texto libre"
  * display ^short = "La entidad que otorga en texto libre"
  * display ^definition = "La entidad que otorga en texto libre"
* qualification[TituloProfesional].extension contains Mencion named Mencion 0..1 MS

* qualification[EspecialidadOdontologica] ^short = "Especialidad Odontológica que tiene el Prestador"
  * ^definition = "Especialidades definidas en Norma Técnica 820"
  * identifier.value = "EspOdo"
  * identifier.value ^short = "Valor único para el identificador"
  * code MS
  * code ^short = "Representación de la especialidad odontológica del prestador"
    * text ^short = "Representación textual de la especialidad odontológica del prestador"
  * code from VSEspecialidadOdont
  * period 0..1 MS
    * ^short = "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad"
    * start ^short = "Fecha de emisión"
    * end ^short = "Fecha de expiración" 
  * issuer 0..1 MS
    * ^short = "Entidad que otorga la especialidad"
    * ^definition = "El nombre de la entidad se solicitará en texto libre"
    * display ^short = "La entidad que otorga en texto libre"
    * display ^definition = "La entidad que otorga en texto libre"

* qualification[EspecialidadMedica].period ^short = "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad"
  * start ^short = "Fecha de emisión"
  * end ^short = "Fecha de expiración" 
* qualification[EspecialidadMedica].code from VSEspecialidadMed
* qualification[EspecialidadMedica].issuer 0..1 MS
  * ^short = "Entidad que otorga la especialidad"
  * ^definition = "El nombre de la entidad se solicitará en displayo libre"
  * display ^short = "La entidad que otorga en texto libre"
  * display ^definition = "La entidad que otorga en texto libre"
* qualification[EspecialidadMedica].period 0..1 MS
  * ^short = "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad"
  * start ^short = "Fecha de emisión"
  * end ^short = "Fecha de expiración" 
* qualification[EspecialidadMedica].issuer 0..1 MS
  * ^short = "Entidad que otorga la especialidad"
  * ^definition = "El nombre de la entidad se solicitará en texto libre"
  * display ^short = "La entidad que otorga en texto libre"
  * display ^definition = "La entidad que otorga en texto libre"


* qualification[Subespecialidad].period ^short = "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad"
  * start ^short = "Fecha de emisión"
  * end ^short = "Fecha de expiración" 
* qualification[Subespecialidad].code from VSEspecialidadMed
* qualification[Subespecialidad].issuer 0..1 MS
  * ^short = "Entidad que otorga la Subespecialidad"
  * ^definition = "El nombre de la entidad se solicitará en display libre"
  * display ^short = "La entidad que otorga en texto libre"
  * display ^definition = "La entidad que otorga en texto libre"
* qualification[Subespecialidad].period 0..1 MS
  * ^short = "Período en el cual se entregó la Subespecialidad considerando fecha de emisión y de caducidad"
  * start ^short = "Fecha de emisión"
  * end ^short = "Fecha de expiración" 
* qualification[Subespecialidad].issuer 0..1 MS
  * ^short = "Entidad que otorga la especialidad"
  * ^definition = "El nombre de la entidad se solicitará en texto libre"
  * display ^short = "La entidad que otorga en texto libre"
  * display ^definition = "La entidad que otorga en texto libre"


* qualification[EspecialidadBioQuimica] ^short = "Especialidad Bioquímica que tiene el Prestador"
  * ^definition = "Especialidades definidas en Norma Técnica 820"
  * identifier.value = "EspBioQ"
  * identifier.value ^short = "Valor único para el identificador"
  * code MS
  * code ^short = "Representación de la especialidad bioquímica del prestador"
    * text ^short = "Representación textual de la especialidad odontológica del prestador"
  * code from VSEspecialidadBioqca

* qualification[EspecialidadFarmacologica] ^short = "Especialidad Farmacéutica o Química Farmacéutica que tiene el Prestador"
  * ^definition = "Especialidades definidas en Norma Técnica 820"
  * identifier.value = "EspFarma"
  * identifier.value ^short = "Valor único para el identificador"
  * code MS
  * code ^short = "Representación de la especialidad famaceútica o químico farmaceútica del prestador"
    * text ^short = "Representación textual de la especialidad famaceútica o químico farmaceútica del prestador"
  * code from VSEspecialidadFarma
  * period 0..1 MS
    * ^short = "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad"
    * start ^short = "Fecha de emisión"
    * end ^short = "Fecha de expiración" 
  * issuer 0..1 MS
    * ^short = "Entidad que otorga la especialidad"
    * ^definition = "El nombre de la entidad se solicitará en texto libre"
    * display ^short = "La entidad que otorga en texto libre"
    * display ^definition = "La entidad que otorga en texto libre"