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

Extension: Etnia
Id: Etnia
Title: "Etnia a la cual pertenece"
Description: "Etnia a la cual pertenece"
* value[x] only CodeableConcept
* value[x] ^short = "Codigo de la etnia"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 0..1 MS
  //* code from CodPais
  * system 0..1 MS
  * display 1..1 MS
* valueCodeableConcept.text MS

Extension: Afrodescendiente 
Id: Afrodescendiente
Title:       "Afrodescendiente"
Description: "paciente pertenece a un Pueblo Afrodescendiente chileno"
* value[x] only boolean



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