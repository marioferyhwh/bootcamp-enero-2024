Class cysnet.clinicaDental.agenda.bo.CitasSQL Extends Ens.BusinessOperation
{

/// Método para cancelar una cita
Method cancelarCita(pRequest As cysnet.clinicaDental.agenda.msg.ModificarCitaRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.CancelarCitaResponse) As %Status
{
    set pResponse = ##class(cysnet.clinicaDental.agenda.msg.CancelarCitaResponse).%New()

    set stm = ##class(%SQL.Statement).%New()
    do stm.%Prepare("SELECT ID FROM cysnet_clinicaDental_agenda_data.Citas WHERE ID = "_pRequest.idCita)

    set rs = stm.%Execute()

    if (rs.%Next()) {
        &sql(UPDATE cysnet_clinicaDental_agenda_data.Citas SET codEstado = 4 WHERE ID = :pRequest.idCita)
        set pResponse.mensaje = "Cita cancelada"
    } else {
        set pResponse.mensaje = "No se encontró la cita"
    }
    
    quit $$$OK
}

/// Método para cancelar una cita
Method modificarCita(pRequest As cysnet.clinicaDental.agenda.msg.ModificarCitaRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.ModificarCitaResponse) As %Status
{
    set pResponse = ##class(cysnet.clinicaDental.agenda.msg.ModificarCitaResponse).%New()

    set stm = ##class(%SQL.Statement).%New()
    do stm.%Prepare("SELECT ID FROM cysnet_clinicaDental_agenda_data.Citas WHERE ID = "_pRequest.idCita)

    set rs = stm.%Execute()

    if (rs.%Next()) {
        &sql(UPDATE cysnet_clinicaDental_agenda_data.Citas SET fechaCita = :pRequest.fechaCita WHERE ID = :pRequest.idCita)
        set pResponse.mensaje = "Cita actualizada"
    } else {
        set pResponse.mensaje = "No se encontró la cita"
    }
    
    quit $$$OK
}

Method listarCitas(pRequest As cysnet.clinicaDental.agenda.msg.ListarCitasRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.ListarCitasResponse) As %Status
{
    set pResponse = ##class(cysnet.clinicaDental.agenda.msg.ListarCitasResponse).%New()
    set pResponse.citas = ##class(%ListOfObjects).%New()
    
    set stm = ##class(%SQL.Statement).%New()
    do stm.%Prepare("SELECT ID, codEstado, descCita, fechaCita FROM cysnet_clinicaDental_agenda_data.Citas WHERE idPaciente = "_pRequest.idPaciente )

    set rs = stm.%Execute()
    
    while (rs.%Next()) {
	    set cita = ##class(cysnet.clinicaDental.agenda.data.Citas).%New()
	    set cita.fechaCita = rs.fechaCita
        set cita.descCita = rs.descCita
        set cita.codEstado = rs.codEstado

	    do pResponse.citas.Insert(cita)
	    kill cita
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
    <MapItem MessageType="cysnet.clinicaDental.agenda.msg.ModificarCitaRequest">
        <Method>modificarCita</Method>
    </MapItem>
        <MapItem MessageType="cysnet.clinicaDental.agenda.msg.ListarCitasRequest">
        <Method>listarCitas</Method>
    </MapItem>
     <MapItem MessageType="cysnet.clinicaDental.agenda.msg.AltaCitasRequest">
        <Method>altaCitas</Method>
    </MapItem>
</MapItems>
}

}
