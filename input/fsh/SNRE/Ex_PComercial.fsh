Extension: ProdComercial
Id: ProdComercial
Title: "Identificación de un medicamento bajo su marca comercial"
Description: "Indicación de un Medicamento bajo su Marca Comercial"
Context: PrescripcionRecetaCL
* ^version = "0.9.8"
* ^status = #active
* ^publisher = "MINSAL Chile"
* ^context[0].type = #element
* ^context[=].expression = "PrescripcionRecetaCL"
// * extension 0..0
* value[x] only Reference
//* valueReference = Reference()
* valueReference ^short = "Referencia a un recurso medicamento en \"https://api-receta.minsal.cl/v2/Medication\""

/*
Instance: Ejemplo-Curacion-Pie-Diabetico
InstanceOf: ProdComercial
Title: "Ejemplo Curacion Pie Diabetico"
Description: "Ejemplo Curacion Pie Diabetico"
Usage: #example
* url = "https://rme.hl7chile.cl/StructureDefinition/ProdComercial"
* valueReference.display = "ibupirac LC 400 mg cápsula blanda (Chemopharma)"
* valueReference.reference = "https://apiqa-receta.minsal.cl/v2/Medication/2023101000167118"

* extension[ProdComercial].url = "https://rme.hl7chile.cl/StructureDefinition/ProdComercial"


* extension[ProdComercial].url = "https://rme.hl7chile.cl/StructureDefinition/ProdComercial"

*/