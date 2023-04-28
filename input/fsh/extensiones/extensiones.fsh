Extension:   PaisOrigenClLE
Id:          CodigoPaises
Title:       "Codigo de Identificación de países"
Description: "Esta extensión incluye códigos de paises de origen"
* value[x] only CodeableConcept
* value[x] ^short = "Código de País"
* url 1..1 MS

* valueCodeableConcept from CodPais
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept.text 1..1 MS


Extension:   PrevisionCodigoLE
Id:          PrevisionCodigoLE
Title:       "Previsión determinada de aseguramiento de salud del paciente."
Description: "La previsión es la variable que determina sistema de aseguramiento de salud del paciente."
* value[x] only CodeableConcept
* value[x] ^short = "Prevision Codigo"
* url 1..1 MS
* valueCodeableConcept from VSPrevisionCodigo
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept.text 0..1 MS


Extension:   NacionalidadCodigoClLE
Id:          NacionalidadCodigo
Title:       "Codigo de Identificación de Nacionalidad"
Description: "Codigo de Identificación de Nacionalidad"
* value[x] only CodeableConcept
* value[x] ^short = "Código de la Nacionalidad"
* url 1..1 MS
* valueCodeableConcept from CodPais
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
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
* valueCodeableConcept from VSMotivoCierreInterconsulta
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
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
* valueCodeableConcept from VSDestinoAtencionCodigo
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS


Extension:   MedioNotificacion
Id:          MedioNotificacion
Title:       "MedioNotificacion"
Description: "MedioNotificacion"
* value[x] only CodeableConcept
* value[x] ^short = "MedioNotificacion"
* url 1..1 MS
* valueCodeableConcept from VSMedioNotificacion
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  
  * system 0..1 MS
  * display 0..1 MS


Extension:   PertinenciaInterconsulta
Id:          PertinenciaInterconsulta
Title:       "Pertinencia Interconsulta"
Description: "Pertinencia Interconsulta"
* value[x] only CodeableConcept
* value[x] ^short = "Motivo No Pertinencia"
* url 1..1 MS
* valueCodeableConcept from VSPertinenciaInterconsulta
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS

Extension:   MotivoNoPertinenciaCodigo
Id:          MotivoNoPertinenciaCodigo
Title:       "Motivo No Pertinencia Codigo"
Description: "Motivo No Pertinencia Codigo"
* value[x] only CodeableConcept
* value[x] ^short = "Motivo No Pertinencia"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept from VSMotivoNoPertinenciaCodigo

Extension:   EstadoInterconsultaCodigoLE
Id:          EstadoInterconsultaCodigoLE
Title:       "Estado Interconsulta Codigo"
Description: "Estado Interconsulta Codigo"
* value[x] only CodeableConcept
* value[x] ^short = "Estado Interconsulta Codigo"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept from VSEstadoInterconsulta

Extension:   DocAcreditacionCuidadorCodigoLE
Id:          DocAcreditacionCuidadorCodigoLE
Title:       "Doc Acreditacion Cuidador"
Description: "Doc Acreditacion Cuidador"
* value[x] only CodeableConcept
* value[x] ^short = "Doc Acreditacion Cuidador"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
  //* text 1..1 MS
* valueCodeableConcept from VSDocAcreditacionCuidador



Extension:   TipoOtroTelefono
Id:          TipoOtroTelefono
Title:       "TipoOtroTelefono"
Description: "TipoOtroTelefono"
* value[x] only CodeableConcept
* value[x] ^short = "TipoOtroTelefonos"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept from VSTipoOtroTelefono



Extension:   IdentidadGenero
Id:          IdentidadGenero
Title:       "Identidad de genero"
Description: "Identidad de genero"
* value[x] only CodeableConcept
* value[x] ^short = "Codigo de la identidad de gneero"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept from VSIdentidaddeGenero

Extension: PuebloIndigena
Id: PuebloIndigena
Title: "Etnia a la cual pertenece"
Description: "Etnia a la cual pertenece"
* extension contains
	PuebloIndigenaCodigo 0..* MS and
	PuebloIndigenaPertenencia 1..1 MS
* url MS

* extension[PuebloIndigenaCodigo].value[x] only CodeableConcept
* extension[PuebloIndigenaCodigo].value[x] ^short = "Codigo de la etnia"
* extension[PuebloIndigenaCodigo].url 1..1 MS
* extension[PuebloIndigenaCodigo].valueCodeableConcept.coding 1..1 MS
  * code 0..1 MS
  * system 0..1 MS
  * display 0..1 MS
* extension[PuebloIndigenaCodigo].valueCodeableConcept.text MS
* extension[PuebloIndigenaCodigo].valueCodeableConcept.text ^short = "Ingresar pueblo pertenciente, en caso que no se encuentre en la lista"
* extension[PuebloIndigenaCodigo].valueCodeableConcept from VSPuebloIndigena

* extension[PuebloIndigenaPertenencia].value[x] only boolean

Extension: ContactadoLE
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
* extension[MotivoNoContactabilidad].valueCodeableConcept from VSMotivoNoContactabilidad

* extension[MotivoNoContactabilidad].valueCodeableConcept.coding 1..1 MS
  * code 0..1 MS
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
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept from VSinterconsulta
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
  * system 1..1 MS
  * display 0..1 MS
* valueCodeableConcept from VSEspecialidadMed

Extension:   SubEspecialidadMedicaDestinoCodigo
Id:          SubEspecialidadMedicaDestinoCodigo
Title:       "SubEspecialidad Médica Destino Código"
Description: "SubEspecialidad Médica Destino Código"
* value[x] only CodeableConcept
* value[x] ^short = "Código de la SubEspecialidad médica de destino"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 1..1 MS
  * display 0..1 MS
* valueCodeableConcept from VSEspecialidadMed
* valueCodeableConcept 1..1 MS

Extension: ExtBoolAtencionPreferente
Id: ExtBoolAtencionPreferente
Title:       "ExtBool Atención Preferente"
Description: "ExtBool ¿Hace uso de atención preferente?"
* value[x] only boolean