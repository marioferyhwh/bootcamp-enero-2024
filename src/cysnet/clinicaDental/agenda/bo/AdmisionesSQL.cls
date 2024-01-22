Class cysnet.clinicaDental.agenda.bo.AdmisionesSQL Extends Ens.BusinessOperation
{

/// actualizar el paciente
Method AdmitirPaciente(pRequest As cysnet.clinicaDental.agenda.msg.AdmitirPacienteRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.AdmitirPacienteResponse) As %Status
{
  #dim stm As %SQL.Statement
  #dim rs As %SQL.StatementResult
  
  Set pResponse = ##class(cysnet.clinicaDental.agenda.msg.AdmitirPacienteResponse).%New()
  
  Set stm = ##class(%SQL.Statement).%New()
  Do stm.%Prepare("SELECT ID FROM cysnet_clinicaDental_agenda_data.Admisiones WHERE idCita = ? ")

  Set rs = stm.%Execute(pRequest.idCita)
  If (rs.%Next()) {
    Set pResponse.mensaje = "Ya existe un adminsion"
  } Else {
    Set pResponse.mensaje = "Se crea admision"
    &sql(INSERT INTO cysnet_clinicaDental_agenda_data.Admisiones (idCita,fechaAdmision,indEnviada)
    VALUES (:pRequest.idCita,now(),0))
  }
  Return $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="cysnet.clinicaDental.agenda.msg.AdmitirPacienteRequest">
        <Method>AdmitirPaciente</Method>
    </MapItem>
</MapItems>
}

}
