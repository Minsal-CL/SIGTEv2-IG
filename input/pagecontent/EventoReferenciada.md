# Evento: Referenciada

El evento REFERENCIADA tiene asociado los siguientes códigos de evento: 


| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| referenciada | Referenciada | Este evento permite registrar información asociada a una derivación, la cual puede ser: APS a Nivel Secundario, Nivel Secundario a APS, Nivel Secundario a Hospital Digital, etc. El detalle de la derivación es registrado en el campo MotivoDerivación. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido derivada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**



## Bundle de Envío

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="referenciada-recursos.png"> 
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
  <img  style="border: 1px solid; color: black;" src="referenciada-evento.png"> 
  <p></p>
</div>
<br>


## Secuencia del Evento

El evento referenciada debe soportar a siguiente secuencia:

Diagrama de Secuencia por definir

## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](http://link)

## Notas

* Notas Adicionales






