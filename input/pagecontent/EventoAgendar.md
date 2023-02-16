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

* [Appointment](link): Recurso principal para reflejar los datos de la interconsulta
* [MessageHeader](link): lorem
* [ServiceRequest](link): lorem
* [PractitionerRole](link): asociado al agendador
* [Practitioner](link): asociado al agendador
* [Location](link): asociado al agendador
* [PractitionerRole](link): asociado al médico asignado
* [Practitioner](link): asociado al médico asignado
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

## Notas

* Notas Adicionales


