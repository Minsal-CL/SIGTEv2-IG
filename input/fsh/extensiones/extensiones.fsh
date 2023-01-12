Extension:   PaisOrigenNacionalidadCl
Id:          CodigoPaises
Title:       "Codigo de Identificación de países"
Description: "Esta extensión incluye códigos de paises de origen"
* value[x] only CodeableConcept
* value[x] ^short = "Código de País"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  //* code from CodPais
  * system 0..1 MS
  * display 0..1 MS

Extension:   IdentidadGenero
Id:          IdentidadGenero
Title:       "Identidad de genero"
Description: "Identidad de genero"
* value[x] only CodeableConcept
* value[x] ^short = "Codigo de la identidad de gneero"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  //* code from CodPais
  * system 0..1 MS
  * display 0..1 MS

Extension: PertenecienteEtnia 
Id: PertenecienteEtnia
Title:       "PertenecienteEtnia"
Description: "PertenecienteEtnia"
* value[x] only boolean

Extension: etnia 
Id: etnia          
Title:       "Etnia a la cual pertenece"
Description: "Etnia a la cual pertenece"
* value[x] only CodeableConcept
* value[x] ^short = "Codigo de la etnia"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  //* code from CodPais
  * system 0..1 MS
  * display 0..1 MS

Extension: etniatexto 
Id: etniatexto
Title:       "etniatexto"
Description: "etniatexto"
* value[x] only string
/*
Extension:   
Id:          
Title:       ""
Description: ""
* value[x] only CodeableConcept
* value[x] ^short = "Codigo de la identidad de gneero"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  //* code from CodPais
  * system 0..1 MS
  * display 0..1 MS

*/