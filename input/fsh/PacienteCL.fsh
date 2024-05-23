Profile:        PacienteCl
Parent:         Patient
Id:             CorePacienteCl
Title:          "CL Paciente"
Description:    "Este Perfil ha sido desarrollado para cubrir las necesidades del Caso de Uso de Receta Electrónica. Sin embargo, se ha modelado con el fin de cubrir las necesidades nacionales de un Recurso Paciente para un Historial Clínico Nacional"


* ^version = "1.9.0"
* ^status = #active
* ^publisher = "HL7 Chile"

* identifier MS
  * use and type MS
    * coding MS
      * system and code MS


* extension contains IdentidadDeGenero named IdentidadDeGenero 0..1 MS
* extension contains SexoBiologico named SexoBiologico 0..1 MS
* extension contains PaisOrigenNacionalidadCl named nacionalidad 0..1 MS

* identifier and identifier.use and identifier.type and identifier.extension MS

* identifier ^short = "Listados de Id de Paciente. De poseer una CI con RUN vigente, este DEBE ser ingresado"
* identifier ^definition = "Este es el listado de Identificaciones de un paciente. Se procura como R2 el RUN, pero en caso de no existir ese identificador se debe ocupar otro nacional u otro otorgado por país extranjero"
* identifier ^comment = "En caso de que el paciente posea una CI con número RUN válido, este debe ser ingresado como identificador, independiente de que tenga otros identificadores, los cuales también pueden ser ingresados. La identificación implica el ingreso del tipo de documento, el país de origen de ese documento y ev valor del identificador"

* identifier.use ^short = "usual | official | temp | secondary | old (If known)"
* identifier.use ^definition = "De contar el Paciente con una Cédula de Identidad Nacional, se sugiere el uso de esta como identificador"

* identifier.use ^comment = "Se definirá como official pues en una primera etapa solo se considerarán los identidicadores en esa categoría. Para una segunda etapa se abrirá este elemento para cualquier clase de identificador" 


* identifier.type ^short = "Tipo de documento de Id (Extensible)"
* identifier.type ^definition = "Se define como tipo de documento de Id, aquel definido en el Sistema de Codificación V2-0203 de Hl7. Este sistema es extensible. Para pacientes sin documeto local deben especificar el de origen. Pacientes sin Id, deben usar el código MR = Local Medical Record, es decir numero del registro clínico abierto en el establecimiento"
* identifier.type ^comment = "De haber RUN, este se debe usar. De haber Run temporal, se debe usar ese identificador. Pacientes sin identificador Chileno deben usar su CI o Pasaporte de origen. Pacientes sin identificación se debe registrar con el numero de registro clínico generado en el recinto de salud"
* identifier.type from VSTiposDocumentos (extensible)
* identifier.type ^binding.description = "Value Set de Tipos de Documentos y CI Nacionales"


* identifier.type.coding.system ^short = "Sistema de identificación de tipos de documentos"
* identifier.type.coding.system ^definition = "Sistema mediante el cual se obtienen los códigos para un determinado tipo de documento"
* identifier.type.coding.system ^comment = "En la URL del sistema se describe el set de códigos. Por ejemplo si se desea usar Cédula de identidad el código es NNxxx en donde xxx corresponde al identificador del país según la norma iso3166-1-N. Dado lo anterior si fuera Chile, el tipo de documento sería NNCL. En el Caso de Usar un Pasaporte este no requiere identificar país de origen dado que este es un elemento adicional, por lo que independiente del país el código será PPT según el VS indicado"

* identifier.type.coding.code ^short = "Código de Tipo de Documento"
* identifier.type.coding.code ^definition = "Código de Tipo de Documento"


* identifier.type.coding.display MS
* identifier.type.coding.display ^short = "Glosa del Código Documento"
* identifier.type.coding.display ^definition = "Glosa del Código Documento"


* identifier.type.extension ^short = "País de Origen del Documento de Id" 


* identifier.type.extension ^definition = "Se usa esta extensión para agregarle al tipo de documento el país de origen de este" 
* identifier.type.extension contains PaisOrigenNacionalidadCl named paisEmisionDocumento 0..1  MS
* identifier.value ^short = "Número o valor de identificación"
* identifier.value ^definition = "Número o valor de identificación"


* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.description = "Este slice se genera para diferenciar el nombre registrado Versus el nombre social"
* name contains NombreOficial 0..1 MS and NombreSocial 0..1 MS

* identifier.use ^definition = "Se definirá este uso siempre como \"official\" debido a que cualquier ID presentado para motivos de este perfil deb ser de este tipo"



* name ^short = "Nombres y Apellidos del Paciente considerando, según el caso: 1er Nombre, Nombres, 1er Apellido y 2o Apellido"
* name ^definition = "Nombre del Paciente considerando, según el caso: 1er Nombre, Nombres, 1er Apellido y 2o Apellido"

* name[NombreOficial] ^short = "Determinación del nombre registrado oficialmente del Paciente"
* name[NombreOficial] ^definition = "Determinación del nombre registrado oficialmente del Paciente"
  * use = #official
  * use MS
  * use ^short = "uso del nombre del paciente"
  * use ^definition = "este slice corresponde al nombre registrado al momento de nacer, por lo que se fuerza el valor \"official\""
  * use ^comment = "Para ser considerado como el slice determinado para el uso de nombre completo, el use DEBE ser de valor de código \"official\""
  * family ^short = "1er Apellido"
  * family ^definition = "Se define el primer apellido registrado al momento de nacer o aquel que se ha inscrito legalmente en el Registro Civil"
  * family  MS
  * family.extension contains SegundoApellido named segundoApellido 0..1 MS
  * family.extension ^short = "Extensión para el segundo apellido"
  * family.extension ^definition = "Extensión para la declaracion de un segundo apellido"
  * given MS
  * given ^short = "Primer nombre y nombres del Paciente"
  * given ^definition = "Todos los nombres de los pacientes no necesariamente solo el Primer Nombre"


* name[NombreSocial] ^short = "Nombre con el cual se identifica al paciente sin ser este oficial. Se especifica slo en el uso del nombre"
* name[NombreSocial] ^definition = "Nombre con el cual se identifica al paciente sin ser este oficial. Se especifica slo en el uso del nombre"
* name[NombreSocial] ^short = "nombre recurrente que usa el paciente"
  * use = #usual
  * use MS  
  * use ^short = "uso que se le da al nombre"
  * use ^definition = "Este uso especifico se enfoca a la definición de un nombre social. Es por esta razón que el uso se fuerza a usual"
  * use ^comment = "Para ser considerado como el slice determinado para el uso de nombre social, el use DEBE ser de valor de código \"usual\""
  * text 0..0  
  * family 0..0
  * given 1..* MS
  * given ^short = "Nombre Social"
  * given ^definition = "Nombre Social del Paciente"
  * prefix 0..0
  * suffix 0..0
  * period 0..0
 
 
* telecom and telecom.system and telecom.value and telecom.use and gender and birthDate  MS
* telecom ^short = "Detalles de contacto del Paciente"
* telecom ^definition = "Detalles del contacto de un paciente comunmente el o los mas usados (Ej: Teléfono fijo, móvil, email, etc.)"
  * use ^short = "home | work | temp | old | mobile" 
  * use ^definition = "Propósito para el contacto que se ha definido" 
  * use from  http://hl7.org/fhir/ValueSet/contact-point-use (required)
  * system ^short = "phone | fax | email | pager | url | sms | other"
  * system ^definition = "Forma de telecomunicación para el punto de contacto: qué sistema de comunicación se requiere para hacer uso del contacto."
  * system from  http://hl7.org/fhir/ValueSet/contact-point-system (required)
  * system ^binding.description = "Tipo de contacto para HL7 FHIR"
  * value ^short = "Dato del contato del paciente descrito"
  * value ^definition = "Valor del contacto como por ejemplo el numero de telefono fijo o de móvil o el email del Paciente"

* gender 0..1
* gender ^short = "Sexo Registrado. (male | female | other | unknown (requerido))"
* gender ^definition = "Sexo Registrado"

* birthDate 0..1
* birthDate ^short = "Fecha de nacimiento del Paciente."
* birthDate ^definition = "Fecha de nacimiento del Paciente."

* address only Address or ClAddress
* address MS



* contact MS 
* contact.relationship.coding and contact.relationship MS

* contact ^short = "Contacto, tutor legal o representante del Paciente"
* contact ^definition = "Contacto, tutor legal o representante del Paciente"
  * extension contains IdentificacionContactoCl named IdContacto 0..* MS
  * extension[IdContacto] 0..* MS
  * extension[IdContacto] ^short = "Identificación del Contacto"
  * extension[IdContacto] ^definition = "Extensión para declarar identificación del contacto y la procedencia de esta"
  * relationship ^short = "Relación entre el contacto y el paciente"
  * relationship ^short = "Relación legal o de paretezco entre el contacto y el paciente"
  * relationship from 	http://hl7.org/fhir/ValueSet/patient-contactrelationship
  * relationship ^binding.description = "VS FHIR para relación del contacto con el Paciente"

  * name 0..1 MS 
  * name ^short = "Nombre del Contacto"
  * name ^definition = "Nombre del contacto asociado al paciente"
    * use MS 
    * use = #official
    * use ^short = "uso del nombre del paciente"
    * use ^definition = "Nombre registrado oficialmente en el Registro Civil"
    * use ^comment = "El use DEBE ser de valor de código ´official´"

    * family ^short = "1er Apellido"
    * family ^definition = "Se define el primer apellido registrado al momento de nacer o aquel que se ha inscrito legalmente en el Registro Civil"
    * family 0..1 MS
      * extension contains SegundoApellido named segundoApellido 0..1 MS
      //* extension 0..1 MS
      * extension ^short = "Extensión para 2o apellido"
      * extension ^definition = "Extensión para la declaracion de un segundo apellido"
    * given MS
    * given ^short = "Primer nombre y nombres del Contacto o Representante Legal"
    * given ^definition = "Todos los nombres  no necesariamente solo el Primero"


* communication 0..* MS
* communication ^short = "Lenguaje en el cual se puede comunicar con el paciente"
* communication ^definition = "Lenguaje en el cual se puede comunicar con el paciente"
  * language MS
  * language ^short = "Lenguaje específico"
  * language ^definition = "Código del lenguaje específico"
  * language from VSCodigoslenguaje
  * language ^binding.description = "Value Set de HL7, # de elementos es muy grande para poder visualizarlo"


* generalPractitioner 0..* MS
* generalPractitioner only Reference(Organization or Practitioner)
* generalPractitioner ^short = "Proveedor de Salud designado como principal"
* generalPractitioner ^definition = "Proveedor de Salud designado como principal"
  * reference MS
  * reference ^short = "URI de referencia a la Organización o a un Médico"
  * reference ^definition = "URI de referencia a la Organización o a un Médico"
  * display MS
  * display ^short = "Texto alternativo a la referencia"
  * display ^definition = "Texto alternativo a la referencia"
