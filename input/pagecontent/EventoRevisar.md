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
  <img  style="border: 1px solid; color: black;" src="revisar-evento.png"> 
  <p></p>
</div>
<br>

Los recursos usados en este evento son los siguientes:

* [BundleRevisarLE](StructureDefinition-BundleRevisarLE.html): Recurso que permite agrupar los datos del mensaje.
* [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html): Recurso principal para reflejar los datos de la revision (MessageHeader.focus)
* [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html): Recurso que contiene datos relacionados al mensaje, como el autor, tipo de evento y foco del mensaje.
* [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html): Recurso que permite reflejar la información relacionada al invididuo autor del proceso (MessageHeader.author)
* [PractitionerLE](StructureDefinition-PractitionerLE.html): Recurso que permite reflejar la informacion asociada a la identificación del profesional de la salud.
* [OrganizationLE](StructureDefinition-OrganizationLE.html): Recurso que permite relacionar la interconsulta con el establecimiento de destino

## Relaciones de Recursos

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="revisar-recursos.png"> 
  <p></p>
</div>
<br>

## Secuencia del Evento

El evento **revisar** debe soportar a siguiente secuencia:

<div align="center" >
{% include evento-revisar.svg %}
</div>
## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](http://link)

## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](http://link)


* Debe incluir el recurso [BundleRevisarLE](StructureDefinition-BundleRevisarLE.html)
* Debe incluir el recurso [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html) con el valor **MessageHeader.evenCoding.code=revisar** 
* Debe incluir el recurso [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html) con los valores de **ServiceRequest.status=draft** **ServiceRequest.intent=proposal** 
* Debe incluir el recurso [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html)
* Debe incluir el recurso [OrganizationLE](StructureDefinition-OrganizationLE.html)
* Debe incluir el recurso [PractitionerLE](StructureDefinition-PractitionerLE.html)

## Mensaje Bundle de Ejemplo

* [BundleRevisarLE](Bundle-EjemploBundleRevisar.html)

## Notas

* Notas Adicionales


