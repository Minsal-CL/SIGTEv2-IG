Instance: BundleAgendarEjemplo
InstanceOf: BundleAgendarLE
Usage: #example
Title: "Ejemplo Bundle Agendar"
Description: "Ejemplo del mensaje de la agenda para la atención de la interconsulta"

* type = #message
* timestamp =  "2024-02-20T16:00:00-03:00"
* entry[messageheader]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/MessageHeader/MesssageHeaderAgendar"
  * resource = MesssageHeaderAgendar
* entry[servicerequest]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/SolicitudInterconsultaEjemplo5"
  * resource = SolicitudInterconsultaEjemplo5
* entry[practitionerAdministrativo]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Practitioner/ProfesionalAdministrativoEjemplo"
  * resource = ProfesionalAdministrativoEjemplo
* entry[practitionerProfesional]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Practitioner/PractitionerProfesionalLEAtendedor"
  * resource = PractitionerProfesionalLEAtendedor
* entry[practitionerRole][0]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/PractitionerRole/PractitionerRoleAgendador"
  * resource = PractitionerRoleAgendador
* entry[practitionerRole][1]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/PractitionerRole/PractitionerRoleAtendedor"
  * resource = PractitionerRoleAtendedor
* entry[organization][0]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Organization/OrganizationLEAtendedor"
  * resource = OrganizationLEAtendedor
* entry[appointment]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Appointment/AgendaEjemplo"
  * resource = AgendaEjemplo

Instance: MesssageHeaderAgendar
InstanceOf: MessageHeaderLE
Usage: #inline

* meta.lastUpdated = "2024-02-20T16:00:00-03:00"
* eventCoding = CSTipoEventoLE#agendar "Agendar"
* author = Reference(PractitionerRoleAgendador)
* source
  * software = "SISMaule"
  * endpoint = "llp:10.11.12.13:5432"

* focus[ServiceRequestLE] = Reference(SolicitudInterconsultaEjemplo5)
* focus[AppointmentAgendarLE] = Reference(AgendaEjemplo)
	
Instance: SolicitudInterconsultaEjemplo5
InstanceOf: ServiceRequestLE
Usage: #inline

* meta.versionId = "5.0"

// * extension[MotivoCierreInterconsulta] =  ExtensionMotivoCierreInterconsultaEj1
* extension[RequiereExamen] = ExtensionBoolRequiereExamenEj1
* extension[AtencionPreferente] =  ExtensionBoolAtencionPreferenteEj1
* extension[ResolutividadAPS] = ExtensionBoolResolutividadAPSEj1
* extension[OrigenInterconsulta] = ExtensionOrigenInterconsultaEj1
* extension[FundamentoPriorizacion] = ExtensionStringFundamentoPriorizacionEj1
* extension[EstadoInterconsultaCodigo] = ExtensionEstadoInterconsultaCodigoLEEj5
* extension[EspecialidadMedicaDestinoCodigo] = ExtensionEspecialidadMedicaDestinoCodigoEj1
* extension[SubEspecialidadMedicaDestinoCodigo] = ExtensionSubEspecialidadMedicaDestinoCodigoEj1
* extension[PertinenciaInterconsulta] = ExtensionPertinenciaInterconsultaEj1

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
* performer = Reference(PractitionerRoleAtendedor)
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
* supportingInfo[SolicitudExamen] = Reference(EjemploSolicitudExamen)
* supportingInfo[ResultadoExamen] = Reference(AnticuerpoAdrenal)

Instance: ExtensionEstadoInterconsultaCodigoLEEj5
InstanceOf: ExtensionEstadoInterconsultaCodigoLE
Usage: #inline

* valueCodeableConcept = CSEstadoInterconsulta#5 "En espera de la atención"

Instance: PractitionerRoleAgendador
InstanceOf: PractitionerRoleLE
Usage: #inline

* active = true
* practitioner = Reference(ProfesionalAdministrativoEjemplo)
* organization = Reference(OrganizationLEAtendedor)

* code = CSPractitionerTipoRolLE#agendador "Agendador"