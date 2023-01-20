// No tiene nombre 

Profile: PractitionerLE
Parent: PrestadorCL
Id: PractitionerLE
Title: "PractitionerLE"
Description: "PractitionerLE"



//* identifier ^slicing.discriminator.type = #value
//* identifier ^slicing.discriminator.path = "use"
//* identifier ^slicing.rules = #open
//* identifier ^slicing.description = "Slice creado para almacenar diferentes tipos de identificación"
//* identifier contains identificacionPrincipal 1..1 MS and OtraIdentificacion 0..1 MS



//* identifier[identificacionPrincipal] MS
//
* identifier[RUN].extension contains DigitoVerificador named DigitoVerificador 1..1 MS
* identifier[RUN].type 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
    * system 1..1 MS
* identifier[RUN].type.coding.code = #1
//
//* identifier[identificacionPrincipal].type.coding.code from VSTipoIdentificador
//* identifier[identificacionPrincipal].value 1..1 MS
//* identifier[identificacionPrincipal].value ^short = "Numero de RUN sin digito verificador ni puntos"
//* identifier[identificacionPrincipal].extension[DigitoVerificador] ^short = "Digito verificador del RUN"
//
//* identifier[OtraIdentificacion] MS
//* identifier[OtraIdentificacion] MS
//* identifier[OtraIdentificacion].type 1..1 MS
//* identifier[OtraIdentificacion].type.coding.code from VSTipoIdentificador

/*
* identifier  MS

* identifier 1..* 
* identifier ^short = "Id de los prestadores"
* identifier ^definition = "Identificador para cada prestador. El identificador principal en Chile es el Registro Único Nacional (RUN), identificador que es obligatorio. Además, se puede ingresar un ID extra para cada prestador, disponibilizado por Registro Nacional de Prestadores Institucionales (NRPI), este identificador es opcional"
* identifier ^comment = "Este elemento permite ingresar dos identificadores, uno de tipo RUN y uno de tipo RNPI" 


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Este slice permite agregar una identificacion basada RUN y/o basada en el RNPI"
* identifier contains RUN 1..1 MS and OtrosID 0..* MS

* identifier[RUN]
  * use 1..1 MS
  * system 0..1 MS
  * value 1..1 MS
* identifier[RUN] ^short = "Identificador destinado a almacenar el número de RUN" 
* identifier[RUN] ^definition = "Corresponde al identificador (RUN) otorgado el Registro Civil de Chile"
* identifier[RUN].use ^short = "Se define el uso de este identificador"
* identifier[RUN].use ^definition = "Se definirá este uso siempre como \"official\" debido a que cualquier ID presentado para motivos de este perfil deb ser de este tipo"
* identifier[RUN].use = #official
* identifier[RUN].system ^short = "endPoint que valida el RUN"
* identifier[RUN].system ^definition = "Define la url del endPoint a la cual apunta la API, para validar el RUN"
* identifier[RUN].system ^comment = "Se define el el endPoint al cual debe apuntar a la API, con el fin de validar que el numero de RUN ingresado exista y que sea correcto. Por momento se usará la url = \"http://api_run/run\""
* identifier[RUN].value ^short = "Número de RUN"
* identifier[RUN].value ^definition = "Valor del RUN en la Cédula de Identidad entregada por el Registro Civil, en formato sin puntos y con guión para diferencia el dígito verificador"

* identifier[OtrosID]
  * use 1..1 MS
  * system 0..1 MS
  * value 1..1 MS
* identifier[OtrosID] ^short = "Para otros identificadores como: RNPI, Pasaporte o el que el notificador estime conveniente" 
* identifier[OtrosID] ^definition = "Para otros identificadores como: RNPI, Pasaporte o el que el notificador estime conveniente"
* identifier[OtrosID].system ^short = "endPoint para validar los códigos"
* identifier[OtrosID].system ^definition = "Define la url del endPoint a la cual apunta la API"
* identifier[OtrosID].system ^comment = "Se define el endPoint al cual debe apuntar a la API"
* identifier[OtrosID].use ^short = "Se define el uso de este identificador"
* identifier[OtrosID].use ^definition = "Se definirá este uso siempre como \"secondary\" debido a que cualquier RNPI sera un identificador secundario y alternativo, ya que el oficial es el RUN"
* identifier[OtrosID].use = #secondary
* identifier[OtrosID].value ^short = "Valor identificador"
* identifier[OtrosID].value ^definition = "Valor identificador"
 

* active MS


* name and name.use and name.family and name.given  MS 

* name.use ^short = "Uso del nombre del prestador"
* name.use ^definition = "Este es el uso que se le da al nombre del Prestador considerando que puede ser nombre oficial, temporal, seudonimo, entre otros, Pero por motivos legales este uso es Oficial "
* name.use = #official  
* name.family ^short = "Primer Apellido"
* name.family ^definition = "Se debe ingresar el primer apellido, segun indica su identificacion personal"
* name.family 1..1

* name.family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named mothers-family 0..1 MS
* name.family.extension ^short = "Extensión para apellido materno"
* name.family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-fathers-family named father-family 0..1 MS
* name.family.extension ^short = "Extensión para apellido paterno"
* name.given 1..
 
* telecom and gender and birthDate  MS
* telecom ^definition = "Contacto del prestador"
* telecom.system ^short = "Debe utilizar \"phone\" o \"email\"."
* telecom.system MS 

* telecom.use MS
* telecom.use ^short = "Uso del contacto descrito. Puede usar \"home | work | temp | old | mobile\""

* telecom.value MS

* gender 1..1
* gender ^short = "Sexo de nacimiento Registrado, male | female | other | unknown (requerido)"
* gender ^definition = "Sexo de nacimiento Registrado"

* birthDate 1..1
* birthDate ^short = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD"
* birthDate ^definition = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"

* address only Address or ClAddress
* address MS

* qualification MS
* qualification ^short = "Certificados, títulos y/o Especialidad(es) obtenidas por el Prestador"
* qualification ^definition = "Certificados, titulos y/o especialidades que el Prestador pueda validar"

* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "identifier.value"
* qualification ^slicing.rules = #open
* qualification ^slicing.description = "Debido a que los profesisonales de la salud pueden tener titulo y ademas poseer especialidades, es que se ha realizado un slice, con el fin de poder diferenciarlos. El de Certificados tiene identifier.value el valor cert y el slice de especialidad el valor esp"


* qualification contains Cert 0..* MS and Esp 0..* MS and SubEsp 0..* MS

* qualification[Cert] ^short = "Especificación de los Títulos o Certificados Profesionales que tiene el Prestador"
* qualification[Cert] ^definition = "Listado de Títulos o Cetificados Profesionales que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Cert].identifier 1..1 MS
* qualification[Cert].identifier.value 1..1 MS
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].identifier.value ^short = "Valor del tipo de calificación, en este caso cert"
* qualification[Cert].identifier.value ^definition = "Valor del tipo de calificación, en este caso cert"
* qualification[Cert].code 1..1 MS
  * coding 0..1 MS
    * code 1..1 MS
    * system 0..1 MS
    * display 0..1 MS
  * text 1..1 MS
* qualification[Cert].code.text ^short = "Texto libre del Título o Certificado Profesional especificado"
* qualification[Cert].code.coding.system ^short = "El sistema sobre el cual se verificarán los titulos o certificados de los Prestadores"
* qualification[Cert].code.coding.system ^definition = "La url sobre la cual se encuentra el endPoint para el acceso a  los códigos de titulos y/o certificados de prestadores. El perfil especifica que se debe usar la siguiente url:  \"https://api.minsal.cl/v1/catalogos/profesiones/\""
* qualification[Cert].code.coding.display ^short = "Nombre del titulo o certificado agregado"
* qualification[Cert].code.coding.display ^definition = "Nombre del titulo o certificado agregado. Agregar un poco mas de informacion acerca del item que se esta agregando."
//* qualification[Cert].code.coding.code MS
* qualification[Cert].code.coding.code ^short = "Nombre del titulo o certificado agregado"
* qualification[Cert].code.coding.code ^definition = "Nombre del titulo o certificado agregado. Agregar un poco mas de informacion acerca del item que se esta agregando."
* qualification[Cert].issuer MS
* qualification[Cert].issuer.display MS
* qualification[Cert].issuer ^short = "Organizacion que entrega el certificado o título"
* qualification[Cert].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título"
* qualification[Cert].issuer.display ^definition = "Nombre de la organizacion que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"


//especialidades
* qualification[Esp] ^short = "Especificación de la o las  especialidades que posea el prestador"
* qualification[Esp] ^definition = "Listado de especialidades que posee el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Esp].identifier 1..1 MS
* qualification[Esp].identifier.value 1..1 MS
* qualification[Esp].identifier.value = "esp"
* qualification[Esp].identifier.value ^short = "Valor del tipo de calificación, en este caso esp"
* qualification[Esp].identifier.value ^definition = "Valor del tipo de calificación, en este caso esp"
* qualification[Esp].code 1..1 MS
  * coding 0..1 MS
    * code 1..1 MS
    * system 0..1 MS
    * display 0..1 MS
  * text 1..1 MS
* qualification[Esp].code.coding.system MS
* qualification[Esp].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[Esp].code.coding.system ^definition = "la url sobre la cual se encuentra el endPoint para el acceso a  los códigos de especialidades de prestadores. El perfil especifica  \"https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/\""
* qualification[Esp].code.text ^short = "Texto libre de la especialidad del profesional"
* qualification[Esp].code.coding.display ^short = "Nombre de la especialidad"
* qualification[Esp].code.coding.display ^definition = "Nombre la especialidad agregada. Agregar un poco mas de informacion acerca del item que se esta agregando."
* qualification[Esp].issuer MS 
* qualification[Esp].issuer.display MS
* qualification[Esp].issuer ^short = "Organizacion que entrega el certificado o título"
* qualification[Esp].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título"
* qualification[Esp].issuer.display ^definition = "Nombre de la organizacion que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"

//subespecialidades
* qualification[SubEsp] ^short = "Especificación de la o las subespecialidades que posea el prestador"
* qualification[SubEsp] ^definition = "Listado de subespecialidades que posee el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[SubEsp].identifier 1..1 MS
* qualification[SubEsp].identifier.value 1..1 MS
* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].identifier.value ^short = "Valor del tipo de calificación, en este caso subesp"
* qualification[SubEsp].identifier.value ^definition = "Valor del tipo de calificación, en este caso subesp"
* qualification[SubEsp].code 1..1 MS
  * coding 0..1 MS
    * code 1..1 MS
    * system 0..1 MS
    * display 0..1 MS
  * text 1..1 MS
* qualification[SubEsp].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[SubEsp].code.coding.system ^definition = "la url sobre la cual se encuentra el endPoint para el acceso a  los códigos de especialidades de prestadores."
* qualification[SubEsp].code.text ^short = "Texto libre de la subespecialidad del profesional"
* qualification[SubEsp].code.coding.display ^short = "Nombre de la subespecialidad"
* qualification[SubEsp].code.coding.display ^definition = "Nombre la subespecialidad agregada. Agregar un poco mas de informacion acerca del item que se esta agregando."
* qualification[SubEsp].issuer MS
* qualification[SubEsp].issuer.display MS
* qualification[SubEsp].issuer ^short = "Organizacion que entrega el certificado o título"
* qualification[SubEsp].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título"
* qualification[SubEsp].issuer.display ^definition = "Nombre de la organizacion que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"
*/