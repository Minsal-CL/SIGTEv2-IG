Extension:   ExtensionMotivoCierreInterconsulta
Id:          ExtensionMotivoCierreInterconsulta
Title:       "Motivo Cierre Interconsulta"
Description: "Motivo Cierre Interconsulta"
Context: ServiceRequestLE

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
Context: EncounterAtenderLE, EncounterIniciarLE
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
Description: "Medio de Contacto"
Context: AppointmentAgendarLE

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



Extension:   ExtensionEstadoInterconsultaCodigoLE
Id:          ExtensionEstadoInterconsultaCodigoLE
Title:       "Estado Interconsulta Codigo"
Description: "Estado Interconsulta Codigo"
Context: ServiceRequestLE

* value[x] only CodeableConcept
* value[x] ^short = "Estado Interconsulta Codigo"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept from VSEstadoInterconsulta

Extension: ExtensionContactadoLE
Id: Contactado
Title: "ExtensionContactadoLE"
Description: "ExtensionContactadoLE"
Context: AppointmentAgendarLE
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


Extension: ExtensionSolicitudExamenes
Id: ExtensionSolicitudExamenes
Title:       "ExtBool Solicitud Examenes"
Description: "Extensión que indica si requiere solicitud examenes"
Context: CarePlanAtenderLE, ServiceRequestLE 
* value[x] only boolean

Extension: ExtensionPertinenciaAtencionBox 
Id: ExtensionPertinenciaAtencionBox
Title:       "ExtBool Pertinencia Atencion Box"
Description: "ExtBool Pertinencia Atencion Box"
Context: EncounterAtenderLE
* value[x] only boolean

Extension: ExtensionBoolResolutividadAPS 
Id: ExtensionBoolResolutividadAPS
Title:       "ExtBool ResolutividadAPS"
Description: "ExtBool ResolutividadAPS"
Context: ServiceRequestLE
* value[x] only boolean


Extension: ExtensionBoolRequiereExamen 
Id: ExtensionBoolRequiereExamen
Title:       "ExtBool RequiereExamen"
Description: "ExtBool RequiereExamen"
Context: ServiceRequestLE 

* value[x] only boolean


Extension:    ExtensionMotivoNoPertinencia 
Id:           ExtensionMotivoNoPertinencia
Title:       "ExtString MotivoNoPertinencia"
Description: "Extensión que declara un porque de la no pertinencia"
Context: EncounterAtenderLE
* value[x] only string

Extension: ExtensionStringFundamentoPriorizacion 
Id: ExtensionStringFundamentoPriorizacion
Title: "ExtensionStringFundamentoPriorizacion"
Description: "Extensión para fundamenta la priorización de la interconsulta"
Context: ServiceRequestLE
* value[x] only string



Extension: ExtensionOrigenInterconsulta
Id: ExtensionOrigenInterconsulta
Title: "Origen Interconsulta"
Description: "Origen Interconsulta"
Context: ServiceRequestLE

* value[x] only CodeableConcept
* value[x] ^short = "Codigo de la interconsulta"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept from VSorigenInterconsulta
* valueCodeableConcept.text MS

Extension:   ExtensionEspecialidadMedicaDestinoCodigo
Id:          ExtensionEspecialidadMedicaDestinoCodigo
Title:       "Especialidad Médica Destino Código"
Description: "Especialidad Médica Destino Código"
Context: ServiceRequestLE

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
Context: ServiceRequestLE

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
Context: ServiceRequestLE

* value[x] only boolean


//############## EXTENSIONES MPI-IG-FHIR #############

Extension:   PaisOrigenMPI
Id:          PaisOrigenMPI
Title:       "País de origen del paciente"
Description: "País de origen del paciente"
Context: PatientLE
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
Context: PatientLE
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


Extension: PueblosOriginariosPerteneciente
Id: PueblosOriginariosPerteneciente
Title: "PueblosOriginariosPerteneciente"
Description: "PueblosOriginariosPerteneciente"
Context: PatientLE

* value[x] only boolean
* valueBoolean ^short = "PueblosOriginariosPerteneciente"


Extension: PueblosAfrodescendiente
Id: PueblosAfrodescendiente
Title: "PueblosAfrodescendiente"
Description: "PueblosAfrodescendiente"
Context: PatientLE
* value[x] only boolean
* url and valueBoolean MS
* valueBoolean 1..1
* valueBoolean ^short = "PueblosAfrodescendiente"
* valueBoolean ^definition = "PueblosAfrodescendiente"


Extension: PueblosOriginarios
Title: "Pueblos Originarios"
Description: "Almacenar si el paciente pertenece a algun pueblo originario"
Context: PatientLE
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
Context: ClAddress

* value[x] only boolean
* valueBoolean ^short = "SituacionCalle"

Extension: Mencion
Id:   Mencion
Title:  "Mención profesional añadida l título profesional"
Description: "Mención profesional obtenida junto con el título, dato que se agrega en texto lible"
Context: PractitionerProfesionalLE.qualification

* value[x] only string