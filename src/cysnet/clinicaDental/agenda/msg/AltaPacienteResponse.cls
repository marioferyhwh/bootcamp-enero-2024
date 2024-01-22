Class cysnet.clinicaDental.agenda.msg.AltaPacienteResponse Extends Ens.Response
{

Property mensaje As %String(MAXLEN = "");

Storage Default
{
<Data name="AltaPacienteResponseDefaultData">
<Subscript>"AltaPacienteResponse"</Subscript>
<Value name="1">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>AltaPacienteResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
