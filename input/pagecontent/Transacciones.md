### Transacción Evento Iniciar

#### Descripción

| Código | Evento| Descripción | Respuesta |
|--------|----|-----|---|
| iniciar | Iniciar | Este evento es el inicial, permite registrar información asociada a la interconsulta. Puede ser iniciado por un médico de APS, Servicio de Urgencia de nivel secundario, médico nivel secundario. Cada Interconsulta posee un número único nacional, entregado desde nivel central. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido creada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**

#### Diagrama de Secuencia

El evento **inicio** debe soportar a siguiente secuencia:

<div align="center" >
{% include evento-inicio.svg %}
</div>

#### Semántica del Mensaje

##### Request

* [Ejemplo Bundle de Inicio](Bundle-EjemploBundleInicio.html)

##### Response

* [Ejemplo Bundle de Respuesta](Bundle-EjemploBundleInicio.html)

#### Precondiciones

Lorem ipsum dolor sit amet

* asd
* asd
  * asd
  * asd
  * asd
* asd 

#### Acciones Esperadas

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

### Transacción Evento Referenciar

#### Descripción

| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| referenciar | Referenciar | Este evento permite registrar información asociada a una derivación, la cual puede ser: APS a Nivel Secundario, Nivel Secundario a APS, Nivel Secundario a Hospital Digital, etc. El detalle de la derivación es registrado en el campo MotivoDerivación. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido referenciada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**

#### Diagrama de Secuencia

El evento iniciar debe soportar las siguientes secuencias:

<div align="center" >
{% include evento-referenciada.svg %}
</div>

#### Semántica del Mensaje

##### Request

* [Ejemplo Bundle Referenciada](Bundle-EjemploBundleReferencia.html)

##### Response

* [Ejemplo Bundle de Respuesta](Bundle-EjemploBundleInicio.html)

#### Precondiciones

Lorem ipsum dolor sit amet

* asd
* asd
  * asd
  * asd
  * asd
* asd 

#### Acciones Esperadas

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

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

* [Ejemplo Bundle Revisar](Bundle-EjemploBundleRevisar.html)

##### Response

* [Ejemplo Bundle de Respuesta](Bundle-EjemploBundleInicio.html)

#### Precondiciones

Lorem ipsum dolor sit amet

* asd
* asd
  * asd
  * asd
  * asd
* asd 

#### Acciones Esperadas

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

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

* [Ejemplo Bundle Priorizar](Bundle-EjemploBundlePriorizar.html)

##### Response

* [Ejemplo Bundle de Respuesta](Bundle-EjemploBundleInicio.html)

### Precondiciones

Lorem ipsum dolor sit amet

* asd
* asd
  * asd
  * asd
  * asd
* asd 

#### Acciones Esperadas

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

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

* [Ejemplo Bundle Agendar Agendar](Bundle-EjemploBundleAgendar.html)
  * Appointment usado para agendar cita([Appointment Agendar](Appointment-EjemploAppointmentAgendar.html))
  * Appointment usado para cancelar cita([Appointment Cancelar](Appointment-EjemploAppointmentAgendarCancelar.html))
  * Appointment usado para marcar una cita sin presentación([Appointment Sin Presentación](Appointment-EjemploAppointmentAgendarSinPresentacion.html))

##### Response

* [Ejemplo Bundle de Respuesta](Bundle-EjemploBundleInicio.html)

#### Precondiciones

Lorem ipsum dolor sit amet

* asd
* asd
  * asd
  * asd
  * asd
* asd 

#### Acciones Esperadas

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

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

* [Ejemplo Bundle Atender](Bundle-EjemploBundleAtender.html)

##### Response

* [Ejemplo Bundle de Respuesta](Bundle-EjemploBundleInicio.html)

#### Precondiciones

Lorem ipsum dolor sit amet

* asd
* asd
  * asd
  * asd
  * asd
* asd 

#### Acciones Esperadas

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

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

* [Ejemplo Bundle Terminar](Bundle-EjemploBundleTerminar.html)

##### Response

* [Ejemplo Bundle de Respuesta](Bundle-EjemploBundleInicio.html)

#### Precondiciones

Lorem ipsum dolor sit amet

* asd
* asd
  * asd
  * asd
  * asd
* asd 

#### Acciones Esperadas

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.