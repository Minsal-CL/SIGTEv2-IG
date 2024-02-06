### Transacción Evento Iniciar

#### Descripción

| Código | Evento| Descripción | Respuesta |
|--------|----|-----|---|
| iniciar | Iniciar | Este evento es el inicial, permite registrar información asociada a la interconsulta. Puede ser iniciado por un médico de APS, Servicio de Urgencia de nivel secundario, médico nivel secundario. Cada Interconsulta posee un número único nacional, entregado desde nivel central. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido creada |
{:.grid}

Los códigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**

#### Diagrama de Secuencia

El evento **iniciar** debe soportar a siguiente secuencia:

<div align="center" >
{% include evento-inicio.svg %}
</div>

#### Semántica del Mensaje

##### Request

La semántica del mensaje para la transacción del Evento Iniciar usa el [Bundle Inicio LE](StructureDefinition-BundleInicioLE.html) que es un Bundle del tipo **message** que incluye toda la información asociada al Evento Iniciar, esta información va representada de manera general en el recurso [ServiceRequest LE](StructureDefinition-ServiceRequestLE.html) y debe incluir un recurso cabecera llamado [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) para representar el evento de acuerdo al [Mecanismo de Intercambio de Mensajería](Mensajeria.html)

* [Ejemplo Bundle Evento Iniciar](Bundle-EjemploBundleInicio.html)

##### Response

La respuesta al mensaje enviado debe ser un Bundle del tipo **message** con un recurso cabecera [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) que contiene como foco un recurso llamado [OperationOutcome](https://hl7.org/fhir/R4/operationoutcome.html) con los detalles del resultado de la transacción.

#### Precondiciones

No existe precondición para este evento.

#### Acciones Esperadas

* Creación de un evento de interconsulta
* Notificar a encargados de Lista de espera.


### Transacción Evento Referenciar

#### Descripción

| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| referenciar | Referenciar | Este evento permite registrar información asociada a una derivación, la cual puede ser: APS a Nivel Secundario, Nivel Secundario a APS, Nivel Secundario a Hospital Digital, etc. El detalle de la derivación es registrado en el campo MotivoDerivación. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido referenciada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**

#### Diagrama de Secuencia

El evento **referenciar** debe soportar las siguientes secuencias:

<div align="center" >
{% include evento-referenciada.svg %}
</div>

#### Semántica del Mensaje

##### Request

La semántica del mensaje para la transacción del Evento Referenciar usa el [Bundle Referenciar LE](StructureDefinition-BundleReferenciaLE.html) que es un Bundle del tipo **message** que incluye toda la información asociada al Evento Referenciar, esta información va representada de manera general en el recurso [ServiceRequest LE](StructureDefinition-ServiceRequestLE.html) y debe incluir un recurso cabecera llamado [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) para representar el evento de acuerdo al [Mecanismo de Intercambio de Mensajería](Mensajeria.html)

* [Ejemplo Bundle Referenciar](Bundle-EjemploBundleReferencia.html)

##### Response

La respuesta al mensaje enviado debe ser un Bundle del tipo **message** con un recurso cabecera [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) que contiene como foco un recurso llamado [OperationOutcome](https://hl7.org/fhir/R4/operationoutcome.html) con los detalles del resultado de la transacción.

#### Precondiciones

* Requiere el evento iniciar.

#### Acciones Esperadas

* Actualización de un evento de interconsulta
* Notificar a encargados de Lista de espera.

### Transacción Evento Revisar

#### Descripción

| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| revisar | Revisar | Este evento registra la información asociada a la revisión de pertinencia del Gestor de casos del nivel secundario. | La respuesta debe indicar si hay errores o indicar que la interconsulta ha sido revisada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**

#### Diagrama de Secuencia

El evento **revisar** debe soportar a siguiente secuencia:

<div align="center" >
{% include evento-revisar.svg %}
</div>

#### Semántica del Mensaje

##### Request

La semántica del mensaje para la transacción del evento de revisar usa el [Bundle Revisar LE](StructureDefinition-BundleRevisarLE.html) que es un Bundle del tipo **message** que incluye toda la información asociada al evento de revisar, esta información va representada de manera general en el recurso [ServiceRequest LE](StructureDefinition-ServiceRequestLE.html) y debe incluir un recurso cabecera llamado [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) para representar el evento de acuerdo al [Mecanismo de Intercambio de Mensajería](Mensajeria.html)

* [Ejemplo Bundle Revisar](Bundle-EjemploBundleRevisar.html)

##### Response

La respuesta al mensaje enviado debe ser un Bundle del tipo **message** con un recurso cabecera [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) que contiene como foco un recurso llamado [OperationOutcome](https://hl7.org/fhir/R4/operationoutcome.html) con los detalles del resultado de la transacción.

#### Precondiciones

* Requiere el evento iniciar.

#### Acciones Esperadas

* Actualización de un evento de interconsulta
* Notificar a encargados de Lista de espera.

### Transacción Evento Priorizar

#### Descripción

| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| priorizar | Priorizar | Este evento registra la información asociada a la asignación de priorización del Gestor de casos. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido priorizada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**

#### Diagrama de Secuencia

El evento **priorizar** debe soportar a siguiente secuencia:

<div align="center" >
{% include evento-priorizar.svg %}
</div>


#### Semántica del Mensaje

##### Request

La semántica del mensaje para la transacción del evento priorizar usa el [Bundle Priorizar LE](StructureDefinition-BundlePriorizarLE.html) que es un Bundle del tipo **message** que incluye toda la información asociada al evento priorizar, esta información va representada de manera general en el recurso [ServiceRequest LE](StructureDefinition-ServiceRequestLE.html) y debe incluir un recurso cabecera llamado [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) para representar el evento de acuerdo al [Mecanismo de Intercambio de Mensajería](Mensajeria.html)

* [Ejemplo Bundle Priorizar](Bundle-EjemploBundlePriorizar.html)

##### Response

La respuesta al mensaje enviado debe ser un Bundle del tipo **message** con un recurso cabecera [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) que contiene como foco un recurso llamado [OperationOutcome](https://hl7.org/fhir/R4/operationoutcome.html) con los detalles del resultado de la transacción.

#### Precondiciones

* Requiere el evento iniciar.

#### Acciones Esperadas

* Actualización de un evento de interconsulta con datos de Priorización
* Notificar a encargados de Lista de espera.

### Transacción Evento Agendar

#### Descripción

| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| agendar | Agendar | Este evento permite registrar información asociada a la programación de la cita con el especialista.| La respuesta debe indicar si errores o indicar que la interconsulta ha sido agendada con el paciente |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**

#### Diagrama de Secuencia

El evento **agendar** debe soportar a siguiente secuencia:

<div align="center" >
{% include evento-agendar.svg %}
</div>

#### Semántica del Mensaje

##### Request

La semántica del mensaje para la transacción del evento agendar usa el [Bundle Agendar LE](StructureDefinition-BundleAgendarLE.html) que es un Bundle del tipo **message** que incluye toda la información asociada al evento agendar, esta información va representada de manera general en el recurso [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.html) y debe incluir un recurso cabecera llamado [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) para representar el evento de acuerdo al [Mecanismo de Intercambio de Mensajería](Mensajeria.html)

* [Ejemplo Bundle Agendar](Bundle-EjemploBundleAgendar.html)
  * Appointment usado para agendar cita([Appointment Agendar](Appointment-EjemploAppointmentAgendar.html))
  * Appointment usado para cancelar cita([Appointment Cancelar](Appointment-EjemploAppointmentAgendarCancelar.html))
  * Appointment usado para marcar una cita sin presentación([Appointment Sin Presentación](Appointment-EjemploAppointmentAgendarSinPresentacion.html))

##### Response

La respuesta al mensaje enviado debe ser un Bundle del tipo **message** con un recurso cabecera [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) que contiene como foco un recurso llamado [OperationOutcome](https://hl7.org/fhir/R4/operationoutcome.html) con los detalles del resultado de la transacción.

#### Precondiciones

* Requiere el evento iniciar.

#### Acciones Esperadas

* Actualización de un evento de interconsulta con datos de agendamiento de atención
* Notificar a encargados de Lista de espera.

### Transacción Evento Atender

#### Descripción

| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| atender | Atender | Este evento permite registrar información asociada a la atención de consulta de especialidad. | La respuesta debe indicar si hay errores o indicar que la interconsulta se ha llevado a cabo con el paciente |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**

#### Diagrama de Secuencia

El evento **atender** debe soportar a siguiente secuencia:

<div align="center" >
{% include evento-atender.svg %}
</div>

#### Semántica del Mensaje

##### Request

La semántica del mensaje para la transacción del evento Atender usa el [Bundle Atender LE](StructureDefinition-BundleAtenderLE.html) que es un Bundle del tipo **message** que incluye toda la información asociada al evento Atender, esta información va representada de manera general en el recurso [Encounter Atender LE](StructureDefinition-EncounterAtenderLE.html) y debe incluir un recurso cabecera llamado [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) para representar el evento de acuerdo al [Mecanismo de Intercambio de Mensajería](Mensajeria.html)

* [Ejemplo Bundle Atender](Bundle-EjemploBundleAtender.html)

##### Response

La respuesta al mensaje enviado debe ser un Bundle del tipo **message** con un recurso cabecera [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) que contiene como foco un recurso llamado [OperationOutcome](https://hl7.org/fhir/R4/operationoutcome.html) con los detalles del resultado de la transacción.

#### Precondiciones

* Requiere el evento iniciar.

#### Acciones Esperadas

* Actualización de un evento de interconsulta con datos de atención de interconsulta
* Notificar a encargados de Lista de espera.

### Transacción Evento Terminar

#### Descripción

| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| terminar | Terminar | Este evento permite registrar información asociada a los motivos de cierre o término de la interconsulta. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido terminada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**

#### Diagrama de Secuencia

El evento **terminar** debe soportar a siguiente secuencia:

<div align="center" >
{% include evento-terminar.svg %}
</div>

#### Semántica del Mensaje

##### Request

La semántica del mensaje para la transacción del Evento Terminar usa el [Bundle Terminar LE](StructureDefinition-BundleTerminarLE.html) que es un Bundle del tipo **message** que incluye toda la información asociada al Evento Terminar, esta información va representada de manera general en el recurso [ServiceRequest LE](StructureDefinition-ServiceRequestLE.html) y debe incluir un recurso cabecera llamado [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) para representar el evento de acuerdo al [Mecanismo de Intercambio de Mensajería](Mensajeria.html)

* [Ejemplo Bundle Terminar](Bundle-EjemploBundleTerminar.html)

##### Response

La respuesta al mensaje enviado debe ser un Bundle del tipo **message** con un recurso cabecera [MessageHeader LE](StructureDefinition-MessageHeaderLE.html) que contiene como foco un recurso llamado [OperationOutcome](https://hl7.org/fhir/R4/operationoutcome.html) con los detalles del resultado de la transacción.

#### Precondiciones

* Requiere el evento iniciar.

#### Acciones Esperadas

* Actualización de un evento de interconsulta con datos de cierre de interconsulta
* Notificar a encargados de Lista de espera.