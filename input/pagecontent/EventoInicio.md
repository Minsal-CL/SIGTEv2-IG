# Evento: Inicio

El evento INICIO tiene asociado los siguientes códigos de evento: 


| Código | Evento| Descripción | Respuesta |
|--------|----|-----|---|
| inicio | Inicio | Este evento es el inicial, permite registrar información asociada a la interconsulta. Puede ser iniciado por un médico de APS, Servicio de Urgencia de nivel secundario, médico nivel secundario. Cada Interconsulta posee un número único nacional, entregado desde nivel central. | La respuesta debe indicar si errores o indicar que la interconsulta ha sido creada |
{:.grid}

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**



## Bundle de Envío

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="inicio-evento.png"> 
  <p></p>
</div>
<br>

Los recursos usados en este evento son los siguientes:

* [BundleInicioLE](StructureDefinition-BundleInicioLE.html): Recurso que permite agrupar los datos del mensaje.
* [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html): Recurso principal para reflejar los datos de la interconsulta (MessageHeader.focus)
* [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html): Recurso que contiene datos relacionados al mensaje, como el autor, tipo de evento y foco del mensaje.
* [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html): Recurso que permite reflejar la información relacionada al invididuo autor del proceso (MessageHeader.author)
* [Condition](https://www.hl7.org/FHIR/condition.html): Este recurso tiene 3 usos en el evento de Inicio representados por sus perfiles:
  * [ConditionInicioDiagnosticoSospechaLE](StructureDefinition-ConditionInicioDiagnosticoSospechaLE.html): Recurso utilizado para representar ciertos elementos del diagnóstico (ServiceRequest.supportingInfo)
  * [ConditionInicioIndiceComorbilidadLE](StructureDefinition-ConditionInicioIndiceComorbilidadLE.html): Recurso utilizado para representar el índice de comorbilidad (ServiceRequest.supportingInfo)
  * [ConditionInicioSospechaGesLE](StructureDefinition-ConditionInicioSospechaGesLE.html): Recurso utilizado para representar datos relacionados a la patología GES (ServiceRequest.supportingInfo)
* [ObservationInicioLE](StructureDefinition-ObservationInicioLE.html): Recurso utilizado para registrar datos relacionados a la realización de exámenes (ServiceRequest.reasonReference)
* [EncounterInicioLE](StructureDefinition-EncounterInicioLE.html): Recurso utilizado para registrar el identificador de la consulta en APS(ServiceRequest.encounter)
* [AllergyIntoleranceInicioLE](StructureDefinition-AllergyIntoleranceInicioLE.html): Recurso utilizado para registrar información relacionada al tipo de alergia en caso de tener (ServiceRequest.supportingInfo)
* [PatientLE](StructureDefinition-PatientLE.html): Recurso utilizado para registrar información relacionada al paciente (ServiceRequest.subject)
* [QuestionnaireResponseInicioLE](StructureDefinition-QuestionnaireResponseInicioLE.html): Recurso utilizado para registrar información relacionada a la anamnesis (ServiceRequest.supportingInfo)
* [AppointmentInicioLE](StructureDefinition-AppointmentInicioLE.html): Recurso utilizado para registrar información de la cita que da inicio a la solicitud de interconsulta (ServiceRequest.supportingInfo)

## Relaciones de Recursos

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="inicio-recursos.png"> 
  <p></p>
</div>
<br>

## Secuencia del Evento

El evento **inicio** debe soportar a siguiente secuencia:
<div align="center" >
{% include evento-inicio.svg %}
</div>


## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](https://docs.google.com/spreadsheets/d/1FfW2gQvTMJbNpr2mH2DFpsftkMEPr5CW2ed9MkryuH4/edit#gid=0&range=A2)

El Bundle de envío debe cumplir con las siguientes condiciones en este evento:

* Debe incluir el recurso [BundleInicioLE](StructureDefinition-BundleInicioLE.html)
* Debe incluir el recurso [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html) con los valores de **ServiceRequest.status=draft** **ServiceRequest.intent=proposal** 
* Debe incluir el recurso [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html) con el valor **MessageHeader.evenCoding.code=inicio** 
* Debe incluir el recurso [PatientLE](StructureDefinition-PatientLE.html)
* Debe incluir el recurso [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html)
* Debe incluir el recurso [EncounterInicioLE](StructureDefinition-EncounterInicioLE.html)
* Debe incluir el recurso [AppointmentInicioLE](StructureDefinition-AppointmentInicioLE.html)
* Debe incluir el recurso [ConditionInicioDiagnosticoSospechaLE](StructureDefinition-ConditionInicioDiagnosticoSospechaLE.html)
* Debe incluir el recurso [QuestionnaireResponseInicioLE](StructureDefinition-QuestionnaireResponseInicioLE.html)
* Debe incluir el recurso [ObservationInicioLE](StructureDefinition-ObservationInicioLE.html)


## Mensaje Bundle de Ejemplo

* [BundleInicioLE](Bundle-EjemploBundleInicio.html)

## Notas

* Notas Adicionales






