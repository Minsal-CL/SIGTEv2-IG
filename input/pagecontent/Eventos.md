# Eventos

## Tabla de códigos de Eventos

| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| inicio | Inicio | Este evento es el inicial, permite registrar información asociada a la interconsulta. Puede ser iniciado por un médico de APS, Servicio de Urgencia de nivel secundario, médico nivel secundario. Cada Interconsulta posee un número único nacional, entregado desde nivel central. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido creada |
| referenciada | Referenciada | Este evento permite registrar información asociada a una derivación, la cual puede ser: APS a Nivel Secundario, Nivel Secundario a APS, Nivel Secundario a Hospital Digital, etc. El detalle de la derivación es registrado en el campo MotivoDerivación. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido derivada |
| revisar | Revisar | Este evento registra la información asociada a la revisión de pertinencia del Gestor de casos del nivel secundario. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido revisada |
| priorizar | Priorizar | Este evento registra la información asociada a la asignación de priorización del Gestor de casos. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido revisada |
| agendar | Agendar | Este evento permite registrar información asociada a la programación de la cita con el especialista.| La respuesta debe indicar si errores o indicar que la interconsulta ha sido agendada con el paciente |
| atender | Atender | Este evento permite registrar información asociada a la atención de consulta de especialidad. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido agendada con el paciente |
| terminar | Terminar | Este evento permite registrar información asociada a los motivos de cierre o término de la interconsulta. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido revisada |
{:.grid}

## Definicion de Eventos

* [Evento Inicio](EventoInicio.html)
* [Evento Referenciada](EventoReferenciada.html)
* [Evento Revisar](EventoRevisar.html)
* [Evento Priorizar](EventoPriorizar.html)
* [Evento Agendar](EventoAgendar.html)
* [Evento Atender](EventoAtender.html)
* [Evento Terminar](EventoTerminar.html)

