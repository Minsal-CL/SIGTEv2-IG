<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PacienteCl
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises']) &gt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises']) &gt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/IdentidadGenero']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/IdentidadGenero': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/IdentidadGenero']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/IdentidadGenero': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/PuebloIndigena']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/PuebloIndigena': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolean': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:identifier</sch:title>
    <sch:rule context="f:Patient/f:identifier">
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/DigitoVerificador': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:identifier/f:type</sch:title>
    <sch:rule context="f:Patient/f:identifier/f:type">
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name/f:family</sch:title>
    <sch:rule context="f:Patient/f:name/f:family">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/humanname-mothers-family']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/humanname-mothers-family': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name</sch:title>
    <sch:rule context="f:Patient/f:name">
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:family) &lt;= 0">family: maximum cardinality of 'family' is 0</sch:assert>
      <sch:assert test="count(f:prefix) &lt;= 0">prefix: maximum cardinality of 'prefix' is 0</sch:assert>
      <sch:assert test="count(f:suffix) &lt;= 0">suffix: maximum cardinality of 'suffix' is 0</sch:assert>
      <sch:assert test="count(f:period) &lt;= 0">period: maximum cardinality of 'period' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:telecom</sch:title>
    <sch:rule context="f:Patient/f:telecom">
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/TipoOtroTelefono']) &gt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/TipoOtroTelefono': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/TipoOtroTelefono']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/TipoOtroTelefono': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
