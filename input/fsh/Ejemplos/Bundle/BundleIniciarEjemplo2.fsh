Instance: BundleIniciarEjemplo2
InstanceOf: BundleIniciarLE
Usage: #example
Title: "Ejemplo Bundle Iniciar con uso de las extensiones GES"
Description: "Ejemplo de un mensaje del evento Iniciar con uso de las extensiones GES"

* type = #message
* timestamp = "2024-01-17T16:00:00-03:00"
* entry[messageheader]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/MessageHeader/MesssageHeaderIniciarGES"
  * resource = MesssageHeaderIniciarGES
* entry[servicerequest]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/SolicitudInterconsultaEjemploGES" 
  * resource = SolicitudInterconsultaEjemploGES
* entry[encounter]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/Encounter/EncounterIniciarEjemplo"
  * resource = EncounterIniciarEjemplo
* entry[patient]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/Patient/EjemploPatientLE"
  * resource = EjemploPatientLE
* entry[conditionDiagnostico]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/Condition/ConditionInicialEjemplo"
  * resource = ConditionInicialEjemplo
* entry[observationComorbilidad]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/Observation/IndiceConmorbilidadEjemplo"
  * resource = IndiceConmorbilidadEjemplo
* entry[observationDiscapacidad]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/Observation/EjemploObservationDiscapacidadLE"
  * resource = EjemploObservationDiscapacidadLE
* entry[observationCuidador]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/Observation/EjemploObservationCuidador"
  * resource = EjemploObservationCuidador
* entry[ObservationResultadoExamen]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/Observation/AnticuerpoAdrenal"
  * resource = AnticuerpoAdrenal
* entry[allergyintolerance]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/AllergyIntolerance/AllergyIntoleranceExample"
  * resource = AllergyIntoleranceExample
* entry[practitionerrole]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/PractitionerRole/PractitionerRoleIniciador"
  * resource = PractitionerRoleIniciador
* entry[practitioner]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/Practitioner/PractitionerProfesionalLEEjemplo"
  * resource = PractitionerProfesionalLEEjemplo
* entry[organization]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/Organization/OrganizationLEEjemplo"
  * resource = OrganizationLEEjemplo
* entry[motivoDerivacion]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/QuestionnaireResponse/MotivoDerivacionEjemplo"
  * resource = MotivoDerivacionEjemplo
* entry[SolicitudExamen]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/EjemploSolicitudExamen2"
  * resource = EjemploSolicitudExamen2

Instance: MesssageHeaderIniciarGES
InstanceOf: MessageHeaderLE
Usage: #inline

* meta.lastUpdated = "2024-01-17T16:00:00-03:00"
* eventCoding = CSTipoEventoLE#iniciar
* author = Reference(PractitionerRoleIniciador)
* source
  * software = "SISMaule"
  * endpoint = "llp:10.11.12.13:5432"

* focus[ServiceRequestLE] = Reference(SolicitudInterconsultaEjemploGES)

Instance: SolicitudInterconsultaEjemploGES
InstanceOf: ServiceRequestLE
Usage: #inline
// Usage: #example
// Title: "Ejemplo Solicitud de Examen con uso de las extensiones GES"
// Description: "Ejemplo de una solicitud de examen con uso de las extensiones GES"

// * extension[MotivoCierreInterconsulta] =  ExtensionMotivoCierreInterconsultaEj1
* extension[RequiereExamen] = ExtensionBoolRequiereExamenEj1
// * extension[AtencionPreferente] =  ExtensionBoolAtencionPreferenteEj1
* extension[ResolutividadAPS] = ExtensionBoolResolutividadAPSEj1
* extension[OrigenInterconsulta] = ExtensionOrigenInterconsultaEj1
// * extension[FundamentoPriorizacion] = ExtensionStringFundamentoPriorizacionEj1
* extension[EstadoInterconsultaCodigo] = ExtensionEstadoInterconsultaCodigoLEEj1
* extension[EspecialidadMedicaDestinoCodigo] = ExtensionEspecialidadMedicaDestinoCodigoEj1
* extension[SubEspecialidadMedicaDestinoCodigo] = ExtensionSubEspecialidadMedicaDestinoCodigoEj1
//* extension[PertinenciaInterconsulta] = ExtensionPertinenciaInterconsultaEj1
* extension[CorrespondeGES] = ExtensionSospechaGESEj2
* extension[ProblemaSaludGES] = ProblemaSaludGES2

//* id = "SolicitudInterconsultaEjemplo2"

* identifier.value = "123"
* status = #draft
* intent = #order

* category
  * coding = CSModalidadAtencionCodigo#1 "Presencial"

* priority = #routine

* code
  * coding = http://snomed.info/sct#103696004
  * text = "Interconsulta para atención presencial"

* subject = Reference(EjemploPatientLE)
* encounter = Reference(EncounterIniciarEjemplo)
* authoredOn = "2024-12-10T09:00:00Z"
* requester = Reference(PractitionerRoleIniciador)
* locationCode
  * coding =  CSDestinoReferenciaCodigo#1 "Nivel Secundario"
* reasonCode
  * coding = CSDerivadoParaCodigo#1 "Confirmación"

* supportingInfo[DiagnosticoInicio] = Reference(ConditionInicialEjemplo)
* supportingInfo[TipoAlergia] = Reference(AllergyIntoleranceExample)
* supportingInfo[IndiceComorbilidad] = Reference(IndiceConmorbilidadEjemplo)
* supportingInfo[Cuidador] = Reference(EjemploObservationCuidador)
* supportingInfo[Discapacidad] = Reference(EjemploObservationDiscapacidadLE)
* supportingInfo[motivoDerivacion] = Reference(MotivoDerivacionEjemplo)
* supportingInfo[SolicitudExamen] = Reference(EjemploSolicitudExamen2)
* supportingInfo[ResultadoExamen] = Reference(AnticuerpoAdrenal)

Instance: ExtensionSospechaGESEj2
InstanceOf: SospechaPatologiaGes
Usage: #inline

* valueBoolean = true

Instance: ProblemaSaludGES2
InstanceOf: ProblemaSaludGES
Usage: #inline

* extension[ProblemaSaludGES].valueCodeableConcept = ProblemaSaludGESCS#1	"Enfermedad renal crónica etapa 4 y 5"
* extension[RamaGES].valueCodeableConcept.text = "En riñón derecho"


Instance: EjemploSolicitudExamen2
InstanceOf: ServiceRequestExamenLE
Usage: #Inline

* basedOn = Reference(SolicitudInterconsultaEjemploGES)
* status = #draft
* intent = #order
* code 
  * coding = http://loinc.org#2857-1 "Ag específico de próstata: Suero o Plasma : Punto temporal: Concentración de masa: Cuantitativo:"
  * text = "Antigeno Prostático Específico en Suero o Plasma"
* subject = Reference(EjemploPatientLE)
* authoredOn = "2024-01-17T16:00:00-03:00"
* occurrenceDateTime = "2024-01-19T16:00:00-03:00"
* requester = Reference(PractitionerProfesionalLEEjemplo)
* reasonCode
  * coding = http://snomed.info/sct#414205003
  * text = "antecedente familiar de neoplasia maligna de próstata"
* note
  * text = "paciente con APE elevado en 2022, se solicita examen vigente previo a atención con especialidad"
