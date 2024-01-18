Class cysnet.clinicaDental.agenda.ws.GestionCitas Extends EnsLib.SOAP.Service [ ProcedureBlock ]
{

/// Nombre de servicio web.
Parameter SERVICENAME = "GestionCitas";

/// Namespace SOAP para servicio web
Parameter NAMESPACE = "BOOTCAMPENERO24";

/// Se utilizarán namespaces de clases referenciadas en WSDL.
Parameter USECLASSNAMESPACES = 1;

/// Método que obtiene los datos de un paciente a partir de su ID
Method ObtenerPaciente(idPaciente As %Integer) As cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDResponse [ WebMethod ]
{
	#dim req As cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDRequest
	#dim rsp As cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDResponse
	
	Set req = ##class(cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDRequest).%New()
	Set req.idPersona = idPaciente
	
	Do ..SendRequestSync("ObtenerPaciente", req, .rsp)
	
	Quit rsp
}

}
