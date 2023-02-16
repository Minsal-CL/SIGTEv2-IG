# Evento: Atender

El evento ATENDER tiene asociado los siguientes códigos de evento: 


| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| atender | Atender | Este evento permite registrar información asociada a la atención de consulta de especialidad. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido agendada con el paciente |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**



## Bundle de Envío
<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="atender-evento.png"> 
  <p></p>
</div>
<br>


Los recursos usados en este evento son los siguientes:

* [Encounter](link): Recurso principal para reflejar los datos de una atención de interconsulta
* [Appointment](link): Recurso principal para reflejar los datos de la cita de la interconsulta
* [MessageHeader](link): lorem
* [ServiceRequest](link): lorem
* [PractitionerRole](link): lorem
* [Practitioner](link): lorem
* [Location](link): lorem
* [DocumentReference](link): lorem
* [QuestionaireResponse](link): lorem
* [Observation](link): lorem
* [CarePlan](link): lorem
* [Observation](link): lorem
* [Condition](link): lorem

## Relaciones de Recursos
<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="atender-recursos.png"> 
  <p></p>
</div>
<br>


## Secuencia del Evento

El evento **atender** debe soportar a siguiente secuencia:

Diagrama de Secuencia por definir

## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](http://link)

## Notas

* Notas Adicionales
