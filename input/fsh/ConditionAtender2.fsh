// Profile: CondicionAtenderDiagnosticoSospechaLE
// Parent: Condition
// Id: CondicionAtenderDiagnosticoSospechaLE
// Title: "Condicion Atender Diagnostico Sospecha LE"
// Description: """
// Condicion Atender Diagnostico Sospecha LE

// * Para el caso de uso de terminología propia el elemento **code** quedaría de la siguiente forma:
//   ```
//   "code": {
//     "coding": [
//       {
//         "system": "url fuente",
//         "code": "código que representa el diagnóstico",
//         "display": "texto que representa el código usado"
//       }
//     ],
//     "text": "representación en texto del diagnóstico"
//   }
//   ```
// """
// * ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
// * ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

// //OBLIGATORIO POR ESTANDAR
// * subject only Reference(PatientLE)


// * code 1..1 MS
//   * coding 1..1 MS
//     * system 0..1 MS
//     * code 1..1 MS
//     * display 1..1 MS
//   * text 0..1 MS


// * verificationStatus 1..1 MS
//   * coding 1..1 MS
//     * system 0..1 MS
//     * code 1..1 MS
//     * display 0..1 MS
  
// //* verificationStatus.coding.code = #confirmed
// * verificationStatus.coding.code ^short = "confirmed=Confirmado | refuted=Descartada"
// * verificationStatus ^short = "Evaluación de Hipótesis Diagnóstica realizada por el médico especialista"