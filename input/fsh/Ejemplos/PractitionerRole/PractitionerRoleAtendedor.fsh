Instance: PractitionerRoleAtendedor
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo Rol Atendedor"
Description: "Ejemplo de un profesional en el rol atendedor"

* active = true
* practitioner = Reference(PractitionerProfesionalLEAtendedor)
* organization = Reference(OrganizationLEAtendedor)

* code = CSPractitionerTipoRolLE#atendedor "Atendedor"