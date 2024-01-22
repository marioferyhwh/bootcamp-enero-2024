Class cysnet.clinicaDental.notificaciones.msg.GenerarNotificacionResponse Extends Ens.Response
{

Property mensaje As %String(MAXLEN = "");

Storage Default
{
<Data name="GenerarNotificacionResponseDefaultData">
<Subscript>"GenerarNotificacionResponse"</Subscript>
<Value name="1">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>GenerarNotificacionResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
