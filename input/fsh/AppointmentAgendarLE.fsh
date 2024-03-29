Profile: AppointmentAgendarLE
Parent: Appointment
Id: AppointmentAgendarLE
Title: "Appointment Agendar LE"
Description: "Appointment Agendar LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// EXTESIONES
* extension contains MedioNotificacion named MedioNotificacion 0..1 MS
* extension[MedioNotificacion] ^short = "Medio por donde se notificó al paciente"

* extension contains ContactadoLE named ContactadoLE 0..1 MS
* extension[ContactadoLE] ^short = "Extensión compleja, donde se indica si el paciente fue Contactado[true|false] o MotivoNoContactabilidad si la anterior fue false"

// Obligatorio por estandar
* status 1..1 MS
* status ^short = "Se considera el uso de SOLO estos estados: booked=cita agendada | cancelled=cita cancelada | noshow=no presentación"


* cancelationReason 0..1 MS
  * coding 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico, para este caso se consideran los siguientes: pat(paciente) | prov(médico o institución) | other(otra razón)"
    * display 0..1 MS
    * display ^short = "Representación visual del concepto definido por el sistema terminológico"
    * system 1..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * system = #http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason
* cancelationReason ^short = "Uso en caso de cancelación de cita para registrar la razón"

* start 1..1 MS
* start ^short = "Inicio de esta cita"
* end 0..1 MS
* end ^short = "Término de esta cita"

* identifier 1..1 MS
  * value 1..1 MS
  * value ^short = "Valor del Id"
* identifier ^short = "Ids externos"

* appointmentType 0..1 MS
  * coding 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system 1..1 MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * code ^short = "Código definido en un sistema terminológico" 
    * display 0..1 MS
    * display ^short = "Representación visual, definida por el sistema terminológico"
  * text 0..1 MS
  * text ^short = "Representación textual del concepto"
* appointmentType ^short = "El estilo de cita médica o paciente que se ha reservado en el espacio (no el tipo de servicio)"

* participant 2..2 MS
* participant ^short = "Participante de esta cita médica"
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "actor.type"
* participant ^slicing.rules = #open
* participant ^slicing.description = "Slice creado para almacenar diferentes tipos de participante"
* participant contains patientLE 1..1 MS and practitionerRoleLE 1..1 MS

* participant[patientLE].actor 1..1 MS
* participant[patientLE].actor only Reference(PatientLE)
* participant[patientLE].actor ^short = "Paciente participante de esta cita"
* participant[patientLE].actor.type = #Patient
* participant[patientLE].actor.type ^short = "Tipo de participante de la cita al que se hace referencia"
* participant[patientLE].status = #accepted
* participant[patientLE].status ^short = "Estado, por defecto #accepted"


* participant[practitionerRoleLE].actor 1..1 MS
* participant[practitionerRoleLE].actor only Reference(PractitionerRoleLE)
* participant[practitionerRoleLE].actor ^short = "Persona y ubicación/servicio de atención médica participante de esta cita"
* participant[practitionerRoleLE].actor.type = #PractitionerRole
* participant[practitionerRoleLE].actor.type ^short = "Tipo de participante de la cita al que se hace referencia"
* participant[practitionerRoleLE].status = #accepted
* participant[practitionerRoleLE].status ^short = "Estado, por defecto #accepted"

