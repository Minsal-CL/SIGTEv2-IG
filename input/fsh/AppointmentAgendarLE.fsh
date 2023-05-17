Profile: AppointmentAgendarLE
Parent: Appointment
Id: AppointmentAgendarLE
Title: "AppointmentAgendarLE"
Description: "AppointmentAgendarLE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// EXTESIONES
* extension contains MedioNotificacion named MedioNotificacion 0..1 MS
* extension contains ContactadoLE named ContactadoLE 0..1 MS

// Obligatorio por estandar
* status 1..1 MS
* status ^short = "booked=cita agendada | cancelled=cita cancelada | noshow=no presentación"

* cancelationReason ^short = "uso en caso de cancelación de cita para registrar la razón"
* cancelationReason 0..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * code ^short = "pat(paciente) | prov(médico o institución) | other(otra razón)"
    * display 0..1 MS
    * system 1..1 MS
    * system = #http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason

* start 1..1 MS
* end 0..1 MS

* identifier 1..1 MS
  * value 1..1 MS
  

* appointmentType 0..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS

// * participant 1..2 MS 
// * participant.actor only Reference(PatientLE or PractitionerRoleLE)

* participant 2..2 MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "actor.type"
* participant ^slicing.rules = #open
* participant ^slicing.description = "Slice creado para almacenar diferentes tipos de participante"
* participant contains patientLE 1..1 MS and practitionerRoleLE 1..1 MS
* participant[patientLE].actor 1..1 MS
* participant[patientLE].actor only Reference(PatientLE)
* participant[patientLE].status = #accepted
* participant[patientLE].actor.type = #Patient
* participant[practitionerRoleLE].actor 1..1 MS
* participant[practitionerRoleLE].actor only Reference(PractitionerRoleLE)
* participant[practitionerRoleLE].status = #accepted
* participant[practitionerRoleLE].actor.type = #PractitionerRole

