Instance: BundleAtenderEjemplo
InstanceOf: BundleAtenderLE
Usage: #example
Title: "Ejemplo Bundle Atender"
Description: "Ejemplo del mensaje de la atención de la interconsulta"

* type = #message
* timestamp =  "2024-02-22T08:30:00-03:00"
* entry[messageheader]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/MessageHeader/MesssageHeaderAtender"
  * resource = MesssageHeaderAtender
* entry[servicerequest]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/SolicitudInterconsultaEjemplo6"
  * resource = SolicitudInterconsultaEjemplo6
* entry[practitioner]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Practitioner/PractitionerProfesionalLEAtendedor2"
  * resource = PractitionerProfesionalLEAtendedor
* entry[practitionerRole]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/PractitionerRole/PractitionerRoleAtendedor"
  * resource = PractitionerRoleAtendedor
* entry[organization]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Organization/OrganizationLEAtendedor2"
  * resource = OrganizationLEAtendedor
* entry[encounter]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Encounter/Atencion"
  * resource = Atencion
* entry[carePlan]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/CarePlan/CarePlanAtencion"
  * resource = CarePlanAtencion
* entry[Condition]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Condition/ConditionAtencion"
  * resource = ConditionAtencion
* entry[ObservationResultadoExamen]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Observation/AntigenoProstatico"
  * resource = AntigenoProstatico
* entry[SolicitudExamen]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/Abadrenal"
  * resource = Abadrenal
* entry[Anamnesis]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Observation/Anamnesis"
  * resource = Anamnesis
* entry[SolicitudMedicamento]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/MedicationRequest/Prednisona"
  * resource = Prednisona

Instance: MesssageHeaderAtender
InstanceOf: MessageHeaderLE
Usage: #inline

* meta.lastUpdated = "2024-02-22T08:30:00-03:00"
* eventCoding = CSTipoEventoLE#atender "Atender"
* author = Reference(PractitionerRoleAtendedor)
* source
  * software = "SISMaule"
  * endpoint = "llp:10.11.12.13:5432"

* focus[ServiceRequestLE] = Reference(SolicitudInterconsultaEjemplo6)
* focus[EncounterAtenderLE] = Reference(Atencion)

	
Instance: SolicitudInterconsultaEjemplo6
InstanceOf: ServiceRequestLE
Usage: #inline

* meta.versionId = "6.0"

// * extension[MotivoCierreInterconsulta] =  ExtensionMotivoCierreInterconsultaEj1
* extension[RequiereExamen] = ExtensionBoolRequiereExamenEj1
* extension[AtencionPreferente] =  ExtensionBoolAtencionPreferenteEj1
* extension[ResolutividadAPS] = ExtensionBoolResolutividadAPSEj1
* extension[OrigenInterconsulta] = ExtensionOrigenInterconsultaEj1
* extension[FundamentoPriorizacion] = ExtensionStringFundamentoPriorizacionEj1
* extension[EstadoInterconsultaCodigo] = ExtensionEstadoInterconsultaCodigoLEEj6
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

Instance: ExtensionEstadoInterconsultaCodigoLEEj6
InstanceOf: ExtensionEstadoInterconsultaCodigoLE
Usage: #inline

* valueCodeableConcept = CSEstadoInterconsulta#6 "A la espera de cierre"

// Instance: PractitionerRoleAtendedor
// InstanceOf: PractitionerRoleLE
// Usage: #inline

// * meta.versionId = "1.0"
// * active = true
// * practitioner = Reference(PractitionerProfesionalLEAtendedor2)
// * organization = Reference(OrganizationLEAtendedor2)

// * code = CSPractitionerTipoRolLE#atendedor "Atendedor"

// Instance: OrganizationLEAtendedor2
// InstanceOf: OrganizationLE
// Usage: #inline

// * identifier[0]
//   * system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino"
//   * value = "121343"

// * name = "Centro de Referencia de Salud Miraflores"


// Instance: PractitionerProfesionalLEAtendedor2
// InstanceOf: PractitionerProfesionalLE
// Usage: #inline

// *  identifier[run]
//   * use = #official
//   * type.coding = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#01 "RUN"
//   * type.text = "Rol Único Nacional"
//   * value = "19949350-7"
//   * assigner.display = "Republica de Chile"

// * identifier[rnpi]
//   * use = #secondary
//   * type.coding = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#13 "RNPI"
//   * type.text = "Registro Nacional de Prestadores Individuales"
//   * value = "1234543"
//   * assigner.display = "Intendencia de prestadores individuales - Superintendencia de Salud"

// * active = true

// * name[0]
//   * prefix[0] = "Dr"
//   * given[0] = "Gonzalo"
//   * family = "Gonzalez"
//   * family.extension[segundoApellido] = SegundoApellidoPractitionerProfesionalEjemplo2

// * gender = #male
// * birthDate = "1980-01-01"

// * qualification[TituloProfesional]
//   * identifier.value = "cert"
//   * code
//     * coding = CSTituloProfesional#1 "MÉDICO CIRUJANO"
//     * text = "MÉDICO CIRUJANO"
//   * period.start = "2007-11-01"
//   * issuer.display = "Universidad de Chile"

// * qualification[EspecialidadMedica]
//   * identifier.value = "esp"
//   * code
//     * coding = CSEspecialidadMed#30 "MEDICINA INTERNA"
//     * text = "MEDICINA INTERNA"
//   * period.start = "2010-11-01"
//   * issuer.display = "Pontificia Universidad Católica de Chile"

// * qualification[Subespecialidad]
//   * identifier.value = "subesp"
//   * code
//     * coding = CSEspecialidadMed#14 "ENDOCRINOLOGÍA ADULTO"
//     * text = "ENDOCRINOLOGÍA ADULTO"
//   * period.start = "2014-11-01"
//   * issuer.display = "Universidad de Valparaíso"

Instance: Atencion
InstanceOf: EncounterAtenderLE
Usage: #inline

* extension[PertinenciaAtencionBox] = ExtensionPertinenciaAtencionBoxEj1
* identifier
  * value = "123"
* status = #finished
* class = CSModalidadAtencionCodigo#1 "Presencial"
* type
  * coding = CSTipoConsulta#1 "Nueva"
* subject = Reference(EjemploPatientLE)
* basedOn = Reference(SolicitudInterconsultaEjemplo6)
* participant
  * individual = Reference(PractitionerRoleAtendedor)
* period
  * start = "2024-02-22T08:00:00-03:00"
  * end = "2024-02-22T08:30:00-03:00"
* diagnosis
  * condition = Reference(ConditionAtencion)

Instance: ExtensionPertinenciaAtencionBoxEj1
InstanceOf: ExtensionPertinenciaAtencionBox
Usage: #inline
* valueBoolean = true

Instance: ConditionAtencion
InstanceOf: ConditionDiagnosticoLE
Usage: #inline

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* clinicalStatus.text = "Activo"

* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmado"

* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.text = "Diagnostico del encuentro"

* severity
  * coding = http://snomed.info/sct#24484000 "Severe"
  * text = "Severo"

* code
  * coding = http://snomed.info/sct#24867002 "Severe adrenal insufficiency"
  * text = "insuficiencia adrenal severa"

* subject = Reference(EjemploPatientLE)

* encounter = Reference(Atencion)

Instance: CarePlanAtencion
InstanceOf: CarePlanAtenderLE
Usage: #inline

* extension[Requiere-Examen] = ExtensionSolicitudExamenesEj1
* status = #active
* intent = #plan
* subject = Reference(EjemploPatientLE)
* encounter = Reference(Atencion)
* description = """
 Se le dara un tratamiento de prednisona de 500 mg, 2 veces al día por por 1 mes. Pasado ese tiempo debe realizarse un examen de Ab Adrenal después de ver mejorias, se hara control cada mes
"""
* activity[referenciaServiceRequestExamenLE]
  * reference  = Reference(Abadrenal)
* activity[referenciaReceta]
  * reference  = Reference(Prednisona)

Instance: ExtensionSolicitudExamenesEj1
InstanceOf: ExtensionSolicitudExamenes
Usage: #inline

* valueBoolean = true 

Instance: Abadrenal
InstanceOf: ServiceRequestExamenLE
Usage: #inline

* basedOn = Reference(SolicitudInterconsultaEjemplo6)
* status = #draft
* intent = #order
* code 
  * coding = http://loinc.org#8059-8
  * text = "Ab adrenal en Sérum"
* subject = Reference(EjemploPatientLE)
* authoredOn = "2024-02-22T08:30:00-03:00"
* requester = Reference(PractitionerProfesionalLEAtendedor)
* reasonCode
  * coding = http://snomed.info/sct#24867002 "Severe adrenal insufficiency"
  * text = "insuficiencia adrenal severa"
* note
  * text = "para dar seguimiento al tratamiento del paciente"

Instance: Prednisona
InstanceOf: MedicationRequestLE
Usage: #inline

* status = #draft
* intent = #order
* subject = Reference(EjemploPatientLE)
* encounter = Reference(Atencion)
* requester = Reference(PractitionerProfesionalLEAtendedor)
* medicationCodeableConcept.text = "Prednisona 5mg"
* note.text = "2 veces al día por 1 mes"

Instance: AntigenoProstatico
InstanceOf: ObservationResultadoExamen
Usage: #inline

* status = #registered
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

* code
  * coding = http://loinc.org#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
  * text = "Antigeno Prostático Específico en Suero o Plasma"

* subject = Reference(EjemploPatientLE)

* encounter = Reference(Atencion)

* effectiveDateTime = "2024-01-24T08:30:00-03:00"

* valueQuantity
  * value = 3.5
  * unit = "ng/mL"
  * system = "http://unitsofmeasure.org"
  * code = #ng/mL

Instance: Anamnesis
InstanceOf: ObservationAnamnesisLE
Usage: #inline

* status = #registered
* code = http://snomed.info/sct#84100007
* code.text = "Anamnesis"

* subject = Reference(EjemploPatientLE)

* encounter = Reference(Atencion)

* effectiveDateTime = "2024-01-24T08:30:00-03:00"

* valueString = """
A pesar de la severidad de la condición del paciente, se encuentra estable, por lo que, dar un tratamiento más fuerte podría afectar su condición, lo mejor será iniciar con algo lo suficientemente suave. Hay que mantenerlo vigilado.
"""
