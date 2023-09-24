Profile: PractitionerLE
Parent: Practitioner
Id: PractitionerLE
Title: "Practitioner LE"
Description: "Practitioner LE recurso que se utiliza para representar la información de identificación del profesional de la salud."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* identifier  MS

* identifier 1..* 
* identifier ^short = "Id de los prestadores"
* identifier ^definition = "Identificador para cada prestador. El identificador principal en Chile es el Registro Único Nacional (RUN), identificador que es obligatorio. Además, se puede ingresar un ID extra para cada prestador, disponibilizado por Registro Nacional de Prestadores Institucionales (NRPI), este identificador es opcional"
* identifier ^comment = "Este elemento permite ingresar dos identificadores, uno de tipo RUN y uno de tipo RNPI" 


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Este slice permite agregar una identificacion basada RUN y/o basada en el RNPI"
* identifier contains RUN 1..1 MS and RNPI 0..1 MS and PASAPORTE 0..1 MS

* identifier[RUN]
  * use 1..1 MS
  * system 0..1 MS
  * value 1..1 MS
* identifier[RUN].extension contains DigitoVerificador named DigitoVerificador 1..1 MS
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
* identifier[RUN].system = "http://registrocivil/RUN"

* identifier[RNPI]
  * use 1..1 MS
  * system 0..1 MS
  * value 1..1 MS
* identifier[RNPI] ^short = "Valor de RNPI" 
* identifier[RNPI] ^definition = "Valor de RNPI"
* identifier[RNPI].system ^short = "endPoint para validar los códigos"
* identifier[RNPI].system ^definition = "Define la url del endPoint a la cual apunta la API"
* identifier[RNPI].system ^comment = "Se define el endPoint al cual debe apuntar a la API"
* identifier[RNPI].use ^short = "Se define el uso de este identificador"
* identifier[RNPI].use ^definition = "RNPI sera un identificador secundario y alternativo, ya que el oficial es el RUN"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value ^short = "Valor identificador"
* identifier[RNPI].value ^definition = "Valor identificador"
* identifier[RNPI].system = "http://rnpi.superdesalud.gob.cl"

* identifier[PASAPORTE]
  * use 1..1 MS
  * system 0..1 MS
  * value 1..1 MS
* identifier[PASAPORTE] ^short = "Valor de PASAPORTE" 
* identifier[PASAPORTE] ^definition = "Valor de PASAPORTE"
* identifier[PASAPORTE].system ^short = "endPoint para validar los códigos"
* identifier[PASAPORTE].system ^definition = "Define la url del endPoint a la cual apunta la API"
* identifier[PASAPORTE].system ^comment = "Se define el endPoint al cual debe apuntar a la API"
* identifier[PASAPORTE].use ^short = "Se define el uso de este identificador"
* identifier[PASAPORTE].use ^definition = "PASAPORTE sera un identificador secundario y alternativo, ya que el oficial es el RUN"
* identifier[PASAPORTE].use = #secondary
* identifier[PASAPORTE].value ^short = "Valor identificador"
* identifier[PASAPORTE].value ^definition = "Valor identificador"
* identifier[PASAPORTE].system = "http://PASAPORTE.superdesalud.gob.cl"


* name 1..1 
* name.use and name.family and name.given  MS 

* name.use ^short = "Uso del nombre del prestador"
* name.use ^definition = "Este es el uso que se le da al nombre del Prestador considerando que puede ser nombre oficial, temporal, seudonimo, entre otros, Pero por motivos legales este uso es Oficial "
* name.use = #official  
* name.family ^short = "Primer Apellido"
* name.family ^definition = "Se debe ingresar el primer apellido, segun indica su identificacion personal"
* name.family 1..1
* name.family.extension contains SegundoApellido named segundoApellido 0..1 MS
* name.family.extension ^short = "Extensión para el segundo apellido"



//* name.family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named mothers-family 0..1 MS
//* name.family.extension ^short = "Extensión para apellido materno"
//* name.family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-fathers-family named father-family 0..1 MS
//* name.family.extension ^short = "Extensión para apellido paterno"
* name.given 1..
 
// * telecom and gender and birthDate  MS
// * telecom ^definition = "Contacto del prestador"
// * telecom.system ^short = "Debe utilizar \"phone\" o \"email\"."
// * telecom.system MS 

// * telecom.use MS
// * telecom.use ^short = "Uso del contacto descrito. Puede usar \"home | work | temp | old | mobile\""

// * telecom.value MS

// //* gender 1..1
// * gender ^short = "Sexo de nacimiento Registrado, male | female | other | unknown (requerido)"
// * gender ^definition = "Sexo de nacimiento Registrado"

// //* birthDate 1..1
// * birthDate ^short = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD"
// * birthDate ^definition = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"

// * address only Address or ClAddress
// * address MS

* qualification MS
* qualification ^short = "Certificados, títulos y/o Especialidad(es) obtenidas por el Prestador"
* qualification ^definition = "Certificados, titulos y/o especialidades que el Prestador pueda validar"

* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "identifier.value"
* qualification ^slicing.rules = #open
* qualification ^slicing.description = "Debido a que los profesisonales de la salud pueden tener titulo y ademas poseer especialidades, es que se ha realizado un slice, con el fin de poder diferenciarlos. El de Certificados tiene identifier.value el valor cert y el slice de especialidad el valor esp"


* qualification contains Tit 1..* MS and Esp 0..* MS and SubEsp 0..* MS

* qualification[Tit] ^short = "Especificación de los Títulos o Certificados Profesionales que tiene el Prestador"
* qualification[Tit] ^definition = "Listado de Títulos o Cetificados Profesionales que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Tit].identifier 1..1 MS
* qualification[Tit].identifier.value 1..1 MS
* qualification[Tit].identifier.value = "tit"
* qualification[Tit].identifier.value ^short = "Valor del tipo de calificación, en este caso cert"
* qualification[Tit].identifier.value ^definition = "Valor del tipo de calificación, en este caso cert"
* qualification[Tit].code 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * system 1..1 MS
    * display 0..1 MS
  * text 0..1 MS
* qualification[Tit].code.text ^short = "Texto libre del Título o Certificado Profesional especificado"
* qualification[Tit].code.coding.system ^short = "El sistema sobre el cual se verificarán los titulos o certificados de los Prestadores"
* qualification[Tit].code.coding.system ^definition = "La url sobre la cual se encuentra el endPoint para el acceso a  los códigos de titulos y/o certificados de prestadores. El perfil especifica que se debe usar la siguiente url:  \"https://api.minsal.cl/v1/catalogos/profesiones/\""
* qualification[Tit].code.coding.display ^short = "Nombre del titulo o certificado agregado"
* qualification[Tit].code.coding.display ^definition = "Nombre del titulo o certificado agregado. Agregar un poco mas de informacion acerca del item que se esta agregando."
//* qualification[Cert].code.coding.code MS
* qualification[Tit].code.coding.code ^short = "Nombre del titulo o certificado agregado"
* qualification[Tit].code.coding.code ^definition = "Nombre del titulo o certificado agregado. Agregar un poco mas de informacion acerca del item que se esta agregando."
* qualification[Tit].issuer MS
* qualification[Tit].issuer.display MS
* qualification[Tit].issuer ^short = "Organizacion que entrega el certificado o título"
* qualification[Tit].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título"
* qualification[Tit].issuer.display ^definition = "Nombre de la organizacion que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"
* qualification[Tit].code from VSTituloProfesional

//especialidades
* qualification[Esp] ^short = "Especificación de la o las  especialidades que posea el prestador"
* qualification[Esp] ^definition = "Listado de especialidades que posee el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Esp].identifier 1..1 MS
* qualification[Esp].identifier.value 1..1 MS
* qualification[Esp].identifier.value = "esp"
* qualification[Esp].identifier.value ^short = "Valor del tipo de calificación, en este caso esp"
* qualification[Esp].identifier.value ^definition = "Valor del tipo de calificación, en este caso esp"
* qualification[Esp].code 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * system 1..1 MS
    * display 0..1 MS
  * text 0..1 MS
* qualification[Esp].code.coding.system MS
* qualification[Esp].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[Esp].code.coding.system ^definition = "la url sobre la cual se encuentra el endPoint para el acceso a  los códigos de especialidades de prestadores. El perfil especifica  \"https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/\""
* qualification[Esp].code.text ^short = "Texto libre de la especialidad del profesional"
* qualification[Esp].code.coding.display ^short = "Nombre de la especialidad"
* qualification[Esp].code.coding.display ^definition = "Nombre la especialidad agregada. Agregar un poco mas de informacion acerca del item que se esta agregando."
// * qualification[Esp].issuer MS 
// * qualification[Esp].issuer.display MS
// * qualification[Esp].issuer ^short = "Organizacion que entrega el certificado o título"
// * qualification[Esp].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título"
// * qualification[Esp].issuer.display ^definition = "Nombre de la organizacion que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"
* qualification[Esp].code from VSEspecialidades

//subespecialidades
* qualification[SubEsp] ^short = "Especificación de la o las subespecialidades que posea el prestador"
* qualification[SubEsp] ^definition = "Listado de subespecialidades que posee el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[SubEsp].identifier 1..1 MS
* qualification[SubEsp].identifier.value 1..1 MS
* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].identifier.value ^short = "Valor del tipo de calificación, en este caso subesp"
* qualification[SubEsp].identifier.value ^definition = "Valor del tipo de calificación, en este caso subesp"
* qualification[SubEsp].code 1..1 MS
  * text 1..1 MS
* qualification[SubEsp].code.text ^short = "Texto libre de la subespecialidad del profesional"
// * qualification[SubEsp].issuer MS
// * qualification[SubEsp].issuer.display MS
// * qualification[SubEsp].issuer ^short = "Organizacion que entrega el certificado o título"
// * qualification[SubEsp].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título"
// * qualification[SubEsp].issuer.display ^definition = "Nombre de la organizacion que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"
