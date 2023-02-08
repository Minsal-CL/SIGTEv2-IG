Extension:   PaisOrigenClLE
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

Extension:   NacionalidadCodigoClLE
Id:          NacionalidadCodigo
Title:       "Codigo de Identificación de Nacionalidad"
Description: "Esta extensión incluye códigos de las Nacionalidades"
* value[x] only CodeableConcept
* value[x] ^short = "Código de la Nacionalidad"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from CodPais
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept.text 1..1 MS


Extension:   MotivoCierreInterconsulta
Id:          MotivoCierreInterconsulta
Title:       "Motivo Cierre Interconsulta"
Description: "Motivo Cierre Interconsulta"
* value[x] only CodeableConcept
* value[x] ^short = "Motivo Cierre Interconsulta"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSMotivoCierreInterconsulta
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept.text 0..1 MS

Extension:   DestinoAtencionCodigo
Id:          DestinoAtencionCodigo
Title:       "Destino Atención Codigo"
Description: "Destino Atención Codigo"
* value[x] only CodeableConcept
* value[x] ^short = "Código Destino Atención"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSDestinoAtencionCodigo
  * system 0..1 MS
  * display 0..1 MS


Extension:   MedioNotificacion
Id:          MedioNotificacion
Title:       "MedioNotificacion"
Description: "MedioNotificacion"
* value[x] only CodeableConcept
* value[x] ^short = "MedioNotificacion"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSMedioNotificacion
  * system 0..1 MS
  * display 0..1 MS


Extension:   PertinenciaInterconsulta
Id:          PertinenciaInterconsulta
Title:       "Pertinencia Interconsulta"
Description: "Pertinencia Interconsulta"
* value[x] only CodeableConcept
* value[x] ^short = "Motivo No Pertinencia"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSPertinenciaInterconsulta
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
  * display 0..1 MS
* extension[PuebloIndigenaCodigo].valueCodeableConcept.text MS
* extension[PuebloIndigenaCodigo].valueCodeableConcept.text ^short = "Ingresar pueblo pertenciente, en caso que no se encuentre en la lista"

* extension[PuebloIndigenaPertenencia].value[x] only boolean

Extension: Contactado
Id: Contactado
Title: "Contactado"
Description: "Contactado"
* extension contains
	Contactado 1..1 MS and
	MotivoNoContactabilidad 0..1 MS
* url MS

* extension[MotivoNoContactabilidad].value[x] only CodeableConcept
* extension[MotivoNoContactabilidad].value[x] ^short = "Codigo de la etnia"
* extension[MotivoNoContactabilidad].url 1..1 MS
* extension[MotivoNoContactabilidad].valueCodeableConcept.coding 1..1 MS
  * code 0..1 MS
  * code from VSMotivoNoContactabilidad
  * system 0..1 MS
  * display 0..1 MS
* extension[MotivoNoContactabilidad].valueCodeableConcept.text MS
* extension[MotivoNoContactabilidad].valueCodeableConcept.text ^short = "Otro motivo de no contactabilidad"

* extension[Contactado].value[x] only boolean




Extension: ExtBool 
Id: ExtBool
Title:       "ExtBool"
Description: "ExtBool"
* value[x] only boolean

Extension: ExtBoolSolicitudExamenes
Id: ExtBoolSolicitudExamenes
Title:       "ExtBool Solicitud Examenes"
Description: "ExtBool Solicitud Examenes"
* value[x] only boolean

Extension: ExtBoolPertinenciaAtencionBox 
Id: ExtBoolPertinenciaAtencionBox
Title:       "ExtBool Pertinencia Atencion Box"
Description: "ExtBool Pertinencia Atencion Box"
* value[x] only boolean

Extension: ExtBoolAfrodescendiente 
Id: ExtBoolAfrodescendiente
Title:       "ExtBool Afrodescendiente"
Description: "ExtBool Afrodescendiente"
* value[x] only boolean

Extension: ExtBoolResolutividadAPS 
Id: ExtBoolResolutividadAPS
Title:       "ExtBool ResolutividadAPS"
Description: "ExtBool ResolutividadAPS"
* value[x] only boolean

Extension: ExtBoolAlergia 
Id: ExtBoolAlergia
Title:       "ExtBool Alergia"
Description: "ExtBool Alergia"
* value[x] only boolean

Extension: ExtBoolCuidador 
Id: ExtBoolCuidador
Title:       "ExtBool Cuidador"
Description: "ExtBool Cuidador"
* value[x] only boolean

Extension: ExtBoolPresentaDiscapacidad 
Id: ExtBoolPresentaDiscapacidad
Title:       "ExtBool PresentaDiscapacidad"
Description: "ExtBool PresentaDiscapacidad"
* value[x] only boolean

Extension: ExtBoolPersonaMayor 
Id: ExtBoolPersonaMayor
Title:       "ExtBool PersonaMayor"
Description: "ExtBool PersonaMayor"
* value[x] only boolean

Extension: ExtBoolRequiereExamen 
Id: ExtBoolRequiereExamen
Title:       "ExtBool RequiereExamen"
Description: "ExtBool RequiereExamen"
* value[x] only boolean

Extension: SegundoApellido
Id: SegundoApellido
Title: "Segundo Apellido"
Description: "Segundo Apellido"
* value[x] only string



Extension: ExtStringMotivoNoPertinencia 
Id: ExtStringMotivoNoPertinencia
Title:       "ExtString MotivoNoPertinencia"
Description: "ExtString MotivoNoPertinencia"
* value[x] only string

Extension: ExtStringFundamentoPriorizacion 
Id: ExtStringFundamentoPriorizacion
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
  * code 1..1 MS
  * code from VSinterconsulta
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept.text MS

Extension: DigitoVerificador 
Id: DigitoVerificador
Title:       "DigitoVerificador"
Description: "DigitoVerificador"
* value[x] only string

Extension: SospechaPatologiaGes
Id: SospechaPatologiaGes
Title: "SospechaPatologiaGes"
Description: "SospechaPatologiaGes"
/*
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
*/
* value[x] only boolean

Extension:   EspecialidadMedicaDestinoCodigo
Id:          EspecialidadMedicaDestinoCodigo
Title:       "Especialidad Médica Destino Código"
Description: "Especialidad Médica Destino Código"
* value[x] only CodeableConcept
* value[x] ^short = "Código de la especialidad médica de destino"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS

Extension:   SubEspecialidadMedicaDestinoCodigo
Id:          SubEspecialidadMedicaDestinoCodigo
Title:       "SubEspecialidad Médica Destino Código"
Description: "SubEspecialidad Médica Destino Código"
* value[x] only CodeableConcept
* value[x] ^short = "Código de la SubEspecialidad médica de destino"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS


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