Class cysnet.clinicaDental.agenda.bo.AdmisionesSQL Extends Ens.BusinessOperation
{

Method ExisteAdmision(pRequest As cysnet.clinicaDental.agenda.msg.ExisteAdmisionRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.ExisteAdmisionResponse) As %Status
{
  #dim stm As %SQL.Statement
  #dim rs As %SQL.StatementResult
  
  Set pResponse = ##class(cysnet.clinicaDental.agenda.msg.ExisteAdmisionResponse).%New()
  Set pResponse.existe = 0

  Set stm = ##class(%SQL.Statement).%New()
  Do stm.%Prepare("SELECT ID FROM cysnet_clinicaDental_agenda_data.Admisiones WHERE idCita = ?")

  Set rs = stm.%Execute(pRequest.idCita)
  If (rs.%Next()){
    Set pResponse.existe = 1
  }
  Return $$$OK
}

/// admitir el paciente
Method AdmitirPaciente(pRequest As cysnet.clinicaDental.agenda.msg.AdmitirPacienteRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.AdmitirPacienteResponse) As %Status
{
  Set pResponse = ##class(cysnet.clinicaDental.agenda.msg.AdmitirPacienteResponse).%New()
  
  Set pResponse.mensaje = "Se crea admision"
  &sql(INSERT INTO cysnet_clinicaDental_agenda_data.Admisiones (idCita,fechaAdmision,indEnviada)
  VALUES (:pRequest.idCita,now(),0))
  Return $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="cysnet.clinicaDental.agenda.msg.AdmitirPacienteRequest">
        <Method>AdmitirPaciente</Method>
    </MapItem>
    <MapItem MessageType="cysnet.clinicaDental.agenda.msg.ExisteAdmisionRequest">
        <Method>ExisteAdmision</Method>
    </MapItem>
</MapItems>
}

}
