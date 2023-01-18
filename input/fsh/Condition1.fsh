Profile: CondicionLE1
Parent: Condition
Id: CondicionLE1
Title: "CondicionLE1"
Description: "CondicionLE1"

* code 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 1..1 MS
  * text 0..1 MS
* code.coding.system = #http://id.who.int/icd/release/11/mms


* category 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * code 1..1 MS
    * display 1..1 MS
  * text 1..1 MS
* category
  * coding
    * code = #encounter-diagnosis
    * system = #http://terminology.hl7.org/CodeSystem/condition-category
  * text = #diagnostico

* note 1..1 MS