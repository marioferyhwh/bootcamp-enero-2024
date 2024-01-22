Class cysnet.clinicaDental.notificaciones.bo.NotificacionesSQL Extends Ens.BusinessOperation
{

Method GenerarNotificacion(pRequest As cysnet.clinicaDental.notificaciones.msg.GenerarNotificacionRequest, Output pResponse As cysnet.clinicaDental.notificaciones.msg.GenerarNotificacionResponse) As %Status
{
  Set pResponse = ##class(cysnet.clinicaDental.notificaciones.msg.GenerarNotificacionResponse).%New()
  Set pResponse.mensaje = "Se notifica paciente:"_pRequest.idPaciente
  
  
    &sql(INSERT INTO cysnet_clinicaDental_notificaciones_data.Notificaciones (idPaciente,asunto,mensaje,indEnviado)
    VALUES (:pRequest.idPaciente,:pRequest.asunto,:pRequest.mensaje,0))
  
  Return $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="cysnet.clinicaDental.notificaciones.msg.GenerarNotificacionRequest">
        <Method>GenerarNotificacion</Method>
    </MapItem>
</MapItems>
}

}
