Instance: BundleRevisarEjemplo
InstanceOf: BundleRevisarLE
Usage: #example
Title: "Ejemplo Bundle Revisar"
Description: "Ejemplo del mensaje de la revisión de interconsulta"

* type = #message
* timestamp = "2024-01-19T16:00:00-03:00"
* entry[messageheader]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/MessageHeader/MesssageHeaderRevisar"
  * resource = MesssageHeaderRevisar
* entry[servicerequest]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/SolicitudInterconsultaEjemplo3"
  * resource = SolicitudInterconsultaEjemplo3
* entry[practitioner]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Practitioner/PractitionerProfesionalLERevisor"
  * resource = PractitionerProfesionalLERevisor
* entry[practitionerRole][0]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/PractitionerRole/PractitionerRoleRevisor2"
  * resource = PractitionerRoleRevisor2
* entry[organization][0]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Organization/OrganizationLERevisora2"
  * resource = OrganizationLERevisora2
* entry[servicerequestexamen]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/SolicitudExamenEjemplo2"
  * resource = SolicitudExamenEjemplo2

Instance: MesssageHeaderRevisar
InstanceOf: MessageHeaderLE
Usage: #inline

* meta.lastUpdated = "2024-01-19T16:00:00-03:00"
* eventCoding = CSTipoEventoLE#revisar "Revisar"
* author = Reference(PractitionerRoleRevisor2)
* source
  * software = "SISMaule"
  * endpoint = "llp:10.11.12.13:5432"

* focus[ServiceRequestLE] = Reference(SolicitudInterconsultaEjemplo3)

Instance: SolicitudInterconsultaEjemplo3
InstanceOf: ServiceRequestLE
Usage: #inline

* meta.versionId = "3.0"

// * extension[MotivoCierreInterconsulta] =  ExtensionMotivoCierreInterconsultaEj1
* extension[RequiereExamen] = ExtensionBoolRequiereExamenEj1
// * extension[AtencionPreferente] =  ExtensionBoolAtencionPreferenteEj1
* extension[ResolutividadAPS] = ExtensionBoolResolutividadAPSEj1
* extension[OrigenInterconsulta] = ExtensionOrigenInterconsultaEj1
// * extension[FundamentoPriorizacion] = ExtensionStringFundamentoPriorizacionEj1
* extension[EstadoInterconsultaCodigo] = ExtensionEstadoInterconsultaCodigoLEEj3
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
* performer = Reference(PractitionerRoleRevisor2)
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
* supportingInfo[SolicitudExamen] = Reference(SolicitudExamenEjemplo2)
* supportingInfo[ResultadoExamen] = Reference(AnticuerpoAdrenal)

Instance: ExtensionPertinenciaInterconsultaEj1
InstanceOf: ExtensionPertinenciaInterconsulta
Usage: #inline

* extension[EvaluacionPertinencia]
  * url = "EvaluacionPertinencia" 
  * valueCodeableConcept = CSPertinenciaInterconsulta#3 "Pertinente Incompleta"
  
Instance: ExtensionEstadoInterconsultaCodigoLEEj3
InstanceOf: ExtensionEstadoInterconsultaCodigoLE
Usage: #inline

* valueCodeableConcept = CSEstadoInterconsulta#3 "A la espera de priorización"

Instance: PractitionerRoleRevisor2
InstanceOf: PractitionerRoleLE
Usage: #inline

* active = true
* practitioner = Reference(PractitionerProfesionalLERevisor)
* organization = Reference(OrganizationLERevisora2)

* code = CSPractitionerTipoRolLE#revisor "Revisor"


Instance: OrganizationLERevisora2
InstanceOf: OrganizationLE
Usage: #inline

* identifier[0]
  * system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino"
  * value = "121343"

* name = "Centro de Referencia de Salud Miraflores"


Instance: PractitionerProfesionalLERevisor
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
  * family.extension[segundoApellido] = SegundoApellidoPractitionerProfesionalEjemplo2

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

Instance: SegundoApellidoPractitionerProfesionalEjemplo2
InstanceOf: SegundoApellido
Usage: #Inline

* valueString = "Gutierrez"

Instance: SolicitudExamenEjemplo2
InstanceOf: ServiceRequestExamenLE
Usage: #inline

* basedOn = Reference(SolicitudInterconsultaEjemplo3)
* status = #draft
* intent = #order
* code 
  * coding = http://loinc.org#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
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