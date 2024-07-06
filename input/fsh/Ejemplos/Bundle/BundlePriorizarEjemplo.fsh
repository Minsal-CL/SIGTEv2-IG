Instance: BundlePriorizarEjemplo
InstanceOf: BundlePriorizarLE
Usage: #example
Title: "Ejemplo Bundle Prorización"
Description: "Ejemplo del mensaje de la priorización de interconsulta"

* type = #message
* timestamp = "2024-01-20T16:00:00-03:00"
* entry[messageheader]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/MessageHeader/MesssageHeaderPriorizar"
  * resource = MesssageHeaderPriorizar
* entry[servicerequest]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/SolicitudInterconsultaEjemplo4"
  * resource = SolicitudInterconsultaEjemplo4
* entry[practitioner]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Practitioner/PractitionerProfesionalLEPriorizador"
  * resource = PractitionerProfesionalLEPriorizador
* entry[practitionerRole][0]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/PractitionerRole/PractitionerRolePriorizador"
  * resource = PractitionerRolePriorizador
* entry[organization][0]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Organization/OrganizationLEPriorizadora"
  * resource = OrganizationLEPriorizadora


Instance: MesssageHeaderPriorizar
InstanceOf: MessageHeaderLE
Usage: #inline

* meta.lastUpdated = "2024-01-20T16:00:00-03:00"
* eventCoding = CSTipoEventoLE#priorizar "Priorizar"
* author = Reference(PractitionerRolePriorizador)
* source
  * software = "SISMaule"
  * endpoint = "llp:10.11.12.13:5432"

* focus[ServiceRequestLE] = Reference(SolicitudInterconsultaEjemplo4)

Instance: SolicitudInterconsultaEjemplo4
InstanceOf: ServiceRequestLE
Usage: #inline

* meta.versionId = "4.0"

// * extension[MotivoCierreInterconsulta] =  ExtensionMotivoCierreInterconsultaEj1
* extension[RequiereExamen] = ExtensionBoolRequiereExamenEj1
* extension[AtencionPreferente] =  ExtensionBoolAtencionPreferenteEj1
* extension[ResolutividadAPS] = ExtensionBoolResolutividadAPSEj1
* extension[OrigenInterconsulta] = ExtensionOrigenInterconsultaEj1
* extension[FundamentoPriorizacion] = ExtensionStringFundamentoPriorizacionEj1
* extension[EstadoInterconsultaCodigo] = ExtensionEstadoInterconsultaCodigoLEEj4
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
* performer = Reference(PractitionerRolePriorizador)
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

Instance: ExtensionEstadoInterconsultaCodigoLEEj4
InstanceOf: ExtensionEstadoInterconsultaCodigoLE
Usage: #inline

* valueCodeableConcept = CSEstadoInterconsulta#4 "A la espera de agendamiento"

Instance: ExtensionBoolAtencionPreferenteEj1
InstanceOf: ExtensionBoolAtencionPreferente
Usage: #inline

* valueBoolean = true

Instance: ExtensionStringFundamentoPriorizacionEj1
InstanceOf: ExtensionStringFundamentoPriorizacion 
Usage: #inline

* valueString = "Paciente es jefe de hogar y cuidador de adulto mayor."


Instance: PractitionerRolePriorizador
InstanceOf: PractitionerRoleLE
Usage: #inline

* active = true
* practitioner = Reference(PractitionerProfesionalLEPriorizador)
* organization = Reference(OrganizationLEPriorizadora)

* code = CSPractitionerTipoRolLE#priorizador "Priorizador"


Instance: OrganizationLEPriorizadora
InstanceOf: OrganizationLE
Usage: #inline

* identifier[0]
  * system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino"
  * value = "121343"

* name = "Centro de Referencia de Salud Miraflores"


Instance: PractitionerProfesionalLEPriorizador
InstanceOf: PractitionerProfesionalLE
Usage: #inline

*  identifier[run]
  * use = #official
  * type.coding = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#01 "RUN"
  * type.text = "Rol Único Nacional"
  * value = "19949350-7"
  * assigner.display = "Republica de Chile"

* identifier[rnpi]
  * use = #secondary
  * type.coding = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#13 "RNPI"
  * type.text = "Registro Nacional de Prestadores Individuales"
  * value = "1234543"
  * assigner.display = "Intendencia de prestadores individuales - Superintendencia de Salud"

* active = true

* name[0]
  * prefix[0] = "Dr"
  * given[0] = "Gonzalo"
  * family = "Gonzalez"
  * family.extension[segundoApellido] = SegundoApellidoPractitionerProfesionalEjemplo3

* gender = #male
* birthDate = "1980-01-01"

* qualification[TituloProfesional]
  * identifier.value = "cert"
  * code
    * coding = CSTituloProfesional#1 "MÉDICO CIRUJANO"
    * text = "MÉDICO CIRUJANO"
  * period.start = "2007-11-01"
  * issuer.display = "Universidad de Chile"

* qualification[EspecialidadMedica]
  * identifier.value = "esp"
  * code
    * coding = CSEspecialidadMed#30 "MEDICINA INTERNA"
    * text = "MEDICINA INTERNA"
  * period.start = "2010-11-01"
  * issuer.display = "Pontificia Universidad Católica de Chile"

* qualification[Subespecialidad]
  * identifier.value = "subesp"
  * code
    * coding = CSEspecialidadMed#14 "ENDOCRINOLOGÍA ADULTO"
    * text = "ENDOCRINOLOGÍA ADULTO"
  * period.start = "2014-11-01"
  * issuer.display = "Universidad de Valparaíso"

Instance: SegundoApellidoPractitionerProfesionalEjemplo3
InstanceOf: SegundoApellido
Usage: #Inline

* valueString = "Gutierrez"
