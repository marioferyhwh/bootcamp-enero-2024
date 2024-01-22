Class cysnet.clinicaDental.agenda.bo.AltasSQL Extends Ens.BusinessOperation
{

Method ExisteAdmision(idCita As %Integer) As %Boolean
{
    #dim stm As %SQL.Statement
    #dim rs As %SQL.StatementResult

    Set stm = ##class(%SQL.Statement).%New()
    Do stm.%Prepare("SELECT ID FROM cysnet_clinicaDental_agenda_data.Admisiones WHERE idCita = ?")

    Set rs = stm.%Execute(idCita)
    Return rs.%Next()
}

/// dar de alta  el paciente
Method AltaPaciente(pRequest As cysnet.clinicaDental.agenda.msg.AltaPacienteRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.AltaPacienteResponse) As %Status
{
  Set pResponse = ##class(cysnet.clinicaDental.agenda.msg.AltaPacienteResponse).%New()

  If (..ExisteAdmision(pRequest.idCita)) {
    Set pResponse.mensaje = "Se da de alta para la cita :"_pRequest.idCita
    &sql(INSERT INTO cysnet_clinicaDental_agenda_data.Altas (idCita,fechaAlta,indEnviada)
    VALUES (:pRequest.idCita,now(),0))
  } Else {
    Set pResponse.mensaje = "No existe un admicion vigente para la cita :"_pRequest.idCita
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
