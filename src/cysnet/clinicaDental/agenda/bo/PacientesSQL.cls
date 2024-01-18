Class cysnet.clinicaDental.agenda.bo.PacientesSQL Extends Ens.BusinessOperation
{

/// Crear un paciente nuevo
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
  } Else {
    Set pResponse.mensaje = "Se crea"
    &sql(INSERT INTO cysnet_clinicaDental_agenda_data.Pacientes (apellidos,baja,email,nombre,permiteNotificaciones)
    VALUES (:pRequest.apellidos,0,:pRequest.email,:pRequest.nombre,1))
  }
  Return $$$OK
}

/// Método que obtiene los datos de un paciente a partir de su ID
Method buscarPacientePorID(pRequest As cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDResponse) As %Status
{
    Set pResponse = ##class(cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDResponse).%New()

    $$$LOGINFO(pRequest.idPaciente)

    Set stm = ##class(%SQL.Statement).%New()
    Do stm.%Prepare("SELECT ID, nombre, apellidos, email, baja, permiteNotificaciones FROM cysnet_clinicaDental_agenda_data.Pacientes WHERE ID = "_pRequest.idPaciente)

    Set rs = stm.%Execute()

    If (rs.%Next()) {
        Set pResponse.idPaciente = rs.ID
        Set pResponse.nombre = rs.nombre
        Set pResponse.apellidos = rs.apellidos
        Set pResponse.email = rs.email
        Set pResponse.baja = rs.baja
        Set pResponse.permiteNotificaciones = rs.permiteNotificaciones
    } Else {
        Set pResponse.mensaje = "No existen datos para ese identificador ("_pRequest.idPaciente_")"
    }
    
    Quit $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="cysnet.clinicaDental.agenda.msg.NuevoPacienteRequest">
        <Method>nuevoPaciente</Method>
    </MapItem>
    <MapItem MessageType="cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDRequest">
        <Method>buscarPacientePorID</Method>
    </MapItem>

</MapItems>
}

}
