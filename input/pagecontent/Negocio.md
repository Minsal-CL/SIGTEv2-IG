### Workflow

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;width: 100%;
  max-width: 800px;
  height: auto;" 
  src="workflow.png"> 
  <p></p>
</div>
<br>


### Eventos Interoperabilidad CNE de APS a Secundario

#### Iniciar
  
  Ocurre cuando un usuario acude a su Centro de Atención Primaria (APS) a
  consulta médica, de odontología, matronería, consulta oftalmológica con       
  tecnólogo/a médico/a y el profesional de salud que lo atiende, genera la 
  solicitud de interconsulta (SIC) para nueva consulta de especialidad en el 
  nivel secundario. 

#### Referenciar
  
  Corresponde al acto de asignación del establecimiento de nivel secundario de 
  destino de la SIC (al cual se está derivando). Puede ser accionado por el mismo 
  profesional que solicitó la interconsulta, por el algoritmo del Registro 
  Clínico Electrónico o por el equipo gestor local de solicitudes de 
  interconsulta. 
  
  Puede ocurrir simultáneamente cuando se genera la solicitud de
  interconsulta (al mismo tiempo que el evento INICIAR) o en un tiempo diferido. 
  Este destino se establece de acuerdo al protocolo de referencia y
  contrarreferencia para el problema específico de salud (mapa de derivación).

  En algunos casos, dependiendo de los procedimientos locales del establecimiento
  de Atención Primaria de Salud, se completará información y antecedentes
  faltantes de la solicitud de Interconsulta.

#### Revisar
  
  Un profesional clínico contralor debe revisar la pertinencia de la solicitud,
  según el protocolo de referencia y contrarreferencia establecido y reconocido
  por la red. También puede objetar la derivación por falta de antecedentes y
  gestionar la completitud de los antecedentes clínicos y administrativos.
  
  Esto puede suceder en APS o nivel secundario según acuerdo entre ambos niveles
  y el Servicio de Salud, debiendo existir un flujo definido en caso de rechazo
  de la SIC para dar respuesta al usuario.
  
  Acá se pueden verificar si existe alguna causal de salida de Lista de Espera,
  por ejemplo, en caso de defunción, GES, no beneficiario entre otras. 

#### Priorizar
  
  Un profesional clínico debe realizar la priorización de la solicitud de
  interconsulta, en función de la categorización definida, considerando
  patología, gravedad y determinantes sociales del paciente. 
  
  Esto puede suceder en el establecimiento de Atención Primaria de Salud o nivel
  secundario según acuerdo entre ambos niveles y el Servicio de Salud. 
  
  Acá se pueden verificar si existe alguna causa de salida de Lista de Espera,
  por ejemplo, en caso de defunción, GES, no beneficiario entre otras. (Según
  [Norma Técnica N°118](https://drive.google.com/file/d/1kZBAY7E-Rmy3DxGCMP3emotxEWh5nLEy/view))

#### Agendar
  Un funcionario administrativo contactará al usuario para agendar la cita con el
  especialista según la priorización asignada y la disponibilidad de horas.
  Esto puede suceder tanto en el establecimiento de atención primaria como en el
  nivel secundario según acuerdo entre ambos niveles y el Servicio de Salud. 
  
  Acá se pueden verificar si existe alguna causa de salida de Lista de Espera.

#### Atender
  El usuario recibe atención con el médico especialista en el establecimiento de
  nivel secundario. 
  
  El médico especialista tendrá a la vista los datos de la
  Solicitud de Interconsulta generada en el establecimiento de nivel primario en
  la Ficha Clínica Electrónica local, y en esa misma plataforma registrará los
  datos del encuentro (solicitud de exámenes, indicaciones, tratamiento, reposo,
  etc.).
  
  Esta información quedará disponible para intercambiarse con otros sistemas de
  información, como el registro clínico del establecimiento de atención primaria
  o el Portal Paciente. 
  
  El usuario puede quedar en control, hospitalizado o ser dado de alta. En estos
  tres casos el paciente sale de la Lista de Espera.

#### Terminar
  En este acto el paciente sale de la Lista de Espera, ya sea porque fue atendido
  o por alguna de las causales de eliminación de la Lista de Espera según la
  [norma técnica N°118](https://drive.google.com/file/d/1kZBAY7E-Rmy3DxGCMP3emotxEWh5nLEy/view). 
  
  Esto puede ocurrir de forma automática por definiciones del sistema
  informático, o mediante un funcionario administrativo. 

### Rol de Actores Interoperabilidad CNE de APS a Secundario

#### Iniciador

  Corresponde al profesional de la salud que se encuentra atendiendo al usuario
  (paciente) en la consulta que puede ser médica, de odontología, matronería o
  consulta oftalmológica con tecnólogo/a médico/a, y que en virtud a su evaluación y
  cuando corresponda, origina la Solicitud de Interconsulta (SIC) para nueva
  consulta de especialidad en el nivel secundario. Los profesionales autorizados
  para iniciar este proceso son médicos/as, matrones/as, odontólogo/as o
  tecnólogos/as médicos/as con mención en oftalmología. Este profesional deberá
  completar los antecedentes clínicos que fundamente la decisión de derivar a
  especialidad. 

#### Referenciador
  
  Corresponde al funcionario/a del establecimiento de salud de nivel primario que
  asigna el establecimiento de nivel secundario de destino de la SIC (al cual se
  está derivando), en función del protocolo de referencia y contrarreferencia
  definido para el problema específico de salud y la especialidad (mapa de
  derivación), establecido y reconocido por la red. Esta función no está limitada a
  profesionales de la salud. 
  
  Puede ser el mismo profesional que solicitó la interconsulta, puede ser un/a
  funcionario/a del equipo gestor local de solicitudes de interconsulta o en algunos
  casos, no ser mediado por una persono, si no que se asigna automáticamente por un
  algoritmo del Registro Clínico Electrónico 
  En algunos casos, dependiendo de los procedimientos locales del establecimiento de
  Atención Primaria de Salud, este/a funcionario/o también completará información y
  antecedentes faltantes de la solicitud de Interconsulta 

#### Revisor
  
  Es el/la profesional clínico/a que ejerce las funciones de contraloría, quien
  revisa la pertinencia de la solicitud, según el protocolo de referencia y
  contrarreferencia establecido y reconocido por la red y los antecedentes
  entregados por el INICIADOR. Puede aprobar, rechazar u objetar la derivación por
  falta de antecedentes y gestionar la completitud de las antecedentes clínicos y
  administrativos.

  Este profesional puede pertenecer al establecimiento de atención primaria o
  secundaria, según lo definido por cada Servicio de Salud y en caso de rechazar la
  SIC, debe gestionar las acciones necesarias para dar respuesta al usuario
  (paciente). 
  
  El REVISOR también pueden verificar si existe alguna causal de salida de Lista de
  Espera, por ejemplo, en caso de defunción, GES, no beneficiario entre otras. 

#### Priorizador
  
  Es el/la profesional clínico/a que ejerce las funciones de contraloría, quien debe
  dar prioridad a la solicitud de interconsulta, en función de la categorización
  definida, considerando patología, gravedad y determinantes sociales del paciente
  informadas por el profesional INICIADOR. 
  
  Este profesional puede pertenecer al establecimiento de atención primaria o
  secundaria, según lo definido por cada Servicio de Salud según acuerdo entre ambos
  niveles y el Servicio de Salud. 
  
  También puede verificar si existe alguna causa de salida de Lista de Espera, por
  ejemplo, en caso de defunción, GES, no beneficiario entre otras. (Según Norma
  Técnica N°118).

#### Agendador
  
  Es el funcionario administrativo encargado de agendar la cita para la consulta de
  especialidad en el nivel secundario, luego de que la SIC ha sido aprobada y
  priorizada. Para ello deberá contactar al usuario/a y asignar la hora según la
  disponibilidad de oferta de horas. 
  
  Este profesional puede pertenecer al establecimiento de atención primaria o
  secundaria, según lo definido por cada Servicio de Salud según acuerdo entre ambos
  niveles y el Servicio de Salud.

  Este funcionario también puede verificar si existe alguna causa de salida de Lista
  de Espera

#### Atendedor
  
  Es el profesional médico especialista de nivel secundario que dará la atención de
  especialidad al usuario/a (paciente) en el establecimiento de nivel secundario.
  Tendrá a la vista los datos de la Solicitud de Interconsulta generada en el
  establecimiento de nivel primario en la Ficha Clínica Electrónica local por el
  INICIADOR, y registrará los datos del encuentro médico (solicitud de exámenes,
  indicaciones, tratamiento, reposo, etc.) en el registro clínico electrónico del
  establecimiento de nivel secundario. Este profesional deberá generar como
  resultado de la atención, dejar al usuario/a (paciente) en control en el nivel
  secundario, en control en el nivel primario, hospitalizarlo, o dar de alta.

#### Terminador
  
  Corresponde al funcionario administrativo que ejecuta la salida del usuario/a
  paciente de lista de espera, en función de si recibió la atención de especialidad,
  o por alguna de las otras causales de eliminación de la Lista de Espera según la
  norma técnica N°118. 
  
  En algunos casos esto podría ser automático, sin la mediación de una persona,
  según definiciones del sistema informático local.


### Historias de Usuario según rol

Las siguientes corresponden a las historias que definen las interacciones entre los usuarios con los sistemas de información en el contexto de la generación de solicitud de interconsulta para primera atención de especialidad para patologías no GES y su resolución.
Las historias se definen según el siguiente esquema: “Como <rol de usuario>, yo <quiero/puedo/necesito> <acción> para poder <objetivo/meta>.”

#### Iniciador
  
##### Crear una solicitud de interconsulta
    
  **Historia**
    
  Como iniciador, yo quiero crear una solicitud de interconsulta.

  **Criterios de aceptación**

  Verificar que el iniciador puede ingresar una nueva solicitud de interconsulta
  al ingresar:
  
  - Paciente
  - Especialidad de destino
  - Prioridad
  - Fecha y hora
  - Razón de la solicitud de interconsulta como texto libre
  - Razón de la solicitud de interconsulta como concepto
  - Solicitante 

Verificar que el iniciador debe ingresar paciente, especialidad, prioridad,
razón y solicitante. el box
 
#### Referenciador
  
##### Referenciar una solicitud de interconsulta**
  
  **Historia**
  
  Como referenciador, yo quiero referenciar una solicitud de interconsulta.
  
  **Criterios de aceptación**
  Verificar que el referenciador puede listar las solicitudes de interconsultas
  ordenadas por:
  - Nombres y apellidos
  - Número de identificación
  - Fecha de creación
  - Prioridad
  - Especialidad de destino
  - Motivo codificado de la solicitud
  - Verificar que el referenciador puede revisar el detalle de cada solicitud de
  interconsulta evaluando la información de
  - Nombres y apellidos
  - Número de identificación
  - Sexo registral e identidad de género
  - Fecha de nacimiento y edad al momento de la creación
  - Cantidad de días de espera
  - Prioridad asignada por el solicitante
  - Especialidad de destino
  - Motivo codificado de la solicitud
  - Motivo en texto libre de la solicitud
  - Notas o detalle adicional de la solicitud
  
  Verificar que el referenciador puede asignar el establecimiento, organización o
  ubicación que será la responsable de continuar con el proceso de atención.
  
  **Resultado de la acción**

  La solicitud de interconsulta tiene un establecimiento de destino asignado para
  continuar con el proceso de atención.

#### Revisor

##### Revisar una solicitud de interconsulta
  
  **Historia**
  
  Como profesional revisor, yo quiero revisar las solicitudes de interconsulta.

  **Criterios de aceptación**
  
  - Verificar que un revisor puede listar las solicitudes de interconsultas
  ordenadas por:
    - Nombres y apellidos
    - Número de identificación
    - Fecha de creación
    - Prioridad
    - Especialidad de destino
    - Motivo codificado de la solicitud

  - Verificar que el revisor puede revisar el detalle de cada solicitud de
  interconsulta evaluando la información de

    - Nombres y apellidos
    - Número de identificación
    - Sexo registral e identidad de género
    - Fecha de nacimiento y edad al momento de la creación
    - Cantidad de días de espera
    - Prioridad asignada por el solicitante
    - Especialidad de destino
    - Motivo codificado de la solicitud
    - Motivo en texto libre de la solicitud
    - Notas o detalle adicional de la solicitud
  
  - Verificar que el revisor puede marcar la solicitud como “Pertinente” o “No Pertinente”
  
  **Resultado de la acción**
  
  **Si es “Pertinente”**:   El equipo profesional de su centro de salud de atención
  primaria tomará contacto con el paciente y le informará que su caso ha sido
  revisado y será atendido por especialidad, en el centro de atención de
  especialidad. 
  
  **Si es “No Pertinente”**:  El equipo profesional de su centro de salud de
  atención primaria tomará contacto con el paciente y le informará que la
  continuación de su atención se realizará en un centro de atención primaria y que
  será contactado por el equipo de dicho establecimiento para continuar con su
  atención. 

#### Priorizador

##### Priorizar una solicitud de interconsulta
  
  **Historia**
  
  Como profesional priorizador, yo quiero revisar las solicitudes de interconsulta.
  
  **Criterios de aceptación**
  - Verificar que el priorizador puede listar las solicitudes de interconsultas
  ordenadas por:
    - Nombres y apellidos
    - Número de identificación
    - Fecha de creación
    - Prioridad
    - Especialidad de destino
    - Razón codificada de la solicitud

  - Verificar que el priorizador puede marcar la solicitud como “Prioridad Habitual”
  o “Prioridad Alta”

  **Resultado de la acción**
  
  PRIORIZAR la interconsulta que llega a nivel secundario y se prioriza.
  
  El equipo profesional de su centro de salud de atención primaria tomará contacto
  con el paciente y le informará que su caso ha sido revisado en el establecimiento
  de destino y se le asignará una cita en el más breve plazo posible de acuerdo a
  sus antecedentes médicos, de acuerdo con el resultado del procedimiento de
  priorización determinado.

 
#### Agendador

##### Agendar una solicitud de interconsulta
  
  **Historia**
  
  Como agendador, quiero agendar una cita para un encuentro basado en la solicitud
  de interconsulta previamente emitida.
  
  **Criterios de aceptación**

  - Verificar que el agendador puede agendar una cita con un profesional resolutor
  determinando su fecha/hora de inicio de la cita.
  
  - Verificar que el agendador puede ver la información de la cita profesional. La
  información de solicitud debe mostrar.
    - Nombres y apellidos
    - Número de identificación
    - Numero de solicitud
    - Prioridad
    - Solicitante
    - Fecha de solicitud
  - Verificar que el agendador puede agendar la cita si la solicitud no se encuentra
  en estado “agendado” o “terminado”.
  
  **Resultado de la acción**
  
  El agendador puede asignar paciente asociando a un número de interconsulta a un
  bloque horario de atención (Slot), generando una cita (Appointment) en estado de
  “agendado” (booked). También puede registrar cuando no es posible contactar al
  usuario o éste no asiste a su cita. 

#### Atendedor
  
##### Como atendedor, quiero responder una solicitud de interconsulta.
  
  **Historia**
  
  Como atendedor, quiero resolver una solicitud de interconsulta, previamente
  revisada por el contralor, priorizada por el priorizador y agendada por el
  agendador.
  
  **Criterios de aceptación**
  
  - Verificar que un atendedor puede crear un encuentro de salud en relación a la
  cita agendada basada en la solicitud de interconsulta al ingresar
    - Fecha de agendamiento
    - Nombres y apellidos del paciente
    - Número de identificación
 
  **Resultado de la acción**
  
  El paciente es atendido por el atendedor (médico especialista) y registra la
  información de esta atención. 

#### Terminador

##### Como terminador quiero terminar el proceso de atención de una solicitud de interconsulta.

  **Historia**
  Como terminador, quiero egresar al usuario de la Lista de Espera y terminar el
  ciclo de una solicitud de interconsulta.

  **Criterios de aceptación**
  
  - Verificar que un terminador puede ver la información de la solicitud de
  interconsulta con la consiguiente información, sobre las 18 causales de egreso
  según la Norma Técnica N°118.
    - Nombres y apellidos del paciente
    - Número de identificación
    - Estado del paciente 
    - Numero de solicitud
    - Fecha de solicitud 
    - Estado de la Solicitud de Interconsulta 
    - Respuesta generada por Revisor 
    - Respuesta generada por Agendador
    - Respuesta generada por Atendedor 
    
  **Resultado de la acción**
  
  Como terminador quiero terminar el proceso de atención de una interconsulta.


### Diccionario de datos 
[Ver Diccionario de Datos aquí](https://docs.google.com/spreadsheets/d/16DM1VcpJS4nZdU8J0YIZP3kJ7t5CUbXN/edit#gid=98949620)
