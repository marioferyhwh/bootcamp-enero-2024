Class cysnet.clinicaDental.agenda.bo.CitasSQL Extends Ens.BusinessOperation
{

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
      <MapItem MessageType="cysnet.clinicaDental.agenda.msg.AltaCitasRequest">
          <Method>altaCitas</Method>
      </MapItem>
  </MapItems>
}

}
