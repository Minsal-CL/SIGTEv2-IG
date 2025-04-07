Instance: BundleReferenciarEjemplo
InstanceOf: BundleReferenciarLE
Usage: #example
Title: "Ejemplo del Bundle Referenciar"
Description: "Ejemplo de un mensaje de referencia de una interconsulta"

* type = #message
* timestamp = "2024-01-18T16:00:00-03:00"
* entry[messageheader]
  * fullUrl = "http://interoperabilida<d.minsal.cl/fhir/ig/tei/MessageHeader/MesssageHeaderReferenciar"
  * resource = MesssageHeaderReferenciar
* entry[servicerequest]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/SolicitudInterconsultaEjemplo2"
  * resource = SolicitudInterconsultaEjemplo2
* entry[practitioner]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Practitioner/PractitionerProfesionalLEEjemplo"
  * resource = PractitionerProfesionalLEEjemplo
* entry[practitionerRole][0]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/PractitionerRole/PractitionerRoleReferenciador"
  * resource = PractitionerRoleReferenciador
* entry[practitionerRole][1]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/PractitionerRole/PractitionerRoleAtendedor1"
  * resource = PractitionerRoleAtendedor1
* entry[organization][0]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Organization/OrganizationLEReferenciar"
  * resource = OrganizationLEReferenciar
* entry[organization][1]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Organization/OrganizationLERevisora"
  * resource = OrganizationLEAtendedor

Instance: MesssageHeaderReferenciar
InstanceOf: MessageHeaderLE
Usage: #inline

* meta.lastUpdated = "2024-01-18T16:00:00-03:00"
* eventCoding = CSTipoEventoLE#referenciar "Referenciar"
* author = Reference(PractitionerRoleReferenciador)
* source
  * software = "SISMaule"
  * endpoint = "llp:10.11.12.13:5432"

* focus[ServiceRequestLE] = Reference(SolicitudInterconsultaEjemplo2)

Instance: SolicitudInterconsultaEjemplo2
InstanceOf: ServiceRequestLE
Usage: #inline

* meta.versionId = "2.0"

// * extension[MotivoCierreInterconsulta] =  ExtensionMotivoCierreInterconsultaEj1
* extension[RequiereExamen] = ExtensionBoolRequiereExamenEj1
// * extension[AtencionPreferente] =  ExtensionBoolAtencionPreferenteEj1
* extension[ResolutividadAPS] = ExtensionBoolResolutividadAPSEj1
* extension[OrigenInterconsulta] = ExtensionOrigenInterconsultaEj1
// * extension[FundamentoPriorizacion] = ExtensionStringFundamentoPriorizacionEj1
* extension[EstadoInterconsultaCodigo] = ExtensionEstadoInterconsultaCodigoLEEj2
* extension[EspecialidadMedicaDestinoCodigo] = ExtensionEspecialidadMedicaDestinoCodigoEj1
* extension[SubEspecialidadMedicaDestinoCodigo] = ExtensionSubEspecialidadMedicaDestinoCodigoEj1
//* extension[PertinenciaInterconsulta] = ExtensionPertinenciaInterconsultaEj1

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
* performer = Reference(PractitionerRoleAtendedor1)
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

// Instance: ExtensionMotivoCierreInterconsultaEj1
// InstanceOf: ExtensionMotivoCierreInterconsulta
// Usage: #inline

// * valueCodeableConcept = CSMotivoCierreInterconsulta#2 "Atención Realizada (1)"

Instance: ExtensionEstadoInterconsultaCodigoLEEj2
InstanceOf: ExtensionEstadoInterconsultaCodigoLE
Usage: #inline

* valueCodeableConcept = CSEstadoInterconsulta#2 "A la espera de revisión"

Instance: PractitionerRoleReferenciador
InstanceOf: PractitionerRoleLE
Usage: #inline

* active = true
* practitioner = Reference(PractitionerProfesionalLEEjemplo)
* organization = Reference(OrganizationLEReferenciar)

* code = CSPractitionerTipoRolLE#referenciador "Referenciador"

Instance: PractitionerRoleAtendedor1
InstanceOf: PractitionerRoleLE
Usage: #inline

* meta.versionId = "1.0"
* active = true
* organization = Reference(OrganizationLEAtendedor)
* code = CSPractitionerTipoRolLE#atendedor "Atendedor"

Instance: OrganizationLEReferenciar
InstanceOf: OrganizationLE
Usage: #inline

* identifier[0]
  * system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino"
  * value = "120101"

* name = "Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)"
* alias[0] = "Hospital de Los Ángeles"
* telecom
  * system = #phone
  * value = "(+56) 432336000"

* address = ClAddressOrganizacionEj1

// Instance: OrganizationLERevisora
// InstanceOf: OrganizationLE
// Usage: #inline

// * identifier[0]
//   * system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino"
//   * value = "121343"

// * name = "Centro de Referencia de Salud Miraflores"