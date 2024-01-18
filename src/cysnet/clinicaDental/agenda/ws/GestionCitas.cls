Class cysnet.clinicaDental.agenda.ws.GestionCitas Extends EnsLib.SOAP.Service [ ProcedureBlock ]
{

/// Nombre de servicio web.
Parameter SERVICENAME = "GestionCitas";

/// Namespace SOAP para servicio web
Parameter NAMESPACE = "BOOTCAMPENERO24";

/// Se utilizarán namespaces de clases referenciadas en WSDL.
Parameter USECLASSNAMESPACES = 1;

Method cancelarCita(idCita As %Integer) As cysnet.clinicaDental.agenda.msg.CancelarCitaResponse [ WebMethod ]
{
    #dim request As cysnet.clinicaDental.agenda.msg.CancelarCitaRequest
    #dim response As cysnet.clinicaDental.agenda.msg.CancelarCitaResponse

    set request = ##class(cysnet.clinicaDental.agenda.msg.CancelarCitaRequest).%New()
    set request.idCita = idCita

	do ..SendRequestSync("CitasSQL", request, .response)
	
	quit response
}

Method altaCitas(idPaciente As %Integer, descCita As %String, fechaCita As %TimeStamp) As cysnet.clinicaDental.agenda.msg.AltaCitasRespose [ WebMethod ]
{
	#dim req As cysnet.clinicaDental.agenda.msg.AltaCitasRequest
	#dim rsp As cysnet.clinicaDental.agenda.msg.AltaCitasRespose
	
	Set req = ##class(cysnet.clinicaDental.agenda.msg.AltaCitasRequest).%New()
	Set req.idPaciente = idPaciente
    Set req.descCita = descCita
    Set req.fechaCita = fechaCita
	
	Do ..SendRequestSync("CitasSQL", req, .rsp)
	
	Quit rsp
}

}
