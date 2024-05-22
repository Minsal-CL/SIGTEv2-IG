### Cambios de versión 0.1.6 a versión 0.2

- Perfil [PatientLE](StructureDefinition-PatientLE.html)
  - Se elimina elemento "IdentidadDeGenero" repetido, dejando solo el que viene referenciado desde la [Guia CLCore](https://hl7chile.cl/fhir/ig/clcore/1.8.10/)
  - Extension "País de origen del paciente", el binding se modifica para dejarlo linkeado al elemento "valueCodeableConcept".
  - Extension "Religión", el binding se modifica para dejarlo linkeado al elemento "valueCodeableConcept".
  - Extension "Pueblos Originarios", el binding se modifica para dejarlo linkeado al elemento "valueCodeableConcept".
  - Se elimina la extension "LugarDeNacimiento"
	- El elemento "deceased[x]" se deja abierto para que se pueda registrar una fecha de fallecimiento o un booleano sobre si el paciente esta fallecido o no
	- El elemento identifier.type.extension[paisEmisionDocumento] se le cambia la cardinalidad de 0..1 -> 1..1 

- Perfil [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html)
  - Se elimina la extension "CorrespondeGES"
  - Se elimina la extension "RequiereExamen"
  - Requester se modifica cardinalidad 0..1 -> 1..1
  - Requester se agrega MustSupport
  - Requester debe referenciar solo a "PractitionerRoleLE"

  

- Modificaciones de la "CLcore"
  - Se cambió el nombre de la extension identifier.type.extension[paises] -> identifier.type.extension[paisEmisionDocumento]
  - Extension "Codigo de Identificación de países", el binding se modifica para dejarlo linkeado al elemento "valueCodeableConcept.





  Se incluyeron los ejemplos
  - Cambio cardinalidad **contact.name.given** 0..1 -> 0..*
- El elemento **addresss** debe cumplir con **ClAddress** para las direcciones de los perfiles [OrganiztionCL](StructureDefinition-CoreOrganizacionCl.html) y [LocalizacionCL](StructureDefinition-CoreLocalizacionCl.html)
- Cambio en el [Ejemplo Organización Prestadora de Salud](Organization-ORG1.html) para cumplir con el perfil [OrganiztionCL](StructureDefinition-CoreOrganizacionCl.html)
- Cambio en el [Ejemplo Localización Farmacia](Location-LocalizacionEjemploCL1.html) para cumplir con el perfil [LocalizacionCL](StructureDefinition-CoreLocalizacionCl.html)
- Se incluyo el context en las siguientes extensiones:
  - [Códigos para Comunas en Chile](StructureDefinition-ComunasCl.html)
  - [Códigos para Provincias en Chile](StructureDefinition-ProvinciasCl.html)
  - [Códigos para Regiones en Chile](StructureDefinition-RegionesCl.html)
  - [Identificación del Contacto de un Paciente](StructureDefinition-IdContacto.html)
  - [Especialidad del médico principal](StructureDefinition-VSEspecialidadesDeisCL.html)
  - [Contacto de los participantes secundarios del encuentro](StructureDefinition-ContactoParticipantes.html)


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
      - El recurso PractitionerLE ahora se dividió en dos: PrestadorProfesionalLE y PrestadorAdministrativoLE
      - El recurso PacienteMPI ahora se llama PatientLE. 
      - Se agrega un recurso nuevo: ObservationInicioDiscapacidadLE. 
      - El título del recurso Patología GES (número) ahora es Condition GES LE. 

- **Cambios en los recursos:**

   - **Para el BundleIniciarLE:**   
      - La cadinalidad ahora pasa de 8..17 a 9..17, ya que ahora existe un recurso extra que representa la discapacidad (ObservationIniciarDiscapacidadLE).  
      - Referencia al recurso paciente pasa de PacienteMinsalMPI a PatientLE.  
      - Referencia al recurso practitioner pasa de PractitionerLE a PrestadorProfesionalLE.  

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
      - La referencia al recurso Practitioner cambia de PractitionerLE a PrestadorProfesionalLE 

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
   - Se crea un CS/VS de ejemplo llamado IdInterconsulta, esto con el fin de hacer posible la redirección de un binding en el recurso ServiceRequest (identifier.type.coding)


-------------------------------------------------------------

### Version 0.2.0
- 

### Version 1.8.6
- Perfil [PacienteCL](StructureDefinition-CorePacienteCl.html)
  - Se incluyeron los ejemplos
  - Cambio cardinalidad **contact.name.given** 0..1 -> 0..*
- El elemento **addresss** debe cumplir con **ClAddress** para las direcciones de los perfiles [OrganiztionCL](StructureDefinition-CoreOrganizacionCl.html) y [LocalizacionCL](StructureDefinition-CoreLocalizacionCl.html)
- Cambio en el [Ejemplo Organización Prestadora de Salud](Organization-ORG1.html) para cumplir con el perfil [OrganiztionCL](StructureDefinition-CoreOrganizacionCl.html)
- Cambio en el [Ejemplo Localización Farmacia](Location-LocalizacionEjemploCL1.html) para cumplir con el perfil [LocalizacionCL](StructureDefinition-CoreLocalizacionCl.html)
- Se incluyo el context en las siguientes extensiones:
  - [Códigos para Comunas en Chile](StructureDefinition-ComunasCl.html)
  - [Códigos para Provincias en Chile](StructureDefinition-ProvinciasCl.html)
  - [Códigos para Regiones en Chile](StructureDefinition-RegionesCl.html)
  - [Identificación del Contacto de un Paciente](StructureDefinition-IdContacto.html)
  - [Especialidad del médico principal](StructureDefinition-VSEspecialidadesDeisCL.html)
  - [Contacto de los participantes secundarios del encuentro](StructureDefinition-ContactoParticipantes.html)
  - [Código de las razones por la cual no se pudo realizar la atención](StructureDefinition-RazonNOrealizarse.html)
  - [Notas realizadas en un encuentro por Comité](StructureDefinition-NotasEncuentro.html)
  - [Observaciones o comentarios simples respecto a un diagnóstico](StructureDefinition-ObservacionesDiagnostico.html)
  - [Código de tipos de Vacunas en Chile](StructureDefinition-TiposVacunaRNI.html)
  - [Nombre de la Campaña de vacunación establecida por el RNI (Registro Nacional de Inmunizaciones)](StructureDefinition-NombreCampana.html)
  - [Razones por las cuales no se pudo realizar la inmunización](StructureDefinition-RazonNOrealizarseInm.html)
  - [Segundo Apellido](StructureDefinition-SegundoApellido.html)
  - [Sexo Biológico](StructureDefinition-SexoBiologico.html)
- El elemento **gender** del perfil [PrestadorCL](StructureDefinition-CorePrestadorCl.html) y [PacienteCl](StructureDefinition-CorePacienteCl.html) es reincluido para el sexo Registral(Registro Civil). Deprecando la extensión **SexoRegistral**
- Se depreca el perfil **BundleCL**.
- CodeSystem "Tipo Identificador", se modifican los valores.
- Se agrega en la pagina inicial la lista de dependencias
- Se elimina la dependencia de la guia IPS v1.0.0

### Version 1.8.5
- Prefil [PrestadorCL](StructureDefinition-CorePrestadorCl.html)
  - Cambio cardinalidad **birthDate** 1..1 -> 0..1
  - Cambio cardinalidad **geder** 1..1 -> 0..1
  - Cambio cardinalidad **qualification:Cert.code.text**  1..1 -> 0..1
  - Cambio cardinalidad **qualification:Esp.code.text**  1..1 -> 0..1
  - Cambio cardinalidad **qualification:SubEsp.code.text**  1..1 -> 0..1
  
- El elemento **gender** del perfil [PrestadorCL](StructureDefinition-CorePrestadorCl.html) y [PacienteCl](StructureDefinition-CorePacienteCl.html) es deprecado y reemplazado por las extensiones:
  - [IdentidadDeGenero](StructureDefinition-IdentidadDeGenero.html)
  - [SexoBiologico](StructureDefinition-SexoBiologico.html)
  - **SexoRegistral**

- Prefil [CoreEspecialidadCl](StructureDefinition-CoreRolClinicoCl.html)

- Perfil [PacienteCl](StructureDefinition-CorePacienteCl.html)
  - Cambio cardinalidad **birthDate** 1..1 -> 0..1
  - Cambio cardinalidad **geder** 1..1 -> 0..1

### Version 1.8.2
- Se agrega CodeSystem y ValueSet *Tipo Identificador*, segun tabla maestra DEIS
- Se modifica la fuerza del ValueSet *Patient.indentifier.type* de *"Required"* -> *"Extensible"*

### Version 1.8.1
- Se agrega link para generar comentarios en un google form

### Versión 1.8.0

- Se realiza cambio del *Computable Name* a "clcore"
- Se realiza cambio del *id* a "hl7.fhir.cl.clcore"