Class cysnet.clinicaDental.agenda.bo.PacientesSQL Extends Ens.BusinessOperation
{

/// Método que obtiene los datos de un paciente a partir de su ID
Method ObtenerPaciente(pRequest As cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDResponse) As %Status
{
    set pResponse = ##class(cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDResponse).%New()

    set stm = ##class(%SQL.Statement).%New()
    do stm.%Prepare("SELECT nombre, apellidos, email, baja, permiteNotificaciones FROM cysnet.clinicaDental.agenda.data.Pacientes WHERE ID = "_pRequest.idPaciente)

    set rs = stm.%Execute()

    if (rs.%Next()) {
        set pResponse.nombre = rs.nombre
        set pResponse.apellidos = rs.apellidos
        set pResponse.email = rs.email
        set pResponse.baja = rs.baja
        set pResponse.permiteNotificaciones = rs.permiteNotificaciones
    } else {
        set pResponse.mensaje = "No existen datos para ese identificador ("_pRequest.idPersona_")"
    }
    
    quit $$$OK
}

}
