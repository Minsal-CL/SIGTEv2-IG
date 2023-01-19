Profile: AppointmentLE
Parent: Appointment
Id: AppointmentLE
Title: "AppointmentLE"
Description: "AppointmentLE"


* identifier 1..1 MS
  * value 1..1 MS
  * system 1..1 MS
  
* status 1..1 MS
* status = #booked

* start 1..1 MS


* obeys inv-bodstr-0

Invariant: inv-bodstr-0
Description: "The body structure shall at least have location or description or an image"
Severity: #error
Expression: "status.exists() or start.exists() or identifier.exists()"
