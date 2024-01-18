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

}
