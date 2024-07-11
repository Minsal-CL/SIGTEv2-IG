Instance: CarePlanAtencionEjemplo
InstanceOf: CarePlanAtenderLE
Usage: #example
Title: "Ejemplo de Plan de Cuidados"
Description: "Ejemplo de un plan de cuidados de ejemplo como resultado de una atención"

* extension[Requiere-Examen] = ExtensionSolicitudExamenesEj1
* status = #active
* intent = #plan
* subject = Reference(EjemploPatientLE)
* encounter = Reference(AtencionEjemplo)
* description = """
 Se le dara un tratamiento de prednisona de 500 mg, 2 veces al día por por 1 mes. Pasado ese tiempo debe realizarse un examen de Ab Adrenal después de ver mejorias, se hara control cada mes
"""
* activity[referenciaServiceRequestExamenLE]
  * reference  = Reference(AbadrenalEjemplo)
* activity[referenciaReceta]
  * reference  = Reference(PrednisonaEjemplo)


