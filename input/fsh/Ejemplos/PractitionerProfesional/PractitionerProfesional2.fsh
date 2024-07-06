Instance: PractitionerProfesionalLEAtendedor
InstanceOf: PractitionerProfesionalLE
Usage: #example
Title: "Ejemplo de Otro Profesional"
Description: "Ejemplo de otro profesional"

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
  * family.extension[segundoApellido] = SegundoApellidoPractitionerProfesionalEjemplo3

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
