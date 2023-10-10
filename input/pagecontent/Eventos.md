### Tabla de códigos de Eventos

| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| iniciar | Iniciar| Este evento es el inicial, permite registrar información asociada a la interconsulta. Puede ser iniciado por un médico de APS, Servicio de Urgencia de nivel secundario, médico nivel secundario. Cada Interconsulta posee un número único nacional, entregado desde nivel central. | La respuesta debe indicar si hay errores o indicar que la interconsulta ha sido creada |
| referenciar | Referenciar | Este evento permite registrar información asociada a una derivación, la cual puede ser: APS a Nivel Secundario, Nivel Secundario a APS, Nivel Secundario a Hospital Digital, etc. El detalle de la derivación es registrado en el campo MotivoDerivación. | La respuesta debe indicar si hay errores o indicar que la interconsulta ha sido referenciada |
| revisar | Revisar | Este evento registra la información asociada a la revisión de pertinencia del gestor de casos del nivel secundario. | La respuesta debe indicar si errores hay o indicar que la interconsulta ha sido revisada |
| priorizar | Priorizar | Este evento registra la información asociada a la asignación de priorización del gestor de casos. | La respuesta debe indicar si hay errores o indicar que la interconsulta ha sido priorizada |
| agendar | Agendar | Este evento permite registrar información asociada a la programación de la cita con el especialista.| La respuesta debe indicar si hay errores o indicar que la interconsulta ha sido agendada con el paciente |
| atender | Atender | Este evento permite registrar información asociada a la atención de consulta de especialidad. | La respuesta debe indicar si hay errores o indicar que la interconsulta se ha llevado a cabao con el paciente |
| terminar | Terminar | Este evento permite registrar información asociada a los motivos de cierre o término de la interconsulta. | La respuesta debe indicar si hay errores o indicar que la interconsulta ha sido terminada |
{:.grid}

### Definicion de Transacciones relacionados a eventos

* [Transacción Evento Iniciar](Transacciones.html#transacción-evento-iniciar)
* [Transacción Evento Referenciar](Transacciones.html#transacción-evento-referenciar)
* [Transacción Evento Revisar](Transacciones.html#transacción-evento-revisar)
* [Transacción Evento Priorizar](Transacciones.html#transacción-evento-priorizar)
* [Transacción Evento Agendar](Transacciones.html#transacción-evento-agendar)
* [Transacción Evento Atender](Transacciones.html#transacción-evento-atender)
* [Transacción Evento Terminar](Transacciones.html#transacción-evento-terminar)

