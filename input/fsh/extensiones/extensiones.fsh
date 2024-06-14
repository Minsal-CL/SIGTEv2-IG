Extension:   ExtensionMotivoCierreInterconsulta
Id:          ExtensionMotivoCierreInterconsulta
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

Extension:   ExtensionConsecuenciaAtencionCodigo
Id:          ExtensionConsecuenciaAtencionCodigo
Title:       "Consecuencia Atención Codigo"
Description: "Consecuencia Atención Codigo"
* value[x] only CodeableConcept
* value[x] ^short = "Código Consecuencia Atención"
* url 1..1 MS
* valueCodeableConcept from VSConsecuenciaAtencionCodigo
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS


Extension:   ExtensionMediodeContacto
Id:          ExtensionMediodeContacto
Title:       "MediodeContacto"
Description: "MediodeContacto"

* value[x] only CodeableConcept
* value[x] ^short = "MediodeContacto"
* url 1..1 MS
* valueCodeableConcept from VSMediodeContacto
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  
  * system 0..1 MS
  * display 0..1 MS



Extension:   ExtensionPertinenciaInterconsulta
Id:          ExtensionPertinenciaInterconsulta
Title:       "Pertinencia Interconsulta"
Description: "Pertinencia Interconsulta"

Context: ServiceRequestLE

* extension contains
  EvaluacionPertinencia 1..1 MS and
  MotivoNoPertinencia 0..1 MS
* url MS

* extension[EvaluacionPertinencia].value[x] only CodeableConcept
* extension[EvaluacionPertinencia].value[x] ^short = "Evaluación de la pertinencia de la solicitud de interconsulta"
* extension[EvaluacionPertinencia].url 1..1 MS
* extension[EvaluacionPertinencia].valueCodeableConcept from VSPertinenciaInterconsulta
* extension[EvaluacionPertinencia].valueCodeableConcept 1..1 MS
* extension[EvaluacionPertinencia].valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS

* extension[MotivoNoPertinencia].value[x] only string
* extension[MotivoNoPertinencia].value[x] ^short = "Motivo No Pertinencia"
* extension[MotivoNoPertinencia].url 1..1 MS

Extension:   EvaluacionPertinencia
Id:          EvaluacionPertinencia
Title:       "Evaluacion Pertinencia"
Description: "Evaluacion Pertinencia"
* value[x] only CodeableConcept
* value[x] ^short = "Evaluación de la pertinencia de la solicitud de interconsulta"
* url 1..1 MS
* valueCodeableConcept from VSPertinenciaInterconsulta
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS

Extension:   MotivoNoPertinencia
Id:          MotivoNoPertinencia
Title:       "Motivo No Pertinencia"
Description: "Motivo No Pertinencia"
// * value[x] only string
// * value[x] ^short = "Motivo No Pertinencia"
// * url 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.coding MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept.text 0..1 MS 
* valueCodeableConcept from VSMotivoNoPertinenciaCodigo

Extension:   ExtensionEstadoInterconsultaCodigoLE
Id:          ExtensionEstadoInterconsultaCodigoLE
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

Extension: ContactadoLE
Id: Contactado
Title: "ContactadoLE"
Description: "ContactadoLE"
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
* extension[Contactado].value[x] 1..1 MS  

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

Extension: ExtensionBoolResolutividadAPS 
Id: ExtensionBoolResolutividadAPS
Title:       "ExtBool ResolutividadAPS"
Description: "ExtBool ResolutividadAPS"
* value[x] only boolean

Extension: ExtBoolAlergia 
Id: ExtBoolAlergia
Title:       "ExtBool Alergia"
Description: "ExtBool Alergia"
* value[x] only boolean

Extension: ExtBoolPresentaDiscapacidad 
Id: ExtBoolPresentaDiscapacidad
Title:       "ExtBool PresentaDiscapacidad"
Description: "ExtBool PresentaDiscapacidad"
* value[x] only boolean

Extension: ExtBoolEsCuidador 
Id: ExtBoolEsCuidador
Title:       "ExtBool EsCuidador"
Description: "ExtBool EsCuidador"
* value[x] only boolean

Extension: ExtBoolPersonaMayor 
Id: ExtBoolPersonaMayor
Title:       "ExtBool PersonaMayor"
Description: "ExtBool PersonaMayor"
* value[x] only boolean

Extension: ExtensionBoolRequiereExamen 
Id: ExtensionBoolRequiereExamen
Title:       "ExtBool RequiereExamen"
Description: "ExtBool RequiereExamen"
* value[x] only boolean


Extension: ExtStringMotivoNoPertinencia 
Id: ExtStringMotivoNoPertinencia
Title:       "ExtString MotivoNoPertinencia"
Description: "ExtString MotivoNoPertinencia"
* value[x] only string

Extension: ExtensionStringFundamentoPriorizacion 
Id: ExtensionStringFundamentoPriorizacion
* value[x] only string

Extension: ExtInteger 
Id: ExtInteger
Title:       "ExtInteger"
Description: "ExtInteger"
* value[x] only integer

Extension: ExtensionOrigenInterconsulta
Id: ExtensionOrigenInterconsulta
Title: "Origen Interconsulta"
Description: "Origen Interconsulta"
* value[x] only CodeableConcept
* value[x] ^short = "Codigo de la interconsulta"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept from VSorigenInterconsulta
* valueCodeableConcept.text MS

Extension: DigitoVerificador 
Id: DigitoVerificador
Title:       "DigitoVerificador"
Description: "DigitoVerificador"
* value[x] only string

Extension: ProblemaGES
Id: ProblemaGES
Title: "ProblemaGES"
Description: "Indica si corresponde a GES"
* value[x] only boolean

Extension:   ExtensionEspecialidadMedicaDestinoCodigo
Id:          ExtensionEspecialidadMedicaDestinoCodigo
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

Extension:   ExtensionSubEspecialidadMedicaDestinoCodigo
Id:          ExtensionSubEspecialidadMedicaDestinoCodigo
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

Extension: ExtensionBoolAtencionPreferente
Id: ExtensionBoolAtencionPreferente
Title:       "ExtBool Atención Preferente"
Description: "ExtBool ¿Hace uso de atención preferente?"
* value[x] only boolean


//############## EXTENSIONES MPI-IG-FHIR #############

Extension:   PaisOrigenMPI
Id:          PaisOrigenMPI
Title:       "País de origen del paciente"
Description: "País de origen del paciente"
* value[x] only CodeableConcept
* value[x] ^short = "Código de País"
* url 1..1 MS
* valueCodeableConcept from CodPais
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS


Extension: Religion
Title: "Religión"
Description: "Religión"
* value[x] only CodeableConcept
* value[x] ^short = "Religión del paciente"
* url and value[x].coding and value[x] and value[x].coding.system and value[x].coding.display and value[x].coding.code MS
* value[x].coding.system 1..1
* value[x].coding.display 0..1
* value[x].coding.code 1..1
* value[x] from VSReligion (required)
* value[x].coding.system ^short = "URI del system para validar"
* value[x].coding.display ^short = "Nombre de la religión"
* value[x].coding.code ^short = "Nombre de la religión"


Extension: SexoBiologico
Id: SexoBiologico
Title: "Sexo Biologico del paciente"
Description: "Sexo Biologico del paciente"
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "SexoBiologico"
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/administrative-gender

Extension: SexoNacimiento820
Id:   SexoNacimiento820
Title:  "Sexo de Nacimiento 820"
Description: "Código que identifica el sexo de nacimiento de un paciente según la definición en la Norma Técnica"
Context: PractitionerProfesionalLE

* value[x] only code
* value[x] from VSSexoBiologico (required)


Extension: PueblosOriginariosPerteneciente
Id: PueblosOriginariosPerteneciente
Title: "PueblosOriginariosPerteneciente"
Description: "PueblosOriginariosPerteneciente"

* value[x] only boolean
* valueBoolean ^short = "PueblosOriginariosPerteneciente"


Extension: PueblosAfrodescendiente
Id: PueblosAfrodescendiente
Title: "PueblosAfrodescendiente"
Description: "PueblosAfrodescendiente"
* value[x] only boolean
* url and valueBoolean MS
* valueBoolean 1..1
* valueBoolean ^short = "PueblosAfrodescendiente"
* valueBoolean ^definition = "PueblosAfrodescendiente"


Extension: PueblosOriginarios
Title: "Pueblos Originarios"
Description: "Almacenar si el paciente pertenece a algun pueblo originario"
* value[x] only CodeableConcept
* value[x] ^short = "Código Pueblo Originario"
* url and value[x].coding and value[x] and value[x].coding.system and value[x].coding.display and value[x].coding.code MS
* value[x] from PueblosOriginariosVS (required)
* value[x].coding.system 1..1
* value[x].coding.display 0..1
* value[x].coding.code 1..1
* value[x].coding.system ^short = "URI del system para validar"
* value[x].coding.display ^short = "Nombre del pueblo"
* value[x].coding.code ^short = "Código del pueblo"
* value[x].text 0..1 MS
* value[x].text ^short = "Otro pueblo originario"


Extension: SituacionCalle
Id: SituacionCalle
Title: "SituacionCalle"
Description: "SituacionCalle"

* value[x] only boolean
* valueBoolean ^short = "SituacionCalle"

Extension: Mencion
Id:   Mencion
Title:  "Mención profesional añadida l título profesional"
Description: "Mención profesional obtenida junto con el título, dato que se agrega en texto lible"
Context: PractitionerProfesionalLE.qualification

* value[x] only string