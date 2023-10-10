### Alcance

Esta guía de implementación aborda el proceso de solicitud de interconsulta (SIC), para
consulta nueva de especialidad desde el nivel primario de salud (APS) al nivel secundario,
mediante la plataforma interoperable de Tiempos de Espera.
Para representar este proceso se definen 7 eventos, los cuáles son:

 - Iniciar: Generar SIC en box de APS
 - Referenciar: Asignar destino desde la APS
 - Revisar: Revisar la pertinencia
 - Priorizar: Asignar la prioridad
 - Agendar: Agendar la cita
 - Atender: consulta con el especialista
 - Terminar: salida de la Lista de Espera


### Introducción

#### Antecedentes
    
  El sistema de salud en Chile se estructura en niveles (primario, secundario y 
  terciario), siendo el nivel primario el con mayor despliegue en el territorio, 
  con atenciones de menor
  complejidad y la puerta de entrada a todas las atenciones de salud en la red
  pública de establecimientos. Para optar a una atención de especialidad, las 
  personas deben ser
  derivadas desde la atención primaria a un centro de mayor complejidad, teniendo
  que esperar para recibir esta atención en el nivel primario o secundario. 
  
  Las personas y tiempos que deben esperar para una atención de salud han sido y 
  son una preocupación para todo el sistema sanitario.

  Los sistemas que soportan actualmente la información de las personas y tiempos 
  de espera por su estructura y forma de operar, no permiten conocer la realidad 
  de la situación, trazar al paciente y tampoco permite mantener informado al
  paciente. Para mejorar la gestión de la red asistencial y la coordinación entre 
  sus niveles, se requiere implementar un proceso interoperable de solicitud de
  nueva consulta de especialidad desde APS a nivel secundario, para patologías no
  adscritas a las garantías explícitas de salud (GES).

#### Descripción
    
  Se propone desarrollar de un sistema de Información que permita hacer
  trazabilidad del proceso desde que se solicita interconsulta para Nueva
  atención de Especialidad, hasta que se atiende en atención secundaria, dejando
  disponible esta información tanto para el paciente, como para los 
  establecimientos de salud involucrados y el nivel central para la toma de 
  decisiones y mejor gestión de los recursos.
  
  Este proyecto se ejecutó por un equipo multidisciplinario con profesionales de 
  DEIS, DIGERA, DIVAP y la Unidad de Interoperabilidad de DTIC, utilizando una 
  metodología para el re-diseño del proceso, optimizado y centrado en el paciente
  y su implementación bajo estándares internacionales de interoperabilidad.
  
#### Objetivos del Proyecto de Tiempos de Espera Interoperables
  
##### General

  Generar un sistema seguro e interoperable de datos clínicos para soportar la 
  gestión (registro, transferencia, análisis, etc.) de la información, fidedigna 
  y de calidad, entregada a través de una plataforma de visualización del estado 
  de nueva consulta de especialidad para pacientes.
    
##### Específicos

  - Lograr el intercambio de información de las solicitudes de interconsultas
  emitidas desde los registros clínicos electrónicos implementados en los
  establecimientos de salud pública del país y la plataforma de interoperabilidad
  de MINSAL.
  - Promover la estandarización de los datos involucrados en este proceso.
  - Proporcionar directrices y reglas comunes que faciliten la adopción de
  estándares de interoperabilidad semánticos y sintácticos, tanto por parte de
  profesionales clínicos como para los desarrolladores en toda la red
  asistencial.
  - Garantizar que los datos se representen y se compartan de manera coherente
  entre sistemas, evitando ambigüedades y errores en la interpretación de la
  información.

#### Objetivos de la Guía de Implementación
 
##### General

  Brindar las directrices para el desarrollo de sistema de información que
  garanticen la interoperabilidad con la plataforma de Tiempos de Espera para el
  proceso de solicitud de nueva consulta de especialidad desde APS a nivel
  secundario, según los estándares definidos por el Ministerio de Salud.

##### Específicos
  - Otorgar las herramientas necesarias para el desarrollo de sistemas informáticos de
  registro clínico que interoperen con la plataforma de tiempos de espera, en base al
  estándar HL7 FHIR.
  - Describir los distintos perfiles de usuario del proceso de solicitud de interconsulta de
  primera atención de especialidad no GES y los recursos asociados a cada uno.
  
  - Ejemplificar los distintos casos de uso asociados al proceso de tiempos de espera para
  solicitud de primera consulta de especialidad desde APS a nivel secundario.