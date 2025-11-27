Alias: CodigoPaises = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises
Alias: IdentidadDeGenero = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero
Alias: ClAddress = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/cl-address
Alias: SegundoApellido = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido

Extension:   ExtensionMotivoCierreInterconsulta
Id:          ExtensionMotivoCierreInterconsulta
Title:       "Motivo Cierre Interconsulta"
Description: "Motivo Cierre Interconsulta"
Context: ServiceRequest

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
Context: Encounter
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
Title:       "Medio de Contacto"
Description: "Medio de Contacto"
Context: Appointment

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
Context: ServiceRequest

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
Context: ServiceRequest

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
Title: "Extension ContactadoLE"
Description: "Extension ContactadoLE"
Context: Appointment

// * obeys ext-con-01
* extension contains
	Contactado 1..1 MS and
	MotivoNoContactabilidad 0..1 MS
* url MS

* extension[MotivoNoContactabilidad].value[x] only CodeableConcept
* extension[MotivoNoContactabilidad].value[x] ^short = "Código, del cual indica el motivo de no contactabilidad"
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

// Invariant: ext-con-01
// Description: "Se debe cumplir que en caso de no ser contactado, se debe incluir el motivo de no contactabilidad."
// Expression: "(extension.exists(url = 'Contactado' and value = false) implies extension.exists(url = 'MotivoNoContactabilidad')"
// Severity: #error

Extension: ExtensionSolicitudExamenes
Id: ExtensionSolicitudExamenes
Title:       "ExtBool Solicitud Examenes"
Description: "Extensión que indica si requiere solicitud examenes"
Context: CarePlan, ServiceRequest 
* value[x] only boolean

Extension: ExtensionPertinenciaAtencionBox 
Id: ExtensionPertinenciaAtencionBox
Title:       "ExtBool Pertinencia Atencion Box"
Description: "ExtBool Pertinencia Atencion Box"
Context: Encounter
* value[x] only boolean

Extension: ExtensionBoolResolutividadAPS 
Id: ExtensionBoolResolutividadAPS
Title:       "ExtBool Resolutividad APS"
Description: "ExtBool Resolutividad APS"
Context: ServiceRequest
* value[x] only boolean


Extension: ExtensionBoolRequiereExamen 
Id: ExtensionBoolRequiereExamen
Title:       "ExtBool Requiere Examen"
Description: "ExtBool Requiere Examen"
Context: ServiceRequest 

* value[x] only boolean


Extension:    ExtensionMotivoNoPertinencia 
Id:           ExtensionMotivoNoPertinencia
Title:       "ExtString Motivo No Pertinencia"
Description: "Extensión que declara un porque de la no pertinencia"
Context: Encounter
* value[x] only string

Extension: ExtensionStringFundamentoPriorizacion 
Id: ExtensionStringFundamentoPriorizacion
Title: "Extension String Fundamento Priorizacion"
Description: "Extensión para fundamenta la priorización de la interconsulta"
Context: ServiceRequest
* value[x] only string



Extension: ExtensionOrigenInterconsulta
Id: ExtensionOrigenInterconsulta
Title: "Origen Interconsulta"
Description: "Origen Interconsulta"
Context: ServiceRequest

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
Context: ServiceRequest

* value[x] only CodeableConcept
* value[x] ^short = "Código de la especialidad médica de destino"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 1..1 MS
  * display 0..1 MS
* valueCodeableConcept from VsEspecialidadDest

Extension:   ExtensionSubEspecialidadMedicaDestinoCodigo
Id:          ExtensionSubEspecialidadMedicaDestinoCodigo
Title:       "SubEspecialidad Médica Destino Código"
Description: "SubEspecialidad Médica Destino Código"
Context: ServiceRequest

* value[x] only CodeableConcept
* value[x] ^short = "Código de la SubEspecialidad médica de destino"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 1..1 MS
  * display 0..1 MS
* valueCodeableConcept from VsEspecialidadDest
* valueCodeableConcept 1..1 MS

Extension: ExtensionBoolAtencionPreferente
Id: ExtensionBoolAtencionPreferente
Title:       "ExtBool Atención Preferente"
Description: "ExtBool ¿Hace uso de atención preferente?"
Context: ServiceRequest

* value[x] only boolean


//############## EXTENSIONES MPI-IG-FHIR #############

Extension:   PaisOrigenMPI
Id:          PaisOrigenMPI
Title:       "País de origen del paciente"
Description: "País de origen del paciente"
Context: Patient
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
Context: Patient
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
Title: "Pueblos Originarios Perteneciente"
Description: "Pueblos Originarios Perteneciente"
Context: Patient

* value[x] only boolean
* valueBoolean ^short = "PueblosOriginariosPerteneciente"


Extension: PueblosAfrodescendiente
Id: PueblosAfrodescendiente
Title: "Pueblos Afrodescendiente"
Description: "Pueblos Afrodescendiente"
Context: Patient
* value[x] only boolean
* url and valueBoolean MS
* valueBoolean 1..1
* valueBoolean ^short = "Pueblos Afrodescendiente"
* valueBoolean ^definition = "Pueblos Afrodescendiente"


Extension: PueblosOriginarios
Title: "Pueblos Originarios"
Description: "Almacenar si el paciente pertenece a algun pueblo originario"
Context: Patient
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
Title: "Situacion Calle"
Description: "Situacion Calle"
Context: Address

* value[x] only boolean
* valueBoolean ^short = "Situacion Calle"

Extension: Mencion
Id:   Mencion
Title:  "Mención profesional añadida al título profesional"
Description: "Mención profesional obtenida junto con el título, dato que se agrega en texto lible"
Context: Practitioner.qualification

* value[x] only string

Extension: SospechaPatologiaGes
Id: SospechaPatologiaGes
Title: "SospechaPatologiaGes"
Description: "Indica si corresponde a GES"
* value[x] only boolean