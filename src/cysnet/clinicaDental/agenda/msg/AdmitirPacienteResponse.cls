Class cysnet.clinicaDental.agenda.msg.AdmitirPacienteResponse Extends Ens.Response
{

Property mensaje As %String(MAXLEN = "");

Storage Default
{
<Data name="AdmitirPacienteResponseDefaultData">
<Subscript>"AdmitirPacienteResponse"</Subscript>
<Value name="1">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>AdmitirPacienteResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
