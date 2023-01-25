Profile: PractitioneRolerLE
Parent: PractitionerRole
Id: PractitioneRolerLE
Title: "PractitionerRole LE"
Description: "PractitionerRole LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* organization only Reference(Organization)
* practitioner only Reference(PrestadorCL)
* location only Reference(LocalizacionCL)