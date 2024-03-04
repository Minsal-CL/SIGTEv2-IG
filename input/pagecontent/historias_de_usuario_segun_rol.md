Las siguientes corresponden a las historias que definen las interacciones entre los usuarios con los sistemas de información en el contexto de la generación de solicitud de interconsulta para primera atención de especialidad para patologías no GES y su resolución.
Las historias se definen según el siguiente esquema: “Como <rol de usuario>, yo <quiero/puedo/necesito> <acción> para poder <objetivo/meta>.”

### Iniciador
  
#### Crear una solicitud de interconsulta
    
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

**Resultado de la acción**

La solicitud de interconsulta es creada para continuar con el proceso de referencia.
 
### Referenciador
  
#### Referenciar una solicitud de interconsulta**
  
  **Historia**
  
  Como referenciador, yo quiero referenciar una solicitud de interconsulta.
  
  **Criterios de aceptación**
  - Verificar que el referenciador puede listar las solicitudes de interconsultas
  ordenadas por:
    - Nombres y apellidos
    - Número de identificación
    - Fecha de creación
    - Prioridad
    - Especialidad de destino
    - Motivo codificado de la solicitud
  - Verificar que el referenciador puede revisar el detalle de cada solicitud de
  interconsulta evaluando la información de:
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
  
  - Verificar que el referenciador puede asignar el establecimiento, organización o
  ubicación que será la responsable de continuar con el proceso de atención.
  
  **Resultado de la acción**

  La solicitud de interconsulta tiene un establecimiento de destino asignado para
  continuar con el proceso de atención.

### Revisor

#### Revisar una solicitud de interconsulta
  
  **Historia**
  
  Como profesional revisor, yo quiero revisar las solicitudes 
  de interconsulta para evaluar su pertinencia.

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
  primaria tomará contacto con el/la usuario/a y le informará que su caso ha sido
  revisado y será atendido por especialidad, en el centro de atención de
  especialidad. 
  
  **Si es “No Pertinente”**:  El equipo profesional del establecimiento de salud de
  atención primaria tomará contacto con el/la usuario/a y le informará que la
  continuación de su atención se realizará en un centro de atención primaria y que
  gestionará su atención por parte del equipo de dicho establecimiento para continuar con su
  atención en el nivel secundario. 

### Priorizador

#### Priorizar una solicitud de interconsulta
  
  **Historia**
  
  Como profesional priorizador, yo quiero revisar las solicitudes de interconsulta 
  y confirmar o cambiar la prioridad.
  
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
  
  La solicitud de interconsulta que llega a nivel secundario 
  es priorizada para continuar con el proceso de agendamiento.
  
  El equipo profesional del establecimiento de atención primaria tomará contacto
  con el/la usuario/a y le informará que su caso ha sido revisado en el establecimiento
  de destino y se le asignará una cita en el más breve plazo posible de acuerdo a
  sus antecedentes médicos y la prioridad definida.

 
### Agendador

#### Agendar una solicitud de interconsulta
  
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
  “agendado” (booked). También puede registrar cuando no es posible contactar al/la usuario/a
  o no asiste a su cita. 

### Atendedor
  
#### Como atendedor, quiero responder una solicitud de interconsulta.
  
  **Historia**
  
  Como atendedor, quiero atender a un/a usuario/a para resolver una solicitud de interconsulta, 
  previamente revisada por el contralor, priorizada por el priorizador y agendada por el agendador.
  
  **Criterios de aceptación**
  
  - Verificar que un atendedor puede crear un encuentro de salud en relación a la
  cita agendada basada en la solicitud de interconsulta al ingresar
    - Fecha de agendamiento
    - Nombres y apellidos del paciente
    - Número de identificación
 
  **Resultado de la acción**
  
  El paciente es atendido por el atendedor (médico especialista) y registra la
  información de esta atención. 

### Terminador

#### Como terminador quiero terminar el proceso de atención de una solicitud de interconsulta.

  **Historia**
  Como terminador, quiero egresar al usuario de la Lista de Espera 
  y terminar el ciclo de una solicitud de interconsulta.

  **Criterios de aceptación**
  
  - Verificar que un terminador puede ver la información de la solicitud de
  interconsulta con la consiguiente información:
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
  
  El usuario es egresado de la Lista de Espera por alguna de las 20 
  causales definidas en la [Norma Técnica N°118](https://drive.google.com/file/d/1kZBAY7E-Rmy3DxGCMP3emotxEWh5nLEy/view).