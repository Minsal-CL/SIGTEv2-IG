Profile: PractitionerRoleLE
Parent: PractitionerRole
Id: PractitioneRolerLE
Title: "PractitionerRole LE recurso que se utiliza para representar la información de roles, especialidades o subespecialidades de un profesional de la salud."
Description: "PractitionerRole LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* organization only Reference(Organization)
* practitioner only Reference(PrestadorCL)
* location only Reference(LocalizacionCL)