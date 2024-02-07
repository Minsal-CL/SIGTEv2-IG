### Consideraciones Generales

* En el recurso [MessageHeader](StructureDefinition-MessageHeaderLE.html) el elemento eventCoding.code  su valor debe ser "revisar".
* Cuando la interconsulta **no es pertinente**, se debe completar obligatoriamente ServiceRequest.doNotPerform, esto debe ser revisado por el servidor para exigir su obligatoriedad.
* El rol que cumple el profesional en este evento es de "revisor".

### Consideraciones de Datos

Para la consideración de que datos debe utilizar en este evento considere la [siguiente tabla](StructureDefinition-BundleRevisarLE.html#tabla-de-datos), note que, específicamente para el recurso [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html) los valores de las cardinalidades no son necesariamente los mismos que los del perfil. 

[Ver Tabla de Datos](StructureDefinition-BundleRevisarLE.html#tabla-de-datos)
