
### Cambios de versión 0.1.5 a versión 0.1.6

- **Cambios generales:** 
   - Todos los Bundles ahora cuentan con secciones de consideraciones generales y específicas, además de su conjunto mínimo de datos. 
   - Los atributos de todos los recursos cuentan con descripciones en español, esto solo para los que aparezcan en las "Diferential Tables" 
   - Todos lo referente a eventos (Iniciar, Agendar, Atender...) ahora cuentan con su verbo escrito en inifitivo. 
   - Ahora todas las referencias que tengan que ver con el paciente son **OBLIGATORIAS**, por lo que sus cardinalidades son 1..1 en todos los recursos que se encuentre una de estas 
   - Cada uno de los títulos dentro de la sección de “Especificación de Negocio” pasa a ser parte de un menú desplegable, además, en los eventos que corresponda se menciona (con el link) a la Norma Técnica N° 118 y se corrigen algunas secciones del texto.

- Para la sección "Especificaciones Técnicas": 
   - La pestaña de “Eventos” ahora cuenta con las mismas descripciones que la sección “Eventos Interoperabilidad CNE de APS a Secundario” de la sección de Negocio. Además, se corrigen algunas secciones del texto.
   - La pestaña de “Transacciones” tiene un leve arreglo a unos links que no redireccionaban correctamente. 
   - La pestaña de “Mensajería” tiene un cambio mayor, y es que se borraron los antiguos diagramas para colocar descripciones sobre los mensajes de envío, respuesta y los response code. 

- Recursos nuevos/actualizados:  
   - El recurso PractitionerLE ahora se dividió en dos: PrestadorProfesionalLE y PrestadorAdministrativoLE
   - El recurso PacienteMPI ahora se llama PatientLE. 
   - Se agrega un recurso nuevo: ObservationInicioDiscapacidadLE. 
   - El título del recurso Patología GES (número) ahora es Condition GES LE. 

- **Cambios en los recursos:**

   - Para el BundleIniciarLE:   
      - La cadinalidad ahora pasa de 8..17 a 9..17, ya que ahora existe un recurso extra que representa la discapacidad (ObservationIniciarDiscapacidadLE).  
      - Referencia al recurso paciente pasa de PacienteMinsalMPI a PatientLE.  
      - Referencia al recurso practitioner pasa de PractitionerLE a PrestadorProfesionalLE.  

   - Para el recurso MessageHeaderLE:  
      - La cardinalidad de "focus" cambia a 1..2 y en este mismo atributo se crean slices para restringir el uso de los recursos de referencia.   

   - Para el recurso ServiceRequestLE:  
      - El elemento "EstadoInterconsultaCódigo" cambia su cardinalidad a 1..1  
      - Slice en supportingInfo cambia cardinalidad a 1..N, dónde al menos se debe agregar el recurso ObservationInicioDiscapacidadLE.  
      - La extensión "DestinoAtencionCodigo" ahora se llama "ConsecuenciaAtencionCodigo"  

   - Para el recurso EncounterIniciarLE:  
      - Se cambia realidad de "diagnosis" de 0..N a 1..1.  

   - Para el recurso PatientLE: 
      - Cambia su nombre de PacienteMPI a PatientLE 
      - Cambia cardinalidad de las extensiones de 5..N a 4..N 
      - La extensión "SexoBiologico" se elimina 


   - Para el recurso ObservationIniciarCuidadorLE:  
      - Se elimina la extensión PresentaDiscapacidad. 


   - Para el recurso OrganizationLE: 
      - Se corrigen las descripciones del identifier.system 


   - Para el recurso PractitionerRoleLE:  
      - La cardinalidad de organization cambia de 0..1 a 1..1 

   - Para el BundleReferenciarLE: 
      - La referencia al recurso Practitioner cambia de PractitionerLE a PrestadorProfesionalLE 

   - Para el BundleRevisarLE:  
      - Ahora el número de entry's pasa de 5..6 a 7..8 
      - La cardinalidad del elemento practitionerRole pasa de 1..1 a 2..2 
      - La cardinalidad del elemento organization pasa de 1..1 a 2..2 

   - Para el BundlePriorizarLE:  
      - Ahora el número de entry's pasa de 6..6 a 5..5, ya que se eliminó la referencia al paciente. 

- Para el BundleAgendarLE:  
   - Para el entry:practitioner de cardinalidad 2..2 se transforma en 2 entry’s de cardinalidad 1..1, de nombres entry:practitionerAdministrativo y entry:practitionerProfesional.  

- Para el BundleAtenderLE:  
   - Cambia cardinalidad de entry’s de 11..N a 8..N. 

- Para el Recurso EncounterAtenderLE:  
   - Se agregan las extensiones PertinenciaAtencionBox y MotivoNoPertinencia 

- Para el recurso CarePlanAtenderLE:  
   - Los Elementos "status" e "intent" ahora son requeridos con valores fijos. 
   
- **Cambios en CodeSystem/ValueSets y extensiones:**
   - El CS de Pertinencia Interconsulta, se pasa de 2 valores (Pertinente Incompleta\|No Pertinente) a 3 valores (Pertinente\|Pertinente Incompleta\|No Pertinente). 
   - El CS de Pueblo Originarios ahora cuenta con los valores numerados según la norma 231 y se le arreglan valores con faltas ortográficas.   
   - El VS de Servicio Requerido ahora cuenta solo con un valor, que hace referencia a la derivación del paciente (http://snomed.info/sct#103696004 "derivación del paciente a un especialista (procedimiento)").  
   - El CS/VS "Rol de médicos" ahora se llama "Rol de profesionales".   
   - Se presentan cambios en las descripciones de CSPractitionerTipoRolLE, VSServicioRequerido y el nombre de CS/VSDestinoAtencionCodigo pasa a CS/VSConsecuenciaAtencionCodigo  
   - Sobre las extensiones, se agrega una llamada “Mencion” que hace referencia a la mención profesional, ésta se agregó junto al nuevo Prestador Profesional y Administrativo, provenientes del HPD.  


