Instance: ProfesionalAdministrativoEjemplo
InstanceOf: PractitionerAdministrativoLE
Usage: #example
Title: "Profesional Administrativo de Ejemplo"
Description: "Ejemplo de un profesional administrativo que referenciara la interconsulta"

* identifier[run]
  * use = #official
  * type 
    * extension = paisEmisionDocumentoProfesionalAdministrativoEjemplo
    * coding = CSTipoIdentificador#01 "RUN"
  * value = "90000000-6"
  * assigner
    * display = "Republica de Chile"

* active = true
* name
  * use = #official
  * family = "Parra"
  * family.extension[segundoApellido] = segundoApellidoProfesionalAdministrativoEjemplo
  * given[0] = "Caludio"
* address = ClAddressPractitionerProfesionalAdministrativoEjemplo
* gender = #male
* birthDate = "1980-01-01"

Instance: paisEmisionDocumentoProfesionalAdministrativoEjemplo
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais#152 "Chile"

Instance: segundoApellidoProfesionalAdministrativoEjemplo
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Sandoval"

Instance: ClAddressPractitionerProfesionalAdministrativoEjemplo
InstanceOf: ClAddress
Usage: #Inline

* use = #work
* state.extension = RegionesClProfesionalAdministrativoEjemplo

Instance: RegionesClProfesionalAdministrativoEjemplo
InstanceOf: RegionesCl
Usage: #inline

* valueCodeableConcept = CSCodRegionCL#13 "Metropolitana de Santiago"
