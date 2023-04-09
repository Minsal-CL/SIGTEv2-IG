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
* status = #booked

* start 1..1 MS
* end 1..1 MS

* identifier 1..1 MS
  * value 1..1 MS
  

* appointmentType 0..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS

* participant 1..1 MS 
* participant.actor only Reference(PatientLE)