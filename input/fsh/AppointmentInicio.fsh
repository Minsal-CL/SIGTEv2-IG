Profile: AppointmentInicioLE
Parent: Appointment
Id: AppointmentInicioLE
Title: "Appointment Inicio LE"
Description: "Appointment Inicio LE"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft


//* identifier 1..1 MS
//  * value 1..1 MS
  
* status 1..1 MS
* status = #fulfilled

* start 0..1 MS

* extension contains MedioNotificacion named MedioNotificacion 0..1 MS

* extension contains Contactado named Contactado 0..1 MS

* basedOn 1..1 MS


/*
* obeys inv-bodstr-0

Invariant: inv-bodstr-0
Description: "The body structure shall at least have location or description or an image"
Severity: #error
Expression: "status.exists() or start.exists() or identifier.exists()"
*/