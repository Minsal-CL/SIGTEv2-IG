Profile: EncounterInicioLE
Parent: Encounter
Id: EncounterInicioLE
Title: "Encounter Inicio LE"
Description: "Encounter Inicio LE"

// Obligatorios por estandar
* status MS
* status = #planned

* identifier.value 1..1 MS

* identifier.type 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * code = #"IdConsultaAPS"
    * system 1..1 MS
    * display 0..1 MS
* identifier.value 1..1 MS

* diagnosis.condition only Reference(CondicionInicio1LE)

* appointment 1..1 MS
* appointment only Reference(AppointmentInicioLE)