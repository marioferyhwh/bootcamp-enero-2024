Class cysnet.clinicaDental.agenda.bo.CitasSQL Extends Ens.BusinessOperation
{

/// Método para cancelar una cita
Method cancelarCita(pRequest As cysnet.clinicaDental.agenda.msg.CancelarCitaRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.CancelarCitaResponse) As %Status
{
    set pResponse = ##class(cysnet.clinicaDental.agenda.msg.CancelarCitaResponse).%New()

    set stm = ##class(%SQL.Statement).%New()
    do stm.%Prepare("SELECT ID FROM cysnet_clinicaDental_agenda_data.Citas WHERE ID = "_pRequest.idCita)

    set rs = stm.%Execute()

    if (rs.%Next()) {
        &sql(UPDATE cysnet_clinicaDental_agenda_data.Citas SET codEstado = 4 WHERE ID = :pRequest.idCita)
    } else {
        set pResponse.mensaje = "No se encontró la cita"
    }
    
    quit $$$OK
}

Method altaCitas(pRequest As cysnet.clinicaDental.agenda.msg.AltaCitasRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.AltaCitasRespose) As %Status
{
    #dim sc As %Status = $$$OK

    Set stm = ##class(%SQL.Statement).%New()
    Do stm.%Prepare("SELECT * FROM cysnet_clinicaDental_agenda_data.Citas WHERE idPaciente = ?")
    Set rs =  stm.%Execute(pRequest.idPaciente)
    
    If (rs.%Next(.sc)) {
      Quit sc
    }
   
    Set stm = ##class(%SQL.Statement).%New()
    do stm.%Prepare("INSERT INTO cysnet_clinicaDental_agenda_data.Citas (idPaciente, descCita, fechaCita, codEstado) VALUES (?,?,?,?) ")
    Set rs = stm.%Execute(pRequest.idPaciente, pRequest.descCita, pRequest.fechaCita, 1)

        set rs = stm.%Execute()
        quit sc
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="cysnet.clinicaDental.agenda.msg.CancelarCitaRequest">
        <Method>cancelarCita</Method>
    </MapItem>
     <MapItem MessageType="cysnet.clinicaDental.agenda.msg.AltaCitasRequest">
        <Method>altaCitas</Method>
    </MapItem>
</MapItems>
}

}
