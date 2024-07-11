Instance: OrganizationLEEjemplo
InstanceOf: OrganizationLE
Usage: #example
Title: "Ejemplo OrganizationLE"
Description: "Ejemplo de una organización que inicia una interconsulta"

* identifier[0]
  * system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino"
  * value = "120101"

* name = "Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)"
* alias[0] = "Hospital de Los Ángeles"
* telecom
  * system = #phone
  * value = "(+56) 432336000"

* address = ClAddressOrganizacionEj1


Instance: ClAddressOrganizacionEj1
InstanceOf: ClAddress
Usage: #inline

* line[0] = "Ricardo Vicuña 147"
* city = "Los Ángeles"
* city.extension = ComunasClOrganizacionEj1
* postalCode = "4451055"
* country = "Chile"
* country.extension = PaisOrganizacionEj1

Instance: PaisOrganizacionEj1
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais#152 "Chile"

Instance: ComunasClOrganizacionEj1 
InstanceOf: ComunasCl
Usage: #inline

* valueCodeableConcept = CSCodComunasCL#08301 "Los Ángeles"