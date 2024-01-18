Class cysnet.clinicaDental.agenda.ws.GestionPacientes Extends EnsLib.SOAP.Service [ ProcedureBlock ]
{

/// Nombre de servicio web.
Parameter SERVICENAME = "GestionPacientes";

/// Namespace SOAP para servicio web
Parameter NAMESPACE = "BOOTCAMPENERO24";

/// Se utilizarán namespaces de clases referenciadas en WSDL.
Parameter USECLASSNAMESPACES = 1;

Method nuevoPaciente(nombre As %String, apellidos As %String, email As %String) As cysnet.clinicaDental.agenda.msg.NuevoPacienteResponse [ WebMethod ]
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

}
