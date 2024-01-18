Class cysnet.clinicaDental.notificaciones.data.Notificaciones Extends %Persistent
{

Property idPaciente As %Integer;

Property asunto As %String(MAXLEN = "");

Property mensaje As %String(MAXLEN = "");

Property indEnviado As %Integer;

Storage Default
{
<Data name="NotificacionesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>idPaciente</Value>
</Value>
<Value name="3">
<Value>asunto</Value>
</Value>
<Value name="4">
<Value>mensaje</Value>
</Value>
<Value name="5">
<Value>indEnviado</Value>
</Value>
</Data>
<DataLocation>^cysnet.clinC49B.NotificacionesD</DataLocation>
<DefaultData>NotificacionesDefaultData</DefaultData>
<IdLocation>^cysnet.clinC49B.NotificacionesD</IdLocation>
<IndexLocation>^cysnet.clinC49B.NotificacionesI</IndexLocation>
<StreamLocation>^cysnet.clinC49B.NotificacionesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
