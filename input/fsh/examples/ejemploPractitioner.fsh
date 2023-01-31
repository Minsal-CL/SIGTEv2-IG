Instance: EjemploPractitioner
InstanceOf: PractitionerLE
Usage: #example
Title: "Ejemplo de Practitioner Evento de Inicio"
Description: ""

* identifier[RUN].type = http://terminology.cens.cl/CodeSystem/listaespera#RUN
* identifier[RUN].use = #official
* identifier[RUN].value = "2134"
* identifier[OtrosID].type = http://terminology.cens.cl/CodeSystem/listaespera#ValorRNPI
* identifier[OtrosID].use = #secondary
* identifier[OtrosID].value = "2134"

* gender = #male
* birthDate = "1974-01-22"
* qualification.identifier.value = "cert"
* qualification.code.coding.system = "http://terminology.cens.cl/CodeSystem/certMedicos"
* qualification.code.coding.display = "Medico Cirujano"
* qualification.code.text = "Certificado(s)"


