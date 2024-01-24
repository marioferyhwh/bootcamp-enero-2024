Class cysnet.clinicaDental.agenda.bo.AltasSQL Extends Ens.BusinessOperation
{

/// dar de alta  el paciente
Method AltaPaciente(pRequest As cysnet.clinicaDental.agenda.msg.AltaPacienteRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.AltaPacienteResponse) As %Status
{
  Set pResponse = ##class(cysnet.clinicaDental.agenda.msg.AltaPacienteResponse).%New()

  Set pResponse.mensaje = "Se da de alta para la cita :"_pRequest.idCita
  &sql(INSERT INTO cysnet_clinicaDental_agenda_data.Altas (idCita,fechaAlta,indEnviada)
  VALUES (:pRequest.idCita,now(),0))

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
