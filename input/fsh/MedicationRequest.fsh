Profile: MedicationRequestLE
Parent: MedicationRequest
Id: MedicationRequestLE
Title: "Solicitud de Medicamento LE"
Description: "Perfil para la prescripción de un medicamento al paciente"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* obeys mdr-01

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* status 1..1 MS
  * ^short = "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
  * ^definition = "Estado de la prescripción"
* intent 1..1 MS
  * ^short = "proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option"
  * ^definition = "El tipo de solicitud"

* subject 1..1 MS
* subject only Reference(PatientLE)
  * ^short = "Paciente"
  * ^definition = "Paciente al que se le solicita el medicamento"

* encounter 1..1 MS
* encounter only Reference(EncounterAtenderLE)
  * ^short = "Encuentro"
  * ^definition = "Encuentro por el cual nace la solicitud"

* medication[x] 1..1 MS
  * ^short = "Medicamento"
  * ^definition = "Medicamento prescrito"

* note 0..1 MS 
  * ^short = "indicaciones del tratamiento, como texto libre"
  * text 1..1 MS
    * ^short = "Indicaciones como texto libre"

* dosageInstruction 0..1 MS
  * ^short = "Instrucción de dosis"

Invariant: mdr-01
Description: "Se debe existir un note o un dosageInstruction"
Expression: "note.exists() or dosageInstruction.exists()"
Severity: #error

/*
Instance: Prednisona
InstanceOf: MedicationRequest
Usage: #inline

* status = #draft
* intent = #order
* subject = Reference(EjemploPatientLE)
* encounter = Reference(Atencion)
* requester = Reference(PractitionerProfesionalLEAtendedor2)
* medicationCodeableConcept.text = "Prednisona 5mg"
* note.text = "2 veces al día por 1 mes"
*/