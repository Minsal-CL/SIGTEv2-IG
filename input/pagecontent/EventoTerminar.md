# Evento: Terminar

El evento TERMINAR tiene asociado los siguientes códigos de evento: 


| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| terminar | Terminar | Este evento permite registrar información asociada a los motivos de cierre o término de la interconsulta. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido terminada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**



## Bundle de Envío


<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="terminar-evento.png"> 
  <p></p>
</div>
<br>


Los recursos usados en este evento son los siguientes:

* [BundleTerminarLE](StructureDefinition-BundleTerminarLE.html): Recurso que permite agrupar los datos del mensaje.
* [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html): Recurso principal para reflejar los datos de la interconsulta (MessageHeader.focus)
* [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html): Recurso que contiene datos relacionados al mensaje, como el autor, tipo de evento y foco del mensaje.
* [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html): Recurso que permite reflejar la información relacionada al invididuo autor del proceso (MessageHeader.author)
* [PractitionerLE](StructureDefinition-PractitionerLE.html): Recurso que permite reflejar la informacion asociada a la identificación del profesional de la salud.
* [OrganizationLE](StructureDefinition-OrganizationLE.html): Recurso que permite relacionar la interconsulta con el establecimiento de destino
* [PatientLE](StructureDefinition-PatientLE.html): Recurso utilizado para registrar información relacionada al paciente (ServiceRequest.subject)
## Relaciones de Recursos

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="terminar-recursos.png"> 
  <p></p>
</div>
<br>

## Secuencia del Evento

El evento **terminar** debe soportar a siguiente secuencia:

<div align="center" >
{% include evento-terminar.svg %}
</div>

## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](https://docs.google.com/spreadsheets/d/1FfW2gQvTMJbNpr2mH2DFpsftkMEPr5CW2ed9MkryuH4/edit#gid=1274332333&range=A3)




* Debe incluir el recurso [BundleTerminarLE](StructureDefinition-BundleTerminarLE.html)
* Debe incluir el recurso [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html) con el valor **MessageHeader.evenCoding.code=terminar** 
* Debe incluir el recurso [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html) con los valores de **ServiceRequest.status=draft** **ServiceRequest.intent=proposal** 
* Debe incluir el recurso [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html)
* Debe incluir el recurso [OrganizationLE](StructureDefinition-OrganizationLE.html)
* Debe incluir el recurso [PractitionerLE](StructureDefinition-PractitionerLE.html)

## Mensaje Bundle de Ejemplo

* [BundleTerminarLE](Bundle-EjemploBundleTerminar.html)

## Notas

* Notas Adicionales


