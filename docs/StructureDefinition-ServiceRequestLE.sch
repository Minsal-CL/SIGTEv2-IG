<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ServiceRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ServiceRequest</sch:title>
    <sch:rule context="f:ServiceRequest">
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/SospechaPatologiaGes']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/SospechaPatologiaGes': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/SospechaPatologiaGes']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/SospechaPatologiaGes': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/OrigenInterconsulta']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/OrigenInterconsulta': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/OrigenInterconsulta']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/OrigenInterconsulta': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtString']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtString': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtString']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtString': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/DocAcreditacionCuidadorCodigoLE']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/DocAcreditacionCuidadorCodigoLE': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/DocAcreditacionCuidadorCodigoLE']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/DocAcreditacionCuidadorCodigoLE': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:priority) &gt;= 1">priority: minimum cardinality of 'priority' is 1</sch:assert>
      <sch:assert test="count(f:authoredOn) &gt;= 1">authoredOn: minimum cardinality of 'authoredOn' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
