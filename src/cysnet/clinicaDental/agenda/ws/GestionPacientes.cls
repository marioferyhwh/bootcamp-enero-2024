Class cysnet.clinicaDental.agenda.ws.GestionPacientes Extends EnsLib.SOAP.Service [ ProcedureBlock ]
{

/// Nombre de servicio web.
Parameter SERVICENAME = "GestionPacientes";

/// Namespace SOAP para servicio web
Parameter NAMESPACE = "BOOTCAMPENERO24";

/// Se utilizarán namespaces de clases referenciadas en WSDL.
Parameter USECLASSNAMESPACES = 1;

/// Método para crear nuevo paciente
Method NuevoPaciente(nombre As %String, apellidos As %String, email As %String) As cysnet.clinicaDental.agenda.msg.NuevoPacienteResponse [ WebMethod ]
{
	#dim req As cysnet.clinicaDental.agenda.msg.NuevoPacienteRequest
	#dim rsp As cysnet.clinicaDental.agenda.msg.NuevoPacienteResponse
	
	Set req = ##class(cysnet.clinicaDental.agenda.msg.NuevoPacienteRequest).%New()
	Set req.apellidos = apellidos
	Set req.email = email
	Set req.nombre = nombre
	
	Do ..SendRequestSync("PacientesSQL", req, .rsp)
	
	Quit rsp
}

/// baja de paciente
Method BajaPaciente(ID As %Integer) As cysnet.clinicaDental.agenda.msg.BajaPacienteResponse [ WebMethod ]
{
	#dim req As cysnet.clinicaDental.agenda.msg.BajaPacienteRequest
	#dim rsp As cysnet.clinicaDental.agenda.msg.BajaPacienteResponse
	
	Set req = ##class(cysnet.clinicaDental.agenda.msg.BajaPacienteRequest).%New()
	Set req.ID = ID
	
	Do ..SendRequestSync("PacientesSQL", req, .rsp)
	
	Quit rsp
}

/// modifica paciente
Method ModificarPaciente(ID As %Integer, nombre As %String, apellidos As %String, email As %String, permiteNotificaciones As %Boolean) As cysnet.clinicaDental.agenda.msg.ModificarPacienteResponse [ WebMethod ]
{
	#dim req As cysnet.clinicaDental.agenda.msg.ModificarPacienteRequest
	#dim rsp As cysnet.clinicaDental.agenda.msg.ModificarPacienteResponse
	
	Set req = ##class(cysnet.clinicaDental.agenda.msg.ModificarPacienteRequest).%New()
	Set req.ID = ID
	Set req.apellidos = apellidos
	Set req.email = email
	Set req.nombre = nombre
	Set req.permiteNotificaciones = permiteNotificaciones
	
	Do ..SendRequestSync("PacientesSQL", req, .rsp)
	
	Quit rsp
}

/// Método que obtiene los datos de un paciente a partir de su ID
Method buscarPacientePorID(idPaciente As %Integer) As cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDResponse [ WebMethod ]
{
	#dim req As cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDRequest
	#dim rsp As cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDResponse
	
	Set req = ##class(cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDRequest).%New()
	Set req.idPaciente = idPaciente
  
	Do ..SendRequestSync("PacientesSQL", req, .rsp)

	Quit rsp
}

}
