Profile: AppointmentAtenderLE
Parent: Appointment
Id: AppointmentAtenderLE
Title: "Appointment Atender LE"
Description: "Appointment Atender LE"


* identifier 1..1 MS
  * value 1..1 MS
  
// Obligatorio por estandar
* status 1..1 MS
* status = #booked


* start 0..1 MS

* appointmentType 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS
