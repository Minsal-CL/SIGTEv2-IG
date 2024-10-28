Instance: BundleTerminarEjemplo
InstanceOf: BundleTerminarLE
Usage: #example
Title: "Ejemplo Bundle Terminar"
Description: "Ejemplo del mensaje del termino de una interconsulta"

* type = #message
* timestamp =  "2024-03-22T08:30:00-03:00"
* entry[messageheader]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/MessageHeader/MesssageHeaderTerminar"
  * resource = MesssageHeaderTerminar
* entry[servicerequest]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/EjemploSolicitudInterconsultaFinalizada"
  * resource = EjemploSolicitudInterconsultaFinalizada
* entry[practitionerProfesional]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Practitioner/PractitionerProfesionalLETerminador"
  * resource = PractitionerProfesionalLETerminador
* entry[practitionerRole]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/PractitionerRole/PractitionerRoleTerminador"
  * resource = PractitionerRoleTerminador
* entry[organization]
  * fullUrl = "http://interoperabilidad.minsal.cl/fhir/ig/tei/Organization/OrganizationLETerminador"
  * resource = OrganizationLETerminador

Instance: MesssageHeaderTerminar
InstanceOf: MessageHeaderLE
Usage: #inline

* meta.lastUpdated = "2024-03-22T08:30:00-03:00"
* eventCoding = CSTipoEventoLE#terminar "Terminar"
* author = Reference(PractitionerRoleTerminador)
* source
  * software = "SISMaule"
  * endpoint = "llp:10.11.12.13:5432"

* focus[ServiceRequestLE] = Reference(EjemploSolicitudInterconsultaFinalizada)


Instance: PractitionerRoleTerminador
InstanceOf: PractitionerRoleLE
Usage: #inline

* active = true
* practitioner = Reference(PractitionerProfesionalLETerminador)
* organization = Reference(OrganizationLETerminador)

* code = CSPractitionerTipoRolLE#terminador "Terminador"

Instance: OrganizationLETerminador
InstanceOf: OrganizationLE
Usage: #inline

* identifier[0]
  * system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino"
  * value = "121343"

* name = "Centro de Referencia de Salud Miraflores"


Instance: PractitionerProfesionalLETerminador
InstanceOf: PractitionerProfesionalLE
Usage: #inline

*  identifier[run]
  * use = #official
  * type.coding = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#01 "RUN"
  * type.text = "Rol Único Nacional"
  * value = "19949350-7"
  * assigner.display = "Republica de Chile"

* identifier[rnpi]
  * use = #secondary
  * type.coding = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#13 "RNPI"
  * type.text = "Registro Nacional de Prestadores Individuales"
  * value = "1234543"
  * assigner.display = "Intendencia de prestadores individuales - Superintendencia de Salud"

* active = true

* name[0]
  * prefix[0] = "Dr"
  * given[0] = "Gonzalo"
  * family = "Gonzalez"
  * family.extension[segundoApellido] = SegundoApellidoPractitionerProfesionalEjemplo2

* gender = #male
* birthDate = "1980-01-01"

* qualification[TituloProfesional]
  * identifier.value = "cert"
  * code
    * coding = CSTituloProfesional#1 "MÉDICO CIRUJANO"
    * text = "MÉDICO CIRUJANO"
  * period.start = "2007-11-01"
  * issuer.display = "Universidad de Chile"

* qualification[EspecialidadMedica]
  * identifier.value = "esp"
  * code
    * coding = CSEspecialidadMed#30 "MEDICINA INTERNA"
    * text = "MEDICINA INTERNA"
  * period.start = "2010-11-01"
  * issuer.display = "Pontificia Universidad Católica de Chile"

* qualification[Subespecialidad]
  * identifier.value = "subesp"
  * code
    * coding = CSEspecialidadMed#14 "ENDOCRINOLOGÍA ADULTO"
    * text = "ENDOCRINOLOGÍA ADULTO"
  * period.start = "2014-11-01"
  * issuer.display = "Universidad de Valparaíso"
