Class cysnet.clinicaDental.agenda.msg.BajaPacienteResponse Extends Ens.Response
{

Property mensaje As %String(MAXLEN = "");

Storage Default
{
<Data name="BajaPacienteResponseDefaultData">
<Subscript>"BajaPacienteResponse"</Subscript>
<Value name="1">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>BajaPacienteResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
