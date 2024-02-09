### Tabla de Datos 

|           **Variable**           | **Cardinalidad** |                        **Descripción**                       |                           **Recurso.elemento**                           |
|----------------------------------|------------------|--------------------------------------------------------------|--------------------------------------------------------------------------|
|          IdInterconsulta         |       1..1       |               Identificador de la Interconsulta              |                        ServiceRequestLE.identifier                       |
|       FechaEventoPriorizar       |       1..1       |                       Fecha del Evento                       |                        MessageHeaderLE.lastUpdated                       |
| EstablecimientoCodigoPriorizador |       1..1       |                   Código de Establecimiento                  |                         OrganizationLE.identifier                        |
|  SolucionInformaticaPriorizador  |       1..1       |                     Solución Informática                     |                      MessageHeaderLE.source.software                     |
|    TipoIdentificadorCodigoProf   |       1..1       |          Identificador de identidad del Profesional          |            Practitioner.identifier[RUN/RNPI].type                        |
|       DigitoVerificadorProf      |       1..1       |      Digito verificador asociado al RUN del Profesional      |            Practitioner.identifier[RUN].extension.valueString            |
|      OtraIdentificacionProf      |       1..1       |                      Otra Identificación                     |              Practitioner.identifier[RNPI].value                         |
|              RunProf             |       1..1       |          El Rol Único Nacional (RUN) del Profesional         |                    Practitioner.identifier[RUN].value                    |
|           NombreOficial          |       1..1       |                      Nombre profesional                      | Practitioner.name.use=officialPractitioner.name.given=[nombre1, nombre2] |
|      PrimerApellidoProfesional   |       1..1       |                                                              |                         Practitioner.name._family                        |
|      SegundoApellidoProfesional  |       0..1       |                                                              |            Practitioner.name.family.extension.SegundoApellido=           |
|      TituloProfesionalCodigo     |       1..1       |                    Titulo del profesional                    |                      Practitioner.qualification[TIT]                     |
|     EspecialidadMedicaCodigo     |       0..*       |              Especialidad Médica del profesional             |                      Practitioner.qualification[ESP]                     |
|          Subespecialidad         |       0..*       |                Subespecialidad del profesional               |                    Practitioner.qualification[SUBESP]                    |
|        PriorizacionCodigo        |       1..1       |                                                              |                         ServiceRequestLE.priority                        |
|        AtencionPreferente        |       1..1       |               ¿Hace uso de atención preferente?              |                  ServiceRequestLE.extension.valueBoolean                 |
|     EstadoInterconsultaCodigo    |       1..1       | Estado de la Interconsulta en relación al proceso de negocio |              ServiceRequestLE.extension.valueCodeableConcept             |
{:.grid}