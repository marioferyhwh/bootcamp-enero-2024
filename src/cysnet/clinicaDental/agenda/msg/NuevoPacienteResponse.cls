Class cysnet.clinicaDental.agenda.msg.NuevoPacienteResponse Extends Ens.Response
{

Property mensaje As %String(MAXLEN = "");

Storage Default
{
<Data name="NuevoPacienteResponseDefaultData">
<Subscript>"NuevoPacienteResponse"</Subscript>
<Value name="1">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>NuevoPacienteResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
