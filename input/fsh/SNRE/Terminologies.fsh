////////////////////////////////////////////
RuleSet: MetadataVSCS
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
//////////////////////////////////////////


ValueSet: VSStatusReason
Id: VSStatusReason
Title: "Razón del cambio de estado (Prescripción)"
Description: "Códigos que indican la razón por la cual una Prescripción ha cambiado su estado"
* insert MetadataVSCS
* codes from system CSStatusReason

CodeSystem: CSStatusReason
Id: CSStatusReason
Title: "Razón del cambio de estado (Prescripción)"
Description: "Códigos que indican la razón por la cual una Prescripción ha cambiado su estado"
* insert MetadataVSCS
* ^caseSensitive = true

* #altchoice    "Primero probar otro tratamiento" "Esta terapia se ha ordenado como respaldo a una terapia preferida. Esta orden será liberada cuando y si, la terapia preferida no tiene éxito"
* #clarif	"La prescripción requiere una aclaración" "Se requiere una aclaración antes de que la orden pueda ser realizada"
* #drughigh	"Dosis del fármaco es muy alta" "Los niveles actuales del fármaco en el sistema del paciente son muy altos. El fármaco es suspendido para permitir que los niveles disminuyan hasta un nivel seguro"
* #hospadm	"Admisión a hospital" "El paciente ha sido ingresado a un centro asistencial y su medicación comunitaria será suspendida hasta el alta hospitalaria"
* #labint	"Interferencia con exámenes de laboratorio" "La terapia podría interferir con un exámen de laboratorio planificado, por lo que se suspende la terapia hasta que el exámen se realice"
* #non-avail	"Paciente no disponible" "Paciente no disponible por un período de tiempo debido a una terapia programada, permiso de ausencia u otra razón"
* #preg	"Paciente embarazada/amamantando" "La paciente está embarazada o amamantando. La terapia se continuará cuando se complete el embarazo, y la paciente deje de amamantar."
* #salg "Alergia" "Se sospecha que el paciente es alérgico a una sustancia que forma parte de la terapia, por lo que ésta será temporalmente suspendida para confirmar"
* #sddi	"Fármaco interactúa con otro fármaco" "El fármaco interactúa con un tratamiento a corto plazo que es requerido con mayor urgencia. Esta orden será retomada cuando el tratamiento a corto plazo se complete."
* #sdupther	"Terapia duplicada" "El fármaco interactúa con un tratamiento a corto plazo que es requerido con mayor urgencia. Esta orden será retomada cuando el tratamiento a corto plazo se complete."
* #sintol	"Sospecha de intolerancia" "El fármaco interactúa con un tratamiento a corto plazo que es requerido con mayor urgencia. Esta orden será retomada cuando el tratamiento a corto plazo se complete."
* #surg	"Paciente programado para cirugía" "El fármaco está contraindicado para pacientes que se someten a cirugía y para pacientes que estén programados para ser admitidos para cirugía en un futuro próximo. El tratamiento se reanudará cuando el paciente se haya recuperado suficientemente de la cirugía."
* #washout	"En espera de eliminación de fármaco previo" "El paciente estaba recibiendo un fármaco que está contraindicado con su medicación actual. La medicación actual se mantendrá en espera hasta que el fármaco anterior haya sido eliminado de su sistema"
* #otra "Otra" "Otra razón no considerada en el listado"


ValueSet: VSCodificacionCategoria
Id: VSCodificacionCategoria 
Description: "Estado de una prescripción"
Title: "Codificación de la categoría de una prescripción"
* insert MetadataVSCS
* include codes from system CSCodificacionCategoria

CodeSystem: CSCodificacionCategoria
Id: CSCodificacionCategoria
Description: "Estado de una prescripción"
Title: "Codificación del estado de una prescripción"
* insert MetadataVSCS
* ^caseSensitive = true

* #inpatient    "Hospitalizado" "Incluye solicitudes de medicamentos para ser administrados o consumidos en contexto de hospitalización o cuidados primarios"
* #outpatient   "Ambulatorio" "Incluye solicitudes de medicamentos para ser administrados o consumidos en el contexto ambulatorio (por ejemplo, departamento de urgencia, clínica ambulatoria, cirugía ambulatoria, oficina del doctor)"
* #community    "community" "Incluye solicitudes de medicamentos para ser administrados o consumidos por el paciente en su hogar (esto incluiría cuidados a largo plazo u hogares de ancianos, asilos, etc.)"
* #discharge    "Alta" "Incluye solicitudes de medicamentos creadas cuando el paciente es dado de alta de un centro"

ValueSet: VSCodificacionPatron
Id: VSCodificacionPatron
Title: "Patrón de la Prescripción"
Description: "Codificación del patrón de administración de una prescripción"
* insert MetadataVSCS
* include codes from system CSCodificacionPatron

CodeSystem: CSCodificacionPatron
Id: CSCodificacionPatron
Title: "Patrón de la Prescripción"
Description: "Codificación del patrón de administración de una prescripción"
* insert MetadataVSCS
* ^caseSensitive = true

* #continuous	"Terapia continua a largo plazo" "Una medicación que se espera sea continuada más allá de la presente orden y que el paciente debe tomar a menos que explicitamente se le indique lo contrario"
* #acute	"Terapia a corto plazo (aguda)" "Una medicación que se espera que el paciente consuma solo por la duración de la presente orden y no se espera que sea renovada"
* #seasonal	"Por temporada" "Una medicación que se espera sea usada a tiempo parcial en ciertos momentos del año"

ValueSet: VSRazonEstadoDispensacion
Id: VSRazonEstadoDispensacion
Title: "Razón del cambio de estado (Dispensación)"
Description: "Códigos que indican la razón por la cual una Dispensación ha cambiado su estado"
* insert MetadataVSCS
* include codes from system CSRazonEstadoDispensacion

CodeSystem: CSRazonEstadoDispensacion
Id: CSRazonEstadoDispensacion
Title: "Razón del cambio de estado (Dispensación)"
Description: "Códigos que indican la razón por la cual una Dispensación ha cambiado su estado"
* insert MetadataVSCS
* ^caseSensitive = true

* #frr01	"Orden detenida"    "Esta orden fue detenida por el prescriptor pero no necesariamente por medios electrónicos. Ejemplos: Detención verbal, un fax, etc."
* #frr02	"Orden caducada"    "Orden no fue completada dentro de un periodo razonable de tiempo, y podría no estar vigente."
* #frr03	"Información incompleta"	"La información necesaria para ejecutar de forma segura la orden que se esperaba estuviese disponible independiente de la orden aún no está disponible. Ejemplo: Resultados de laboratorio, diagnóstico por imágenes, etc."
* #frr04	"Producto no disponible"	"Producto no disponible o no manufacturado. No se puede proveer."
* #frr06	"Incapaz de proporcionar cuidados"	"Realizador no es capaz de proveer el cuidado necesario asociado con el cumplimiento de la orden. Ejemplo: La terapia requiere monitoreo constante por el realizador y el realizador estará terminando su práctica, dejando la ciudad, incapaz de dedicar el tiempo necesario, etc."
* #altchoice	"Primero probar otro tratamiento"	"Esta terapia ha sido definida como respaldo de una terapia de elección. Esta orden será liberada cuando y si la terapia de elección fracasa."
* #clarif	"La prescripción requiere una aclaración"	"Se requiere una aclaración antes de que la orden pueda ser realizada"
* #drughigh	"Dosis del fármaco es muy alta"	"Los niveles actuales del fármaco en el sistema del paciente son muy altos. El fármaco es suspendido para permitir que los niveles disminuyan hasta un nivel seguro"
* #hospadm	"Admisión a hospital"	"El paciente ha ingresado a un centro asistencial y su medicación comunitaria será suspendido hasta el egreso hospitalario"
* #labint	"Interferencia con exámenes de laboratorio""La terapia podría interferir con un exámen de laboratorio planeado, por lo que se suspende la terapia hasta que el examen se realice"
* #non-avail	"Paciente no disponible"	"Paciente no disponible por un período de tiempo debido a una terapia programada, permiso de ausencia u otra razón"
* #preg	"Paciente embarazada/amamantando" 	"La paciente está embarazada o amamantando. La terapia se continuará cuando se complete el embarazo y la paciente deje de amamantar."
* #saig	"Alergia"   "Se sospecha que el paciente es alérgico a una sustancia que es parte de la terapia y la terapia será temporalmente suspendida para confirmar"
* #sddi	"Fármaco interactúa con otro fármaco"	"El fármaco interactúa con un tratamiento a corto plazo que es requerido con mayor urgencia. Esta orden será retomada cuando el tratamiento a corto plazo se complete."
* #sdupther	"Terapia duplicada"	"El fármaco interactúa con un tratamiento a corto plazo que es requerido con mayor urgencia. Esta orden será retomada cuando el tratamiento a corto plazo se complete."
* #sintol	"Intolerancia sospechada"	"El fármaco interactúa con un tratamiento a corto plazo que es requerido con mayor urgencia. Esta orden será retomada cuando el tratamiento a corto plazo se complete."
* #surg	"Paciente programado para cirugía"	"Este fármaco está contraindicado en pacientes que serán sometidos a cirugía y el paciente está programado para recibir una cirugía en el futuro cercano. El fármaco será retomado una vez que el paciente se haya recuperado lo suficiente de la cirugía"
* #washout	"En espera de eliminación de fármaco previo"	"El paciente estaba recibiendo un fármaco que está contraindicado con su medicación actual. La medicación actual se mantendrá en espera hasta que el fármaco anterior haya sido eliminado de su sistema"
* #outofstock	"Fármaco no disponible - Sin stock"	"Fármaco sin stock. No se puede proveer."
* #offmarket	"Fármaco no disponible - Fuera del mercado"	"Fármaco ya no se vende. No se puede proveer."

ValueSet: VSUnidadAsistencial
Id: VSUnidadAsistencial
Title: "Unidad Asistencial"
Description: "Unidad para dosificar"
* insert MetadataVSCS
* include codes from system CSUnidadAsistencial

CodeSystem: CSUnidadAsistencial
Id: CSUnidadAsistencial
Title: "Unidad Asistencial"
Description: "Unidad para dosificar"
* insert MetadataVSCS
* ^caseSensitive = true

* #mililitro "Mililitro"
* #comprimido "Comprimido"
* #miligramo "Miligramo"
* #unidades "Unidades"
* #capsula "Cápsula"
* #aplicacion "Aplicación"
* #supositorio "Supositorio"
* #ampolla "Ampolla"
* #sobre "Sobre"
* #gotas "Gotas"
* #dosis "Dosis"
* #aposito "Apósito"
* #parche "Parche"
* #microgramo "Microgramo"
* #frasco "Frasco"
* #unidades-internacionales "Unidades Internacionales"
* #puff "Puff"
* #bidon "Bidón"
* #bolsa "Bolsa"
* #gramo "Gramo"
* #dispositivo "Dispositivo"
* #ovulo "Óvulo"
* #vial "Vial"
* #implante "Implante"
* #anillo-vaginal "Anillo Vaginal"
* #chicle "Chicle"
* #tarro "Tarro"
* #aplicador "Aplicador"
* #jeringa-prellenada "Jeringa Prellenada"
* #gragea "Gragea"
* #cartucho "Cartucho"
* #globulo "Glóbulo"


ValueSet: VSViasAdmin
Id: VSViasAdmin
Title: "Vías de Administración"
Description:  "Vías de Administración de SNOMED-CT utilizadas para el Sistema Nacional de Receta Electrónica"
* insert MetadataVSCS
* codes from system CSViasAdmin

CodeSystem: CSViasAdmin
Id: CSViasAdmin
Title: "Vías de Administración"
Description:  "Vías de Administración de SNOMED-CT utilizadas para el Sistema Nacional de Receta Electrónica"
* insert MetadataVSCS
* ^caseSensitive = true

* #26643006 "vía Oral route (calificador)"
* #46713006 "vía de administración en cavidad nasal (calificador)"
* #404820008 "vía de administración en el espacio epidural que rodea a la duramadre (calificador)"
* #418136008 "vía de administración a través de estoma gastrointestinal (calificador)"
* #127490009 "vía de administración a través de gastrostomía (calificador)"
* #127491008 "vía de administración a través de yeyunostomía (calificador)"
* #58100008 "vía de administración intrarterial (calificador)"
* #12130007	"vía de administración en una articulación (calificador)"
* #372461007 "vía de administración en lesión cavernosa (calificador)"
* #372461008 "vía de administración en lesión cavernosa (calificador)"
* #372464004 "vía de administración en la dermis (calificador)"
* #78421000	"vía de administración intramuscular (calificador)"
* #38239002 "vía de administración en la cavidad peritoneal (calificador)"
* #72607000	"vía de administración en el espacio subaracnoideo (calificador)"
* #418892005 "vía de administración en cisterna magna (calificador)"
* #420719007 "vía de administración en ventrículo cerebral (calificador)"
* #62226000 "vía de administración en la cavidad uterina (calificador)"
* #47625008 "vía de administración intravenosa (calificador)"
* #372471009 "vía de administración en la cavidad de la vejiga (calificador)"
* #54485002	"vía de administración oftálmica (calificador)"
* #10547007	"vía de administración a través del oído (calificador)"
* #37161004 "vía de administración en el recto (calificador)"
* #127492001 "vía de administración a través de la nariz hasta el estómago (calificador)"
* #34206005	"vía de administración subcutánea (calificador)"
* #37839007 "vía de administración por debajo de la lengua (calificador)"
* #6064005 "vía de administración tópica (calificador)"
* #45890007 "vía de administración a través de la dermis (calificador)"
* #418511008 "vía de administración a través de la uretra (calificador)"
* #16857009 "vía de administración por la vagina (calificador)"
* #418722009 "vía de administración alrededor del globo ocular (calificador)"
* #419762003 "vía de administración alrededor de un tendón (calificador)"
* #418813001 "vía de administración a través de drenaje quirúrgico (calificador)"
* #372458006 "vía de administración en la cavidad amniótica (calificador)"
* #419894000 "vía de administración en cavidad quirúrgica (calificador)"
* #418162004 "vía de administración a través de colostomía (calificador)"
* #418418000 "vía de administración en columna vertebral (calificador)"
* #372460008 "vía de administración en el corazón (calificador)"
* #419243002 "vía de administración a través del cuello uterino (calificador)"
* #448598008 "vía de administración cutánea (calificador)"
* #445769006 "vía de administración en el cuerpo cavernoso (calificador)"
* #372449004 "vía de administración dental (calificador)"
* #372457001 "vía de administración en la encía (calificador)"
* #417985001 "vía de administración enteral (calificador)"
* #420163009 "vía de administración a través de esofagostomía (calificador)"
* #697971008 "vía de administración a través de fístula arteriovenosa (calificador)"
* #447121004 "vía de administración en la glándula mamaria (calificador)"
* #766790006 "vía de hemodiálisis extracorpórea (calificador)"
* #418401004 "vía de administración en el humor vítreo (calificador)"
* #419954003 "vía de administración a través de ileostomía (calificador)"
* #372459003 "vía de administración en una bolsa serosa (calificador)"
* #58771000052103 "vía intracolangiopancreática (calificador)"
* #429817007 "vía de administración en el intersticio de un tejido (calificador)"
* #418608002 "vía de administración en la córnea (calificador)"
* #711360002 "vía intraneural (calificador)"
* #446442000 "vía de administración a través de la placenta (calificador)"
* #60213007	"vía de administración en médula ósea (calificador)"
* #418730005 "vía de administración a través de la nariz hasta el yeyuno (calificador)"
* #428191002 "vía de administración a través de la piel (calificador)"
* #372474001 "vía de administración en tejidos que rodean una articulación (calificador)"
* #445771006 "vía de administración en pericardio (calificador)"
* #372475000 "vía de administración en el tejido que rodea a un nervio (calificador)"
* #420047004 "vía de administración en el periostio (calificador)"
* #372469009 "vía de administración en pleura o espacio pleural (calificador)"
* #418321004 "vía de administración retrobulbar (calificador)"
* #58831000052108 "vía subretiniana (calificador)"
* #447081004 "vía de administración en el tracto respiratorio inferior (calificador)"
* #447227007 "vía de administración a través del tímpano (calificador)"
* #447122006 "vía de administración en un tumor (calificador)"
* #420168000 "vía de administración a través urostomía (calificador)"
* #372463005 "vía de administración en vaso coronario (calificador)"
* #372467006 "vía de administración en vaso o ganglio linfático (calificador)"
* #404819002 "vía de administración en la bilis o las vías biliares (calificador)"

ValueSet: VSMetodos
Id: VSMetodos
Title: "Métodos de Administración"
Description: "Métodos de Administración de SNOMED-CT utilizados para el proyecto de receta electrónica"
* insert MetadataVSCS
* codes from system CSMetodos

CodeSystem: CSMetodos
Id: CSMetodos
Title: "Métodos de Administración"
Description: "Métodos de Administración de SNOMED-CT utilizados para el proyecto de receta electrónica"
* insert MetadataVSCS
* ^caseSensitive = true

* #738991002 "Aplicación (método de administración)"
* #740685003 "Inyección (método de administración)"
* #738990001 "Administración (método de administración)"
* #785900008 "Enjuague o lavado (método de administración)"
* #764794000 "Infusión (método de administración)"
* #740666001 "Inhalación (método de administración)"
* #738994005 "Instilación (método de administración)"
* #738993004 "Inserción (método de administración)"
* #738996007 "Aerosolización (método de administración)"
* #738995006 "Tragar (método de administración)"
* #738992009 "Masticar (método de administración)"
* #764498003 "Chupar (método de administración)"
* #823034001 "Orodispersión (método de administración)"
* #827107003 "Implante (método de administración)"


ValueSet: VSTipoPrescripcion
Id: VSTipoPrescripcion
Title: "Tipo de Prescripción"
Description: "Identifica el tipo de Prescripción"
* insert MetadataVSCS
* codes from system CSTipoPrescripcion

CodeSystem: CSTipoPrescripcion
Id: CSTipoPrescripcion
Title: "Tipo de Prescripción"
Description: "Identifica el tipo de Prescripción"
* insert MetadataVSCS
* ^caseSensitive = true

* #Id_Local "Id_Local"
* #Id_Cheque "Id_Cheque"
* #Id_Receta_Grafica "Id_Receta_Grafica"

ValueSet: VSFuncionProfesionalDispensacion
Id: VSFuncionProfesionalDispensacion
Title: "Funcion del Personal"
Description: "Funcion del Personal. Puede ser Dispensador o Validador"
* insert MetadataVSCS
* codes from system CSFuncionProfesionalDispensacion

CodeSystem: CSFuncionProfesionalDispensacion
Id: CSFuncionProfesionalDispensacion
Title: "Funcion del Personal"
Description: "Funcion del Personal. Puede ser Dispensador o Validador"
* insert MetadataVSCS
* ^caseSensitive = true

* #Dispensador "Dispensador"
* #Validador "Validador"

