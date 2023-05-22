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

* [BundleAgendarLE](StructureDefinition-BundleAgendarLE.html): Recurso que permite agrupar los datos del mensaje.
* [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html): Recurso que contiene datos relacionados al mensaje, como el autor, tipo de evento y foco del mensaje.
* [MessageAppointmentAgendarLE](StructureDefinition-AppointmentAgendarLE.html): Recurso que contiene datos relacionados a la agenda
* [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html): Recurso que permite reflejar la información relacionada al rol del individuo que atiende o agenda la cita
  * PractitionerRole1: Rol del individuo que atenderá al paciente
  * PractitionerRole2: Rol del individuo que agenda la cita
* [PractitionerLE](StructureDefinition-PractitionerLE.html): Recurso que permite reflejar la información relacionada al profesional de la salud que realiza la atencion
  * Practitioner1: Individuo que atenderá al paciente
  * Practitioner2: Individuo que agenda la cita
* [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html): Recurso principal para reflejar los datos de la interconsulta (MessageHeader.focus)
* [OrganizationLE](StructureDefinition-OrganizationLE.html): Recurso que permite relacionar la interconsulta con el establecimiento de destino
* [PatientLE](StructureDefinition-PatientLE.html): Recurso utilizado para registrar información relacionada al paciente (ServiceRequest.subject)

## Relaciones de Recursos

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="agendar-recursos.png"> 
  <p></p>
</div>
<br>

## Secuencia del Evento

El evento **agendar** debe soportar a siguiente secuencia:

<div align="center" >
{% include evento-agendar.svg %}
</div>

## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](https://docs.google.com/spreadsheets/d/1FfW2gQvTMJbNpr2mH2DFpsftkMEPr5CW2ed9MkryuH4/edit#gid=493163919&range=A4)

El Bundle de envío debe cumplir con las siguientes condiciones en este evento:

* Debe incluir el recurso [BundleAgendarLE](StructureDefinition-BundleAgendarLE.html)
* Debe incluir el recurso [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html) con los valores de **ServiceRequest.status=draft** **ServiceRequest.intent=proposal** 
* Debe incluir el recurso [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html) con el valor **MessageHeader.evenCoding.code=agendar** 
* Debe incluir el recurso [PatientLE](StructureDefinition-PatientLE.html)
* Debe incluir el recurso [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html) el cual debe tener dos instancias:
  1.  Un *PractitionerRole* desde el recurso *MessageHeader* que indica quien sera el profesional que atenderá al paciente
  2.  Un *PractitionerRole* desde el recurso *Appointment* que indica quien hace el agendamiento de la cita
* Debe incluir el recurso [PractitionerLE](StructureDefinition-PractitionerLE.html) el cual debe tener dos instancias:
  1. Un *PractitionerLE* desde el recurso *PractitionerRoleLE* que hace referencia a quien sera el profesional que atenderá al paciente
  2. Un *PractitionerLE* desde el recurso *PractitionerRoleLE* que hace referncia a quien hace el agendamiento de la cita

* Debe incluir el recurso [AppointmentAgendarLE](StructureDefinition-AppointmentAgendarLE.html) con el valor **Appointment.status=booked**
* Debe incluir el recurso [OrganizationLE](StructureDefinition-OrganizationLE.html)


## Mensajes de Ejemplo

* [BundleAgendarLE Agendar](Bundle-EjemploBundleAgendar.html)
  * Appointment usado para agendar cita([Appointment Agendar](Appointment-EjemploAppointmentAgendar.html))
  * Appointment usado para cancelar cita([Appointment Cancelar](Appointment-EjemploAppointmentAgendarCancelar.html))
  * Appointment usado para marcar una cita sin presentación([Appointment Sin Presentación](Appointment-EjemploAppointmentAgendarSinPresentacion.html))

## Notas

* Notas Adicionales


