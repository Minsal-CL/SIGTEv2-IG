Profile: PractitionerRoleLE
Parent: PractitionerRole
Id: PractitionerRoleLE
Title: "PractitionerRole LE"
Description: "PractitionerRole LE, recurso que se utiliza para representar la información de roles, un profesional de la salud."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* organization 1..1 MS
* organization only Reference(OrganizationLE)
* organization ^short = "Organización, que se identifica con el código de establecimiento"


* practitioner 0..1 MS
* practitioner only Reference(PractitionerProfesionalLE or PractitionerAdministrativoLE) 
* practitioner ^short = "Referencia al prestador, profesional o administrativo, que varía según evento"

* code 1..1 MS
  * coding 1..1
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico"
    * system 0..1 
    * system ^short = "Sistema terminológico, url/uri/uuid"
* code ^short = "Roles que el prestador puede realizar"
* code from VSPractitionerTipoRolLE


///////////////////

/*
Profile: PractitionerRoleAgendadorLEs
Parent: PractitionerRole
Id: PractitionerRoleAgendadorLE
Title: "PractitionerRole Agendador LE"
Description: "PractitionerRole Agendador LE recurso que se utiliza para representar la información de roles, especialidades o subespecialidades de un profesional de la salud."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* organization 1..1 MS
* organization only Reference(OrganizationLE)
* organization ^short = "Organización que se identifica con el código de establecimiento"


* practitioner 0..1 MS
* practitioner only Reference(PractitionerLE)

* code 1..1 MS
* code.coding.code 1..1 MS
* code from VSPractitionerTipoRolLE

/////////////////////////////

Profile: PractitionerRoleReferenciadorLE
Parent: PractitionerRole
Id: PractitionerRoleReferenciadorLE
Title: "PractitionerRole Referenciador LE"
Description: "PractitionerRole Referenciador LE recurso que se utiliza para representar la información de roles, especialidades o subespecialidades de un profesional de la salud."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* organization 1..1 MS
* organization only Reference(OrganizationLE)
* organization ^short = "Organización que se identifica con el código de establecimiento"


* practitioner 0..1 MS
* practitioner only Reference(PractitionerLE)

* code 1..1 MS
* code.coding.code 1..1 MS
* code from VSPractitionerTipoRolLE

*/