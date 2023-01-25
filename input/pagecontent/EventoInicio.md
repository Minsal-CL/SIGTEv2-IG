# Evento: Inicio

El evento INICIO tiene asociado los siguientes códigos de evento: 


| Código | Evento| Descripción | Respuesta |
|--------|----|-----|---|
| inicio | Inicio | Este evento permite iniciar un proceso de interconsulta nuevo | La respuesta debe indicar si errores o indicar que la interconsulta ha sido creada |

Los codigos de evento deben ser incluidos en el recurso **MessageHeader.evenCoding.code**



## Bundle de Envío

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="DiagramasRecursos_ListaEspera_FlujodeEventos_Inicio.png"> 
  <p>----------</p>
</div>
<br>

Los recursos usados en este evento son los siguientes:

* [ServiceRequest](link): Recurso principal para reflejar los datos de la interconsulta
* [MessageHeader](link): lorem
* [PractitionerRole](link): lorem
* [Condition](link): lorem
* [PractitionerRole](link): lorem
* [Observation](link): lorem
* [Encounter](link): lorem
* [AllergyIntolerance](link): lorem
* [Patient](link): lorem
* [QuestionaireResponse](link): lorem
* [Appointment](link): lorem

## Relaciones de Recursos

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="DiagramasRecursos_ListaEspera_IniciarReferenciada.png"> 
  <p>----------</p>
</div>
<br>

## Secuencia del Evento

El evento inicio debe soportar a siguiente secuencia:

Diagrama de Secuencia por definir

## Consideraciones

Las validaciones internas que debe tener el implementador deben considerar cumplir con el conjunto de datos detallado en [Conjunto mínimo de datos](http://link)

## Notas

* Notas Adicionales






