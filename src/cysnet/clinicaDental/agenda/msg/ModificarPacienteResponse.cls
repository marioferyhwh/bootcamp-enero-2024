Class cysnet.clinicaDental.agenda.msg.ModificarPacienteResponse Extends Ens.Response
{

Property mensaje As %String(MAXLEN = "");

Storage Default
{
<Data name="ModificarPacienteResponseDefaultData">
<Subscript>"ModificarPacienteResponse"</Subscript>
<Value name="1">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>ModificarPacienteResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
