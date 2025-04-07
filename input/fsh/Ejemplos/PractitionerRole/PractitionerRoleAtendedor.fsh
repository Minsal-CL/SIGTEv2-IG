Instance: PractitionerRoleAtendedor
InstanceOf: PractitionerRoleLE
Title: "Ejemplo Rol Atendedor"
Description: "Ejemplo de un profesional en el rol atendedor"
Usage: #example
* meta.versionId = "2.0"

* active = true
* practitioner = Reference(PractitionerProfesionalLEAtendedor)
* organization = Reference(OrganizationLEAtendedor)

* code = CSPractitionerTipoRolLE#atendedor "Atendedor"

// Instance: OrganizationLEAtendedor2
// InstanceOf: OrganizationLE
// Usage: #inline

// * identifier[0]
//   * system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino"
//   * value = "121343"

// * name = "Centro de Referencia de Salud Miraflores"

