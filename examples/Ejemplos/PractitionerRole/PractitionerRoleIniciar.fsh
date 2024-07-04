Instance: PractitionerRoleIniciador
InstanceOf: PractitionerRoleLE
Usage: #example
Title: "Ejemplo PractitionerRole Iniciador"
Description: "Ejemplo de un profesional con el rol de iniciador de la interconsulta"

* identifier
  * system = "http://rnpi.supersalud.cl/practitioners"
  * value = "14"

* active = true
* practitioner = Reference(PractitionerProfesionalLEEjemplo)
* organization = Reference(OrganizationLEejemplo)

* code = CSPractitionerTipoRolLE#iniciador "Iniciador"
