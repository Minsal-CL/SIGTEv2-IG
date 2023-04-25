Profile: OrganizationLE
Parent: OrganizacionCL
Id: OrganizationLE
Title: "Organization LE"
Description: "Organization LE según [Códigos del establecimientos](https://repositoriodeis.minsal.cl/DatosAbiertos/Establecimientos_ChileDEIS_MINSAL%2021-04-2023.xlsx)"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* identifier 1..1 MS
  * value 1..1 MS
* identifier ^short = "Código del establecimiento"
* identifier ^definition = "Código del establecimiento"
* identifier.system ^short = "VS de los codigos DEIS"
* identifier.system ^definition = "VS de los codigos DEIS"
* identifier.value ^short = "Código del establecimiento"
* identifier.value ^definition = "Código del establecimiento según [Códigos del establecimientos](https://repositoriodeis.minsal.cl/DatosAbiertos/Establecimientos_ChileDEIS_MINSAL%2021-04-2023.xlsx)"