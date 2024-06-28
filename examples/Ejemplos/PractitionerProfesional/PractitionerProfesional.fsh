Instance: PractitionerProfesionalLEEjemplo
InstanceOf: PractitionerProfesionalLE
Usage: #example
Title: "Ejemplo de Practitioner ProfesionalLE"
Description: "Ejemplo de un profesional de tiempos de espera"

*  identifier[run]
  * use = #official
  * type.coding = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#01 "RUN"
  * type.text = "Rol Único Nacional"
  * value = "90000000-6"
  * assigner.display = "Republica de Chile"

* identifier[rnpi]
  * use = #secondary
  * type.coding = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#13 "RNPI"
  * type.text = "Registro Nacional de Prestadores Individuales"
  * value = "9999999"
  * assigner.display = "Intendencia de prestadores individuales - Superintendencia de Salud"

* active = true

* name[0]
  * prefix[0] = "Dr"
  * given[0] = "Víctor"
  * family = "Gonzalez"
  * family.extension[segundoApellido] = SegundoApellidoPractitionerProfesionalEjemplo

* address =  ClAddressPractitionerProfesionalEjemplo
* gender = #material
* birthDate = "1980-01-01"



Instance: SegundoApellidoPractitionerProfesionalEjemplo
InstanceOf: SegundoApellido
Usage: #Inline

* valueString = "Torres"

Instance: ClAddressPractitionerProfesionalEjemplo
InstanceOf: ClAddress
Usage: #Inline

* state.extension = RegionesClProfesionalEjemplo

Instance: RegionesClProfesionalEjemplo
InstanceOf: RegionesCl
Usage: #inline

* valueCodeableConcept = CSCodRegionCL#13 "Región Metropolitana de Santiago"