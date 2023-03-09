# Evento: Referenciada

El evento REFERENCIADA tiene asociado los siguientes códigos de evento: 


| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| referenciada | Referenciada | Este evento permite registrar información asociada a una derivación, la cual puede ser: APS a Nivel Secundario, Nivel Secundario a APS, Nivel Secundario a Hospital Digital, etc. El detalle de la derivación es registrado en el campo MotivoDerivación. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido referenciada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**



## Bundle de Envío

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="referenciada-evento.png"> 
  <p></p>
</div>
<br>

Los recursos usados en este evento son los siguientes:

* [BundleReferenciaLE](StructureDefinition-BundleReferenciaLE.html): Recurso que permite agrupar los datos del mensaje.
* [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html): Recurso principal para reflejar los datos de la interconsulta (MessageHeader.focus)
* [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html): Recurso que contiene datos relacionados al mensaje, como el autor, tipo de evento y foco del mensaje.
* [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html): Recurso que permite reflejar la información relacionada al invididuo autor del proceso (MessageHeader.author)
* [OrganizationLE](StructureDefinition-OrganizationLE.html): Recurso que permite relacionar la interconsulta con el establecimiento de destino
* [PatientLE](StructureDefinition-PatientLE.html): Recurso utilizado para registrar información relacionada al paciente (ServiceRequest.subject)
## Relaciones de Recursos

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="referenciada-recursos.png"> 
  <p></p>
</div>
<br>


## Secuencia del Evento

El evento inicio debe soportar las siguientes secuencias:
<div align="center" >
{% include evento-referenciada.svg %}
</div>

## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](https://docs.google.com/spreadsheets/d/1FfW2gQvTMJbNpr2mH2DFpsftkMEPr5CW2ed9MkryuH4/edit#gid=1586023761&range=A3)

* Debe incluir el recurso [BundleReferenciaLE](StructureDefinition-BundleReferenciaLE.html)
* Debe incluir el recurso [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html) con los valores de **ServiceRequest.status=draft** **ServiceRequest.intent=proposal** 
* Debe incluir el recurso [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html) con el valor **MessageHeader.evenCoding.code=referenciada** 
* Debe incluir el recurso [OrganizationLE](StructureDefinition-OrganizationLE.html)
* Debe incluir el recurso [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html)

## Mensaje Bundle de Ejemplo

* [BundleReferenciadaLE](Bundle-EjemploBundleReferencia.html)

## Notas

* Notas Adicionales






