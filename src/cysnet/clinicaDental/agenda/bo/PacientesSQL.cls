Class cysnet.clinicaDental.agenda.bo.PacientesSQL Extends Ens.BusinessOperation
{

/// Description
Method nuevoPaciente(pRequest As cysnet.clinicaDental.agenda.msg.NuevoPacienteRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.NuevoPacienteResponse) As %Status
{
  
  #dim stm As %SQL.Statement
  #dim rs As %SQL.StatementResult
  
  Set pResponse = ##class(cysnet.clinicaDental.agenda.msg.NuevoPacienteResponse).%New()
  
  Set stm = ##class(%SQL.Statement).%New()
  Do stm.%Prepare("SELECT ID FROM cysnet_clinicaDental_agenda_data.Pacientes WHERE email = ? ")

  Set rs = stm.%Execute(pRequest.email)
  If (rs.%Next()) {
    Set pResponse.mensaje = "ya existe"
  }Else{
    Set pResponse.mensaje = "Se crea"
    &sql(INSERT INTO cysnet_clinicaDental_agenda_data.Pacientes (apellidos,baja,email,nombre,permiteNotificaciones)
    VALUES (:pRequest.apellidos,0,:pRequest.email,:pRequest.nombre,1))
  }
  Return $$$OK
}

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

XData MessageMap
{
<MapItems>
    <MapItem MessageType="cysnet.clinicaDental.agenda.msg.NuevoPacienteRequest">
        <Method>nuevoPaciente</Method>
    </MapItem>

</MapItems>
}

}
