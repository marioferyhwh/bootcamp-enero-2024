Class cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDResponse Extends (Ens.Response, cysnet.clinicaDental.agenda.data.Pacientes)
{

Property idPaciente As %Integer;

Property mensaje As %String(MAXLEN = "");

Storage Default
{
<Data name="BuscarPacientePorIDResponseDefaultData">
<Subscript>"BuscarPacientePorIDResponse"</Subscript>
<Value name="1">
<Value>idPaciente</Value>
</Value>
<Value name="2">
<Value>apellidos</Value>
</Value>
<Value name="3">
<Value>email</Value>
</Value>
<Value name="4">
<Value>permiteNotificaciones</Value>
</Value>
<Value name="5">
<Value>baja</Value>
</Value>
<Value name="6">
<Value>nombre</Value>
</Value>
<Value name="7">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>BuscarPacientePorIDResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
