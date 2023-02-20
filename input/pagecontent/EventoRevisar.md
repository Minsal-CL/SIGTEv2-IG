# Evento: Revisar

El evento REVISAR tiene asociado los siguientes códigos de evento: 


| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| revisar | Revisar | Este evento registra la información asociada a la revisión de pertinencia del Gestor de casos del nivel secundario. | La respuesta debe indicar si hay errores o indicar que la interconsulta ha sido revisada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**



## Bundle de Envío

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="revisar-recursos.png"> 
  <p></p>
</div>
<br>

Los recursos usados en este evento son los siguientes:

* [ServiceRequest](link): Recurso principal para reflejar los datos de la interconsulta
* [MessageHeader](link): lorem
* [PractitionerRole](link): lorem
* [Practitioner](link): lorem
* [Location](link): lorem

## Relaciones de Recursos

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="revisar-evento.png"> 
  <p></p>
</div>
<br>

## Secuencia del Evento

El evento **revisar** debe soportar a siguiente secuencia:

Diagrama de Secuencia por definir

## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](http://link)

## Notas

* Notas Adicionales


