Class cysnet.clinicaDental.agenda.bo.AltasSQL Extends Ens.BusinessOperation
{

/// dar de alta  el paciente
Method AltaPaciente(pRequest As cysnet.clinicaDental.agenda.msg.AltaPacienteRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.AltaPacienteResponse) As %Status
{
  #dim stm As %SQL.Statement
  #dim rs As %SQL.StatementResult
  
  Set pResponse = ##class(cysnet.clinicaDental.agenda.msg.AltaPacienteResponse).%New()
  
  Set stm = ##class(%SQL.Statement).%New()
  Do stm.%Prepare("SELECT ID FROM cysnet_clinicaDental_agenda_data.Admisiones WHERE idCita = ? ")

  Set rs = stm.%Execute(pRequest.idCita)
  If (rs.%Next()) {
    Set pResponse.mensaje = "No existe un admicion vigente para la cita :"_pRequest.idCita
  } Else {
    Set pResponse.mensaje = "Se crea admision"
    &sql(INSERT INTO cysnet_clinicaDental_agenda_data.Altas (idCita,fechaAlta,indEnviada)
    VALUES (:pRequest.idCita,now(),0))
  }
  Return $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="cysnet.clinicaDental.agenda.msg.AltaPacienteRequest">
        <Method>AltaPaciente</Method>
    </MapItem>
</MapItems>
}

}
