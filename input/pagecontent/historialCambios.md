# Cambios realizados a la guia
## Version 0.1.1
- (Nuevo) Se agregan definiciones de los eventos Revisar / Agendar / Referenciada
- (Correción) Se corrige campo obligatorio en extensión OrigenInterconsulta para el recurso ServiceRequest
- (Correción) Se actualiza extensión NacionalidadCodigo en Patient ya que url no era única. 
- (Correción) Se cambia elemento note en "Condicion Inicio 2 LE", este elemento no es obligatorio para este caso. 
- (Correción) Se estandariza valor en QuestionnaireResponse de item.linkId y item.text
- (Eliminación) Se elimina Location como recurso
- (Corrección) Se modifica Patient.telecom, para obligar campos necesarios para la guía.
- (Corrección) En MessageHeader.author se cambia cardinalidad a 1..1
- (Eliminación) Se cambia cardinalidad de Appointment en incicio, debido a eliminación de campo idCita.
