Extension:   PaisOrigenNacionalidadClLE
Id:          CodigoPaises
Title:       "Codigo de Identificación de países"
Description: "Esta extensión incluye códigos de paises de origen"
* value[x] only CodeableConcept
* value[x] ^short = "Código de País"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from CodPais
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept.text 1..1 MS

Extension:   MotivoNoPertinenciaLE
Id:          MotivoNoPertinenciaLE
Title:       "Motivo No Pertinencia"
Description: "Motivo No Pertinencia"
* value[x] only CodeableConcept
* value[x] ^short = "Motivo No Pertinencia"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSMotivoNoPertinencia
  * system 0..1 MS
  * display 0..1 MS

Extension:   EstadoInterconsultaCodigoLE
Id:          EstadoInterconsultaCodigoLE
Title:       "Estado Interconsulta Codigo"
Description: "Estado Interconsulta Codigo"
* value[x] only CodeableConcept
* value[x] ^short = "Estado Interconsulta Codigo"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSEstadoInterconsulta
  * system 0..1 MS
  * display 0..1 MS

Extension:   DocAcreditacionCuidadorCodigoLE
Id:          DocAcreditacionCuidadorCodigoLE
Title:       "Doc Acreditacion Cuidador"
Description: "Doc Acreditacion Cuidador"
* value[x] only CodeableConcept
* value[x] ^short = "Doc Acreditacion Cuidador"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSDocAcreditacionCuidador
  * system 0..1 MS
  * display 0..1 MS
  //* text 1..1 MS


Extension:   TipoOtroTelefono
Id:          TipoOtroTelefono
Title:       "TipoOtroTelefono"
Description: "TipoOtroTelefono"
* value[x] only CodeableConcept
* value[x] ^short = "TipoOtroTelefonos"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSTipoOtroTelefono
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
  * code from VSIdentidaddeGenero
  * system 0..1 MS
  * display 0..1 MS

Extension: PuebloIndigena
Id: PuebloIndigena
Title: "Etnia a la cual pertenece"
Description: "Etnia a la cual pertenece"
* extension contains
	PuebloIndigenaCodigo 1..* MS and
	PuebloIndigenaPertenencia 1..1 MS
* url MS

* extension[PuebloIndigenaCodigo].value[x] only CodeableConcept
* extension[PuebloIndigenaCodigo].value[x] ^short = "Codigo de la etnia"
* extension[PuebloIndigenaCodigo].url 1..1 MS
* extension[PuebloIndigenaCodigo].valueCodeableConcept.coding 1..1 MS
  * code 0..1 MS
  * code from VSPuebloIndigena
  * system 0..1 MS
  * display 1..1 MS
* extension[PuebloIndigenaCodigo].valueCodeableConcept.text MS
* extension[PuebloIndigenaCodigo].valueCodeableConcept.text ^short = "Ingresar pueblo pertenciente, en caso que no se encuentre en la lista"

* extension[PuebloIndigenaPertenencia].value[x] only boolean




Extension: ExtBoolean 
Id: ExtBoolean
Title:       "ExtBoolean"
Description: "ExtBoolean"
* value[x] only boolean

Extension: ExtString 
Id: ExtString
Title:       "ExtString"
Description: "ExtString"
* value[x] only string

Extension: ExtInteger 
Id: ExtInteger
Title:       "ExtInteger"
Description: "ExtInteger"
* value[x] only integer

Extension: OrigenInterconsulta
Id: OrigenInterconsulta
Title: "Origen Interconsulta"
Description: "Origen Interconsulta"
* value[x] only CodeableConcept
* value[x] ^short = "Codigo de la interconsulta"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 0..1 MS
  * code from VSinterconsulta
  * system 0..1 MS
  * display 1..1 MS
* valueCodeableConcept.text MS

Extension: DigitoVerificador 
Id: DigitoVerificador
Title:       "DigitoVerificador"
Description: "DigitoVerificador"
* value[x] only integer

Extension: SospechaPatologiaGes
Id: SospechaPatologiaGes
Title: "SospechaPatologiaGes"
Description: "SospechaPatologiaGes"

* extension contains
	sospecha 1..1 MS and
	patologia 1..1 MS
  * url MS

* extension[patologia].value[x] only CodeableConcept
* extension[patologia].value[x] ^short = "Codigo de la identidad de gneero"
* extension[patologia].url 1..1 MS
* extension[patologia].valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSSospechaPatologiaGes
  * system 0..1 MS
  * display 0..1 MS

* extension[sospecha].value[x] only boolean


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