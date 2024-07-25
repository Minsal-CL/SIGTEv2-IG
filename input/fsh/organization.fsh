Profile: OrganizationLE
Parent: OrganizacionCL
Id: OrganizationLE
Title: "Organization LE"
Description: "Organization LE según [Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes)"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* identifier 1..1 MS
  * value 1..1 MS
* identifier ^short = "Código DEIS del establecimiento de destino"
* identifier ^definition = "Código DEIS del establecimiento de destino"
* identifier.system from VSEstablecimientoDestino (example)
* identifier.system ^short = "CS de los codigos DEIS"
* identifier.system ^definition = "CS de los codigos DEIS"
* identifier.value ^short = "Código DEIS del establecimiento"
* identifier.value ^definition = "Código DEIS del establecimiento según [Códigos del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes)"