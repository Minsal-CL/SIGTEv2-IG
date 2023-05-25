# Evento: Atender

El evento ATENDER tiene asociado los siguientes códigos de evento: 


| Código | Evento| Descripción | Respuesta |
|--------|-------|-------------|-----------|
| atender | Atender | Este evento permite registrar información asociada a la atención de consulta de especialidad. | La respuesta debe indicar si hay errores o indicar que la interconsulta se ha llevado a cabo con el paciente |
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

* [BundleAtenderLE](StructureDefinition-BundleAtenderLE.html): Recurso que permite agrupar los datos del mensaje.
* [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html): Recurso principal para reflejar los datos de la interconsulta
* [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html): Recurso que contiene datos relacionados al mensaje, como el autor, tipo de evento y foco del mensaje.
* [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html): Recurso que permite reflejar la información relacionada al invididuo autor del proceso (MessageHeader.author)
* [Condition](https://www.hl7.org/FHIR/condition.html): Este recurso tiene 2 usos en el evento de Inicio representados por sus perfiles:
  * [CondicionAtenderDiagnosticoSospechaLE](StructureDefinition-CondicionAtenderDiagnosticoSospechaLE.html): Recurso utilizado para representar el diagnostico de sospecha (Encounter.diagnosis.condition)
  * [CondicionAtenderDiagnosticoConfirmacionLE](StructureDefinition-CondicionAtenderDiagnosticoConfirmacionLE.html): Recurso utilizado para representar el diagnostico de confirmación (Encounter.reasonReference)
* [ObservationAtenderLE](StructureDefinition-ObservationAtenderLE.html): Recurso utilizado para registrar datos relacionados a la realización de exámenes (ServiceRequest.reasonReference)
* [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.html): Recurso utilizado para registrar el identificador de la consulta en APS(ServiceRequest.encounter)
* [PatientLE](StructureDefinition-PatientLE.html): Recurso utilizado para registrar información relacionada al paciente (CarePlan.subject / Encounter.subject)
* [QuestionnaireResponseAtenderLE](StructureDefinition-QuestionnaireResponseAtenderLE.html): Recurso utilizado para registrar información relacionada a la anamnesis (ServiceRequest.supportingInfo)
* [CarePlanAtenderLE](StructureDefinition-CarePlanAtenderLE.html): Recurso utilizado para registrar información 
* [OrganizationLE](StructureDefinition-OrganizationLE.html): Recurso que permite relacionar la interconsulta con el establecimiento de atención
* [PractitionerLE](StructureDefinition-PractitionerLE.html): Recurso que permite reflejar la informacion asociada a la identificación del profesional de la salud.

## Relaciones de Recursos
<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="atender-recursos.png"> 
  <p></p>
</div>
<br>


## Secuencia del Evento

El evento **atender** debe soportar a siguiente secuencia:

<div align="center" >
{% include evento-atender.svg %}
</div>

## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](https://docs.google.com/spreadsheets/d/1FfW2gQvTMJbNpr2mH2DFpsftkMEPr5CW2ed9MkryuH4/edit#gid=2133026629&range=A3)


* Debe incluir el recurso [BundleAtender](StructureDefinition-BundleAtenderLE.html)
* Debe incluir el recurso [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html) con los valores de **ServiceRequest.status=draft** **ServiceRequest.intent=proposal** 
* Debe incluir el recurso [MessageHeaderLE](StructureDefinition-MessageHeaderLE.html) con el valor **MessageHeader.evenCoding.code=atender** 
* Debe incluir el recurso [OrganizationLE](StructureDefinition-OrganizationLE.html)
* Debe incluir el recurso [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.html) con el valor **PractitionerRole.code=Atendedor** 
* Debe incluir el recurso [PractitionerLE](StructureDefinition-PractitionerLE.html) con el valor **PractitionerRole.code=Atendedor** 
* Debe incluir el recurso [PatientLE](StructureDefinition-PatientLE.html)
* Debe incluir el recurso [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.html)
* Debe incluir el recurso [QuestionnaireResponseAtenderLE](StructureDefinition-QuestionnaireResponseAtenderLE.html)
* Debe incluir el recurso [CarePlanAtenderLE](StructureDefinition-CarePlanAtenderLE.html)
* Debe incluir el recurso [ObservationAtenderLE](StructureDefinition-ObservationAtenderLE.html)

* Debe incluir el recurso [CondicionAtenderDiagnosticoSospechaLE](StructureDefinition-CondicionAtenderDiagnosticoSospechaLE.html) con el valor **verificationStatus.coding.code=unconfirmed**

* Debe incluir el recurso [CondicionAtenderDiagnosticoConfirmacionLE](StructureDefinition-CondicionAtenderDiagnosticoConfirmacionLE.html) con el valor **verificationStatus.coding.code=confirmed**

## Mensaje Bundle de Ejemplo

* [BundleAtenderLE](Bundle-EjemploBundleAtender.html)
* 
## Notas

* Notas Adicionales
