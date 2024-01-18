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

XData MessageMap
{
<MapItems>
    <MapItem MessageType="cysnet.clinicaDental.agenda.msg.NuevoPacienteRequest">
        <Method>nuevoPaciente</Method>
    </MapItem>

</MapItems>
}

}
