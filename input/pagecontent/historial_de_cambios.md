## Versión 0.2.2

#### ServiceRequest LE

  - Se incluye la extension para validar si la solicitud corresponde a GES.
  - Se inlcuye extensión para especificar la patología ges a tratar.
  - Se incluye ejemplo para el uso de extensiones.

### Bundle Iniciar LE

  - Se genera un nuevo Ejemplo para el iniciar LE que incluya un ServiceRequest con las extensiones nuevas.  

## Versión 0.2.1

### Cambios Generales

- Se obliga el uso de un id(Temporal) para todos los perfiles, a excepción del messageHeader y los Bundles.
- Se incluyen los fullUrl de todos los Bundle.
- En todos los Perfiles Bundle:
  - Los timestamp de 0..1 -> 1..1
  - Los entry.resource 0..1 -> 1..1
- En todos los perfiles bundles se elimina el uso de la tabla de datos y sus consideraciones
- En las extensiones se ajustan los contextos para el uso en los servidores
- Se habilitaron Ejemplos de todos los perfiles


### Perfiles

#### ObservationResultadoExamen

- Se cambia Id de ExamenesAnteriores A ObservationResultadoExamen
- Se incluye el valor encounter 1..1
- Se Actualiza el titulo y la descripción
- Effective[x] a EffectiveDateTime 1..1 MS
- Se elimino obligatoriedad del code.text y el requerido de exámenes

#### ObservationIndiceComorbilidadLE

- encounter pasa a MS y se referencia a los perfiles [EncounterIniciarLE](StructureDefinition-EncounterIniciarLE.html) y [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.html)
- Se corrije el uso del code y el biding [TipoDeObservacion](ValueSet-TipoDeObservacion.html) para determinar el tipo de observación
- Se agrega el dato value[x] forzado a valueCodebleConcept, la cardinalidad a 1..1 y se realiza un biding al [VSIndicecomorbilidad](ValueSet-VSIndicecomorbilidad.html)

#### ObservationIniciarCuidadorLE

- encounter pasa a MS y se referencia a los perfiles [EncounterIniciarLE](StructureDefinition-EncounterIniciarLE.html) y [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.html)
- se depreca extension ExtBoolEsCuidador
- se incluye el ValueBoolean a 1..1

#### ObservationDiscapacidadLE

- encounter pasa a MS y se referencia a los perfiles [EncounterIniciarLE](StructureDefinition-EncounterIniciarLE.html) y [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.html)
- se depreca extension ExtBoolPresentaDiscapacidad
- se incluye el ValueBoolean a 1..1
- Se incluye el biding [TipoDeObservacion](ValueSet-TipoDeObservacion.html) para determinar el tipo de observación.

#### ObservationAtender -> ObservationAnamnesisLE

- se incluye el code = http://snomed.info/sct#84100007
- se incluye el code.text = "Anamnesis"
- se incluye biding a [TipoDeObservacion](ValueSet-TipoDeObservacion.html)

#### ServiceRequestLE

- Se actualizan las extensiones de
  - MotivoCierreInterconsulta -> ExtensionMotivoCierreInterconsulta
  - ExtensionBoolRequiereExamen -> ExtensionBoolRequiereExamen
  - BoolAtencionPreferente -> ExtensionBoolAtencionPreferente
  - BoolResolutividadAPS -> ExtensionBoolResolutividadAPS
  - OrigenInterconsulta -> ExtensionOrigenInterconsulta
  - StringFundamentoPriorizacion -> ExtensionStringFundamentoPriorizacion
  - EstadoInterconsultaCodigoLE -> ExtensionEstadoInterconsultaCodigoLE
  - EspecialidadMedicaDestinoCodigo -> ExtensionEspecialidadMedicaDestinoCodigo
  - SubEspecialidadMedicaDestinoCodigo -> ExtensionSubEspecialidadMedicaDestinoCodigo
  - PertinenciaInterconsulta -> ExtensionPertinenciaInterconsulta
- Se agrega la extension CorrespondeGES
- Se actualiza referencia de ExamenesAnteriores A ObservationResultadoExamen
- Se mueve ObservationResultadoExamen de ReasonReference a SupportInfo
- supportingInfo[Discapacidad] 1..1 -> 0..1
- performer 1..1 -> 0..1
- requester 1..1 -> 0..1
- authoredOn 1..1 -> 0..1
- code 1..1 -> 0..1

#### ServiceRequestExamenLE

- Se modifica la descripción del identifier
- authoredOn 0..1 -> 1..1
- ocurrenceDateTime 1..1 -> 0..1

#### ConditionDiagnosticoLE

- Se cambia cardinalidad clinicalStatus 1..1 a 0..1
- Se cambia cardinalidad de verificationStatus 1..1 a 0..1
- Se cambia cardinalidad de code.coding 1..1 a 1..\*

#### CarePlanAtenderLE

- se modifica la cardinalidad de **activity[referenciaReceta]** de 0..1 -> 0.._ y **activity[referenciaServiceRequestExamenLE]** 0..1 -> 0.._
- se modifica descripción del description
- se pasa MS el encounter y se solicita que sean **EncounterAtenderLE**

#### PatientLE

- Identifier 1..\*
- Identifier.type.coding 1..1
- telecom.system 1..1
- telecom.value 1..1

#### PractitionerAdministrativoLE

- Se cambian las descripciones del Identifier
- Cambia cardinalidad de name.family 0..1 -> 1..1
- Cambia cardinalidad de name.given 0.._ -> 1.._
- Cambia cardinalidad de telecom.system 0..1 -> 1..1
- Cambia cardinalidad de telecom.value 0..1 -> 1..1
- Se corrige type.coding.code 1 -> 01

#### PractitionerProfesionalLE

- Cambia cardinalidad de name.family 0..1 -> 1..1
- Cambia cardinalidad de name.given 0.._ -> 1.._
- Cambia cardinalidad de telecom.system 0..1 -> 1..1
- Cambia cardinalidad de telecom.value 0..1 -> 1..1
- Se corrige type.coding.code 1 -> 01

#### AppointmentAgendarLE

- end 0..1 -> 1..1

#### MessageHeaderLE

- Se cambia la descripción del author
- Se cambia descripción focus[ServiceRequestLE], focus[AppointmentAgendarLE] y focus[EncounterAtenderLE]

#### EncounterIniciarLE

- Se cambia obligatoriedad y must support del identifier.type

#### EncounterAtenderLE

- Se cambia obligatoriedad y must support del identifier.type
- Se cambia la cardinalidad de diagnosis 1..1 -> 1..\*

#### AllergyIntoleranceIniciarLE

- Se agrega Must Support a clinicalStatus y verificationStatus

#### MedicationRequestLE

- Se crea el perfil

---

### Bundles

#### BundleIniciarLE

- Se actualiza recurso de ExamenesAnteriores A ObservationResultadoExamen
- se actualiza entry de 8..17 a 9..\*
- se actualiza entry[ObservationResultadoExamen] 0..1 a 0..\*
- se actualiza entry[observationDiscapacidad] 1..1 a 0..1
- edición de short observation
- se actualiza entry[allergyintolerance] 0..1 a 0..\*
- se crea entry[SolicitudExamen] 0..\*

#### BundleAtenderLE

- Se modifica la cardinalidad de entry de 0.._ -> 7.._
- Se cambia ObservationAtender LE por ObservationResultadoExamen
- Se incluye la solicitud de medicamento y la solicitud de exámenes.
- Se incluye la condición del encuentro

#### BundleRevisarLE

- Se modifica la cardinalidad de entry de 7.._ -> 5.._
- Se modifica la cardinalidad de entry[servicerequestexamen] de 0..1 -> 0..\*
- Se modifica la cardinalidad de entry[practitionerRole] de 1..1 -> 1..2
- Se modifica la cardinalidad de entry[organization] de 1..1 -> 1..2

#### BundlePriorizarLE

- Se modifica la cardinalidad de entry de 5..5 -> 5..7
- Se modifica la cardinalidad de entry[practitionerRole] de 1..1 -> 1..2
- Se modifica la cardinalidad de entry[organization] de 1..1 -> 1..2

---

### Extensiones

#### Renombradas

- La extensión **ContactadoLE** paso a llamarse **ExtensionContactadoLE**
- La extension **ExtBoolPertinenciaAtencionBox** paso a llamarse **ExtensionPertinenciaAtencionBox**
- La extensión **ExtBoolSolicitudExamenes** paso a llamarse **ExtensionSolicitudExamenes**
- La extensión **ExtStringMotivoNoPertinencia** paso a llamarse **ExtensionMotivoNoPertinencia**

#### Actualizadas

- Extension [ExtensionEspecialidadMedicaDestinoCodigo](StructureDefinition-ExtensionEspecialidadMedicaDestinoCodigo.html) y [ExtensionSubEspecialidadMedicaDestinoCodigo](StructureDefinition-ExtensionSubEspecialidadMedicaDestinoCodigo.html)
  - Se cambia el binding de ValueSet de Especialidad Medica a Especialidad de Destino

#### Nuevas

- Se crea la extension SospechaPatologiaGes
- Se agrega la extension CorrespondeGES

---

### ValueSets

#### Nuevos

- [TipoDeObservacion](ValueSet-TipoDeObservacion.html)
- [VsEspecialidadDest](ValueSet-VsEspecialidadDest.html)

#### Eliminados

- Códigos para sexo biológico en Chile
- Documento Acreditacion Cuidador
- Identidad de Genero
- Isapres
- PrevisionCodigo
- Sospecha Patologia
- VSTipoCodDiagnostica
- VSHipotesisDiagnosticaCodigo

#### Modificados

- ValueSet [TerminologiasDiag](ValueSet-VSTerminologiasDiag.html)
  - se filtra a hallazgos clínicos

---

### CodeSystems

#### Eliminados

- Códigos para Sexo de Nacimiento de Paciente
- Documento Acreditacion Cuidador
- Identidad de Genero
- Isapres
- PrevisionCodigo
- Tipo Codificación Diagnostica
- Sospecha Patologia
- CSHipotesisDiagnosticaCodigo

#### Nuevos

- [CSTipoObservacionMinsal](CodeSystem-CSTipoObservacionMinsal.html)

---

### Deprecaciones

- Perfil **Condición GES** se depreca y se elimina cualquier referencia a él.
- Se depreca el recurso **Coverage**
- Se depreca ConceptMap CMHipotesisDiagnosticaCodigoAConditionVerificationStatus

---

## Versión 0.2.0

- Perfil [PatientLE](StructureDefinition-PatientLE.html)

  - Se elimina elemento "IdentidadDeGenero" repetido, dejando solo el que viene referenciado desde la **Guia CLCore**
  - Extension "País de origen del paciente", el binding se modifica para dejarlo linkeado al elemento "valueCodeableConcept".
  - Extension "Religión", el binding se modifica para dejarlo linkeado al elemento "valueCodeableConcept".
  - Extension "Pueblos Originarios", el binding se modifica para dejarlo linkeado al elemento "valueCodeableConcept".
  - Se elimina la extension "LugarDeNacimiento"
  - El elemento "deceased[x]" se deja abierto para que se pueda registrar una fecha de fallecimiento o un booleano sobre si el paciente esta fallecido o no
  - El elemento identifier.type.extension[paisEmisionDocumento] se le cambia la cardinalidad de 0..1 -> 1..1
  - Se cambia cardinalidad birthDate 0..1 -> 1..1
  - Se cambia cardinalidad de extension nacionalidad 0..1 -> 1..1

- Perfil [BundleAtenderLE](StructureDefinition-BundleAtenderLE.html)

  - Se agrega entry AllergyIntolerance aceptando solo AllergyIntoleranceIniciarLE en el campo resource
  - Se elimina slice "questionnaireResponse"

- Perfil [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.html)

  - Se agrega extensión ConsecuenciaAtencionCodigo

- Perfil [EncounterIniciarLE](StructureDefinition-EncounterIniciarLE.html)

  - Se agrega extensión ConsecuenciaAtencionCodigo
  - Se fija valor ConsecuenciaAtencionCodigo.valueCodeableConcept.coding.code <- 3

- Perfil [ServiceRequestExamenLE](StructureDefinition-ServiceRequestExamenLE.html)

  - Se fija valor identifier.type.coding.code -> 02

- Perfil [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html)

  - Se elimina la extension "CorrespondeGES"
  - Se elimina la extension "RequiereExamen"
  - requester se modifica cardinalidad 0..1 -> 1..1
  - requester se agrega MustSupport
  - requester debe referenciar solo a "PractitionerRoleLE"
  - authoredOn se modifica cardinalidad 0..1 -> 1..1
  - intent se cambia la descripcion "Tipo de Servicio solicitado" -> "Tipo de solicitud"
  - code se modifica cardinalidad 0..1 -> 1..1
  - Se elemina extension "Alergia"
  - Se cambia cardinalidad supportingInfo[TipoAlergia] 0..1 -> 0..\*
  - Se cambia cardinalidad supportingInfo[motivoDerivacion] 0..1 -> 1..1
  - Se elimina extensión ConsecuenciaAtencionCodigo
  - Se modifica el nombre del slice supportingInfo:DiagnosticoSospecha -> supportingInfo:DiagnosticoInicio
  - Se elimina extension MotivoNoPertinenciaCodigo de doNotPerform

- Perfil [AllergyIntoleranceIniciarLE](StructureDefinition-AllergyIntoleranceIniciarLE.html)
  - code.coding modifica cardinalidad 0..1 -> 1..1
  - code.coding.code modifica cardinalidad 0..1 -> 1..1
  - Se fija binding http://hl7.org/fhir/ValueSet/allergyintolerance-code para code
- Perfil [BundleRevisarLE](StructureDefinition-BundleRevisarLE.html)
  - Se modifica la cardinalidad de entry[practitionerRole] 2..2 -> 1..1
  - Se modifica la cardinalidad de entry[organization] 2..2 -> 1..1
- Perfil [ExamenesAnteriores](StructureDefinition-ObservationResultadoExamen.html)

  - Se cambia cardinalidad subject 0..1 -> 1..1
  - Se cambia cardinalidad code.text 1..1 -> 0..1
  - Se fija la referencia de subject solo a PatientLE
  - Se fija el valor "laboratory" de category.coding.code
  - Se fija cardinalidad coding 1..1
  - Se fija cardinalidad code 1..1

- Perfil [PractitionerAdministrativoLE](StructureDefinition-PractitionerAdministrativoLE.html)

  - Se elimina la extension Nacionalidad
  - Se cambia cardinalidad birthDate 1..1 -> 0..1
  - Se elimina el slice identifier:run
  - Se fija cardinalidad de identifier 1..1
  - Se deja solo el slice qualification[TituloProfesional]
  - Se remueve el valor obligatorio para type.coding.system
  - Se fija la referencia de beneficiary -> "PatientLE"-
  - Se cambia el nombre del perfil de CoverageIniciarLE -> CoverageLE
  - Se cambia cardinalidad de identifier[run].coding -> 1..1
  - Se cambia cardinalidad de identifier[run].type.coding -> 1..1
  - Se cambia cardinalidad de identifier[run]value -> 1..1

- Perfil [ObservationIniciarIndiceComorbilidadLE](StructureDefinition-ObservationIndiceComorbilidadLE.html)

  - Se fija el valor "final" para el elemento status
  - Se cambia cardinalidad category.text 1..1 -> 0..1

- Perfil [AppointmentAgendarLE](StructureDefinition-AppointmentAgendarLE.html)

  - Se elimina el valor fijado en participant[patientLE].status = #accepted, quedando libre para el set de valores accepted | declined | tentative | needs-action
  - Se cambia cardinalidad extension ExtensionContactadoLE 0..1 -> 1..1
  - Se cambia cardinalidad create 0..1 -> 1..1

- Perfil **CoverageLE**

  - Se cambia cardinalidad type 1..1 -> 0..1
  - Se remueve el valor obligatorio para type.coding.system
  - Se fija la referencia de beneficiary -> "PatientLE"
  - Se cambia el nombre del perfil de CoverageIniciarLE -> CoverageLE
  - Se cambia el bindig del type a VSPrevisionCodigo
  - Se cambia el bindig del class.type a VSInstitucionAseguradora
  - Se agrega PatientLE como referencia a payor

- Perfil [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.html)

  - Se cambia cardinalidad type 1..1 -> 0..1
  - Se fija la referencia de participant.individual -> PractitionerRoleLE
  - Se elimina el slice reasonReference[ObservationAtenderLE]
  - Se fija la referencia de reasonReference a "QuestionnaireResponseAtenderLE"

- Perfil [QuestionnaireResponseIniciarLE](StructureDefinition-QuestionnaireResponseIniciarLE.html)

  - Se cambia cardinalidad item 0..1 -> 1..1
  - Se cambia cardinalidad item.linkId 0..1 -> 1..1
  - Se fija referencia subject only Reference(PatientLE)
  - Se fija referencia encounter only Reference(EncounterIniciarLE)
  - Se fija referencia author only Reference(PractitionerProfesionalLE)

- Perfil [ObservationIniciarCuidadorLE](StructureDefinition-ObservationIniciarCuidadorLE.html)

  - Se agrega la extension EsCuidador

- Perfil [EncounterIniciarLE](StructureDefinition-EncounterIniciarLE.html)

  - Se cambia cardinalidad diagnosis 1..1 -> 1..\*
  - Se fija la referencia de participant.individual solo a PractitionerRoleLE

- Perfil [ConditionDiagnosticoLE](StructureDefinition-ConditionDiagnosticoLE.html)

  - Se fija la referencia de encounter a EncounterIniciarLE
  - Se cambia la descripcion del elemento category.text
  - Se cambia la descripcion del elemento code.text
  - Se cambia la cardinalidad de severity.coding.system 1..1 -> 0..1
  - Se cambia la cardinalidad de code.coding.display 1..1 -> 0..1
  - Se agrega binding en code VSTerminologiasDiag

- Perfil [CarePlanAtenderLE](StructureDefinition-CarePlanAtenderLE.html)
  - Se modifica el nombre de la extension solicitudExamen -> Requiere-Examen
  - Se cambia la cardinalidad de activity 0..\* -> 0..2
  - Se cambia la cardinalidad de activity[referenciaReceta].reference 0..1 -> 1..1
  - Se cambia la cardinalidad de activity[referenciaServiceRequestExamenLE].reference 0..1 -> 1..1
- Se cambia el nombre del perfil ConditionDiagnosticoLE -> ConditionDiagnosticoLE

  - Se modifica el nombre de la extension solicitudExamen -> Requiere-Examen

- valueSet cambia nombre -> VSorigenInterconsulta
- codeSystem cambia nombre CSinterconsulta -> CSorigenInterconsulta
- Extension cambia nombre Interconsulta -> OrigenInterconsulta
- Extension OrigenInterconsulta.valueCodeableConcept cambia binding a VSorigenInterconsulta
- Se crea la extensión ExtBoolEsCuidador
- Se elimina el perfil DocumentReferenceIniciarLE y todas sus referencias

- [ObservationDiscapacidadLE](StructureDefinition-ObservationDiscapacidadLE.html)

  - Se cambia cardinalidad subjecto 0..1 -> 1..1
  - EspOdo -> EspecialidadOdontologica

- [PractitionerProfesionalLE](StructureDefinition-PractitionerProfesionalLE.html)

  - Se cambia el nombre de los siguientes slices de qualification:
    - EspOdo -> EspecialidadOdontologica
    - EspBioQ -> EspecialidadBioQuimica
    - EspFarma -> EspecialidadFarmacologica
  - Se cambia cardinalidad identifier[rnpi] 1..1 -> 0..1
  - Se elimina identifier[pasaporte]
  - Se elimina identifier[otro]
  - Se modifica la cardinalidad de identifier[run].use 0..1 -> 1..1 y MS
  - Se fija el valor de identifier[run].use = #official
  - Se eleminia la extension SexoBiologico
  - Se cambia binding para identifier.[run] <- VSIdentificadorPrestador
  - Se cambia binding para identifier.[rnpi] <- VSIdentificadorPrestador
  - Se cambia cardinalidad qualification[TituloProfesional] 1..1 -> 1..\*
  - Se fija el valor de address.use = #work
  - Se cambia cardinalidad address.use 0..1 -> 1..1
  - Se cambia el binding de qualification[EspecialidadMedica].code -> VSEspecialidadMed
  - Se cambia la cardinalidad de qualification[TituloProfesional].identifier 0..1 -> 1..1
  - Se cambia la cardinalidad de qualification[EspecialidadMedica].identifier 0..1 -> 1..1
  - Se cambia la cardinalidad de qualification[Subespecialidad].identifier 0..1 -> 1..1
  - Se cambia la cardinalidad de qualification[EspecialidadOdontologica].identifier 0..1 -> 1..1
  - Se cambia la cardinalidad de qualification[EspecialidadBioQuimica].identifier 0..1 -> 1..1
  - Se cambia la cardinalidad de qualification[EspecialidadFarmacologica].identifier 0..1 -> 1..1

- Se elimina VSEspecialidades
- Se cambia el nombre el perfil ConditionInicioDiagnosticoLE -> ConditionDiagnosticoLE
- Se elimina el recurso CondicionAtenderDiagnosticoConfirmacionLE
- Se cambia nombre de VSSospechaPatologiaGes -> VSProblemaGES
- Se cambia nombre de CSSospechaPatologiaGes -> CSProblemaGES
- Se cambia nombre de CSIdInterconsulta -> CSTipoIdentificadorSR
- Se cambia nombre de VSIdInterconsulta -> VSTipoIdentificadorSR
- Se modifican valores de CSTipoIdentificadorSR
- Se cambia nombre de CSMedioNotificacion -> CSMediodeContacto
- Se cambia nombre de VSMedioNotificacion -> VSMediodeContacto
- Se modifican valores de CSMediodeContacto
- Se modifican valores de CSMotivoNoContactabilidad
- Se cambia cardinalidad en elemento de extension \* extension[ExtensionContactadoLE].extension[Contactado].value[x] 0..1 -> 1..1
- Se eleminia la extension DocAcreditacionCuidadorCodigoLE
- Se crea VSIsapres
- Se crea CSIsapres
- Se crea VSTerminologiasDiag
- Se cambia nombde de perfil ObservationIniciarLE -> ExamenesAnteriores
- Se elimina VSTipoIdentificadorSR
- Se elimina CSTipoIdentificadorSR

- Modificaciones de la "CLcore"
  - Se cambió el nombre de la extension identifier.type.extension[paises] -> identifier.type.extension[paisEmisionDocumento]
  - Extension "Codigo de Identificación de países", el binding se modifica para dejarlo linkeado al elemento "valueCodeableConcept.
  - **PrestadorCL**
    - Se cambia el nombre de los siguientes slices de qualification:
      - Cert -> TituloProfesional
      - Esp -> EspecialidadMedica
      - SubEsp -> Subespecialidad
- Para el perfil PrestadorCL se fija en todos los slices del identifier[run|rnpi|pasaporte|otro].type from VSTipoIdentificador

  Se incluyeron los ejemplos

  - Cambio cardinalidad **contact.name.given** 0..1 -> 0..\*

- El elemento **addresss** debe cumplir con **ClAddress** para las direcciones de los perfiles **OrganiztionCL** y **LocalizacionCL**
- Cambio en el **Ejemplo Organización Prestadora de Salud** para cumplir con el perfil **OrganiztionCL**
- Cambio en el **Ejemplo Localización Farmacia** para cumplir con el perfil **LocalizacionCL**
- Se incluyo el context en las siguientes extensiones:

  - **Códigos para Comunas en Chile**
  - **Códigos para Provincias en Chile**
  - **Códigos para Regiones en Chile**
  - **Identificación del Contacto de un Paciente**
  - **Especialidad del médico principal**
  - **Contacto de los participantes secundarios del encuentro**

- Se depreca perfil QuestionnaireResponseAntederLE

---

### Cambios de versión 0.1.5 a versión 0.1.6

- **Cambios generales:**

  - Todos los Bundles ahora cuentan con secciones de consideraciones generales y específicas, además de su conjunto mínimo de datos.
  - Los atributos de todos los recursos cuentan con descripciones en español, esto solo para los que aparezcan en las "Diferential Tables"
  - Todos lo referente a eventos (Iniciar, Agendar, Atender...) ahora cuentan con su verbo escrito en inifitivo.
  - Ahora todas las referencias que tengan que ver con el paciente son **OBLIGATORIAS**, por lo que sus cardinalidades son 1..1 en todos los recursos que se encuentre una de estas
  - Cada uno de los títulos dentro de la sección de “Especificación de Negocio” pasa a ser parte de un menú desplegable, además, en los eventos que corresponda se menciona (con el link) a la Norma Técnica N° 118 y se corrigen algunas secciones del texto.

  - **Para la sección "Especificaciones Técnicas":**

    - La pestaña de “Eventos” ahora cuenta con las mismas descripciones que la sección “Eventos Interoperabilidad CNE de APS a Secundario” de la sección de Negocio. Además, se corrigen algunas secciones del texto.
    - La pestaña de “Transacciones” tiene un leve arreglo a unos links que no redireccionaban correctamente.
    - La pestaña de “Mensajería” tiene un cambio mayor, y es que se borraron los antiguos diagramas para colocar descripciones sobre los mensajes de envío, respuesta y los response code.

  - **Recursos nuevos/actualizados:**
    - El recurso PractitionerLE ahora se dividió en dos: PractitionerProfesionalLE y PractitionerAdministrativoLE
    - El recurso PacienteMPI ahora se llama PatientLE.
    - Se agrega un recurso nuevo: ObservationInicioDiscapacidadLE.
    - El título del recurso Patología GES (número) ahora es Condition GES LE.

- **Cambios en los recursos:**

  - **Para el BundleIniciarLE:**

    - La cadinalidad ahora pasa de 8..17 a 9..17, ya que ahora existe un recurso extra que representa la discapacidad (ObservationDiscapacidadLE).
    - Referencia al recurso paciente pasa de PacienteMinsalMPI a PatientLE.
    - Referencia al recurso practitioner pasa de PractitionerLE a PractitionerProfesionalLE.

  - **Para el recurso MessageHeaderLE:**

    - La cardinalidad de "focus" cambia a 1..2 y en este mismo atributo se crean slices para restringir el uso de los recursos de referencia.

  - **Para el recurso ServiceRequestLE:**

    - El elemento "EstadoInterconsultaCódigo" cambia su cardinalidad a 1..1
    - Slice en supportingInfo cambia cardinalidad a 1..N, dónde al menos se debe agregar el recurso ObservationInicioDiscapacidadLE.
    - La extensión "DestinoAtencionCodigo" ahora se llama "ConsecuenciaAtencionCodigo"
    - Ahora el identifier.type.coding cuenta con un binding que redirecciona correctamente.

  - **Para el recurso EncounterIniciarLE:**

    - Se cambia realidad de "diagnosis" de 0..N a 1..1.

  - **Para el recurso PatientLE:**

    - Cambia su nombre de PacienteMPI a PatientLE
    - Cambia cardinalidad de las extensiones de 5..N a 4..N
    - La extensión "SexoBiologico" se elimina

  - **Para el recurso ObservationIniciarCuidadorLE:**

    - Se elimina la extensión PresentaDiscapacidad.

  - **Para el recurso OrganizationLE:**

    - Se corrigen las descripciones del identifier.system
    - Se agrega un binding de ejemplo para el identifier.system

  - **Para el recurso PractitionerRoleLE:**

    - La cardinalidad de organization cambia de 0..1 a 1..1

  - **Para el BundleReferenciarLE:**

    - La referencia al recurso Practitioner cambia de PractitionerLE a PractitionerProfesionalLE

  - **Para el BundleRevisarLE:**

    - Ahora el número de entry's pasa de 5..6 a 7..8
    - La cardinalidad del elemento practitionerRole pasa de 1..1 a 2..2
    - La cardinalidad del elemento organization pasa de 1..1 a 2..2

  - **Para el BundlePriorizarLE:**

    - Ahora el número de entry's pasa de 6..6 a 5..5, ya que se eliminó la referencia al paciente.

  - **Para el BundleAgendarLE:**

    - Para el entry:practitioner de cardinalidad 2..2 se transforma en 2 entry’s de cardinalidad 1..1, de nombres entry:practitionerAdministrativo y entry:practitionerProfesional.

  - **Para el BundleAtenderLE:**

    - Cambia cardinalidad de entry’s de 11..N a 8..N.

  - **Para el Recurso EncounterAtenderLE:**

    - Se agregan las extensiones PertinenciaAtencionBox y MotivoNoPertinencia

  - **Para el recurso CarePlanAtenderLE:**
    - Los Elementos "status" e "intent" ahora son requeridos con valores fijos.

- **Cambios en CodeSystem/ValueSets y extensiones:**

  - El CS de Pertinencia Interconsulta, se pasa de 2 valores (Pertinente Incompleta\|No Pertinente) a 3 valores (Pertinente\|Pertinente Incompleta\|No Pertinente).
  - El CS de Pueblo Originarios ahora cuenta con los valores numerados según la norma 231 y se le arreglan valores con faltas ortográficas.
  - El VS de Servicio Requerido ahora cuenta solo con un valor, que hace referencia a la derivación del paciente (http://snomed.info/sct#103696004 "derivación del paciente a un especialista (procedimiento)").
  - El CS/VS "Rol de médicos" ahora se llama "Rol de profesionales".
  - Se presentan cambios en las descripciones de CSPractitionerTipoRolLE, VSServicioRequerido y el nombre de CS/VSDestinoAtencionCodigo pasa a CS/VSConsecuenciaAtencionCodigo
  - Sobre las extensiones, se agrega una llamada “Mencion” que hace referencia a la mención profesional, ésta se agregó junto al nuevo Prestador Profesional y Administrativo, provenientes del HPD.
  - El CS Establecimiento Destino Atencion ahora cuenta con los displays correctos (establecimientos al principio).
  - Se crea un CS/VS de ejemplo llamado TipoIdentificadorSR, esto con el fin de hacer posible la redirección de un binding en el recurso ServiceRequest (identifier.type.coding)
