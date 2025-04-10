Instance: EjemploPatientLE
InstanceOf: PatientLE
Usage: #example
Title: "Ejemplo PatientLE"
Description: "Ejemplo de un paciente de la guía Tiempos de Espera"

* extension[IdentidadDeGenero] = IdentidadDeGeneroPatientLE1
* extension[nacionalidad] = NacionalidadPacienteLE1
* extension[PaisOrigen] = PaisOrigenMPIPacienteLE1
* extension[PueblosOriginariosPerteneciente] = PueblosOriginariosPertenecientePacienteLE1
* extension[PueblosAfrodescendiente] = PueblosAfrodescendientePacienteLE1
* extension[PueblosOriginarios] = PueblosOriginariosPacienteLE1

* identifier
  * use = #official
  * type
    * extension[paisEmisionDocumento] = paisEmisionDocumentoPacienteLE1
    * coding
      * system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
      * code = #01
      * display = "RUN"
    * text = "Rol Único Nacional"
  * value = "90000000-6"
  * assigner 
    * display = "Republica de Chile"

* active = true

* name[NombreOficial]
  * use = #official
  * family = "Gonzalez"
    * extension[segundoApellido] = segundoApellidoPacienteLE1
  * given[0] = "María"
  * given[1] = "Josefina"

* telecom[0]
  * system = #phone
  * value = "(562) 5555 6473"
  * use = #work
  * rank = 1

* gender = #male
* birthDate = "1974-12-25"
* deceasedBoolean = false
* address = ClAddressPacienteLE1

Instance: IdentidadDeGeneroPatientLE1
InstanceOf: IdentidadDeGenero
Usage: #inline

* valueCodeableConcept = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero#2 "Femenina"

Instance: NacionalidadPacienteLE1
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais#152 "Chile"

Instance: PaisOrigenMPIPacienteLE1
InstanceOf: PaisOrigenMPI
Usage: #inline

* valueCodeableConcept = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais#152 "Chile"

Instance: PueblosOriginariosPertenecientePacienteLE1
InstanceOf: PueblosOriginariosPerteneciente
Usage: #inline

* valueBoolean = true

Instance: PueblosAfrodescendientePacienteLE1
InstanceOf: PueblosAfrodescendiente
 Usage: #inline

* valueBoolean = false

Instance: PueblosOriginariosPacienteLE1
InstanceOf: PueblosOriginarios
Usage: #inline

* valueCodeableConcept = PueblosOriginariosCS#07 "Diaguita"

Instance: paisEmisionDocumentoPacienteLE1
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais#152 "Chile"


Instance: segundoApellidoPacienteLE1
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Morales"

Instance: ClAddressPacienteLE1
InstanceOf: ClAddress
Usage: #inline

* use = #home
* text = "Calle Arrabal Conchita Tejeda Nº 24, Esc. 432"
* line[0] = "Calle Arrabal Conchita Tejeda"
* city = "Huara"
* city.extension = ComunasClPacienteLE1
* district = "Provincia del Tamarugal"
* district.extension = ProvinciasClPacienteLE1
* state = "Región de Tarapacá"
* state.extension = RegionesClPacienteLE1

Instance: ComunasClPacienteLE1
InstanceOf: ComunasCl
Usage: #inline

* valueCodeableConcept = CSCodComunasCL#01404 "Huara"

Instance: ProvinciasClPacienteLE1
InstanceOf: ProvinciasCl
Usage: #inline

* valueCodeableConcept = CSCodProvinciasCL#014 "Tamarugal"

Instance: RegionesClPacienteLE1
InstanceOf: RegionesCl
Usage: #inline

* valueCodeableConcept = CSCodRegionCL#01 "Tarapacá"


