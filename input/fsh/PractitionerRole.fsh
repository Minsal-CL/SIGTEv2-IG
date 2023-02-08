Profile: PractitionerRoleLE
Parent: PractitionerRole
Id: PractitionerRoleLE
Title: "PractitionerRole LE"
Description: "PractitionerRole LE recurso que se utiliza para representar la información de roles, especialidades o subespecialidades de un profesional de la salud."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* organization 1..1 MS
* organization only Reference(Organization)
* organization ^short = "Organización que se identifica con el código de establecimiento"
* practitioner only Reference(PrestadorCL)
* code 1..1 MS
* code.coding.code 1..1 MS
* code from VSPractitionerTipoRolLE