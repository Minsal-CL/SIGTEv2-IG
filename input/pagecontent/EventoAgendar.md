# Evento: Agendar

El evento AGENDAR tiene asociado los siguientes códigos de evento: 


| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| agendar | Agendar | Este evento permite registrar información asociada a la programación de la cita con el especialista.| La respuesta debe indicar si errores o indicar que la interconsulta ha sido agendada con el paciente |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**



## Bundle de Envío
<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="agendar-evento.png"> 
  <p></p>
</div>
<br>


Los recursos usados en este evento son los siguientes:

* [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html): Recurso que contiene datos relacionados al mensaje, como el autor, tipo de evento y foco del mensaje.
* [MessageHeaderLE](StructureDefinition-Appointment.html): Recurso que contiene datos relacionados a la agenda
* [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html): Recurso que permite reflejar la información relacionada al invididuo autor del proceso
* [PractitionerLE](StructureDefinition-PractitionerRoleLE.html): Recurso que permite reflejar la información relacionada al profesional de la salud que realiza la atencion
* [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html): Recurso principal para reflejar los datos de la interconsulta (MessageHeader.focus)
* [OrganizationLE](StructureDefinition-OrganizationLE.html): Recurso que permite relacionar la interconsulta con el establecimiento de destino
* [BundleAgendarLE](StructureDefinition-BundleAgendarLE.html): Recurso que permite agrupar los datos del mensaje.


## Relaciones de Recursos

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="agendar-recursos.png"> 
  <p></p>
</div>
<br>

## Secuencia del Evento

El evento **agendar** debe soportar a siguiente secuencia:

Diagrama de Secuencia por definir

## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](http://link)

## Mensaje Bundle de Ejemplo

* [BundleAgendarLE](Bundle-EjemploBundleAgendar.html)
## Notas

* Notas Adicionales


