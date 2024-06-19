### Consideraciones Generales

* En el recurso [MessageHeader](StructureDefinition-MessageHeaderLE.html) el elemento eventCoding.code  su valor debe ser "atender".
* El rol que cumple el profesional en este evento es de "atendedor".
* El recurso [Encounter](StructureDefinition-EncounterAtenderLE.html) debe ser agregado en MessageHeader.focus.
<!--
### Consideraciones de Datos

Para la consideración de que datos debe utilizar en este evento considere la [siguiente tabla](StructureDefinition-BundleAtenderLE.html#tabla-de-datos), note que, específicamente para el recurso [ServiceRequestLE](StructureDefinition-ServiceRequestLE.html) los valores de las cardinalidades no son necesariamente los mismos que los del perfil. 

[Ver Tabla de Datos](StructureDefinition-BundleAtenderLE.html#tabla-de-datos)-->