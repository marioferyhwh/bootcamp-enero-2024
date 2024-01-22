Class cysnet.clinicaDental.agenda.msg.ListarPacientesResponse Extends Ens.Response
{

Property pacientes As list Of cysnet.clinicaDental.agenda.data.Pacientes;

Property mensaje As %String(MAXLEN = "");

Storage Default
{
<Data name="ListarPacientesResponseDefaultData">
<Subscript>"ListarPacientesResponse"</Subscript>
<Value name="1">
<Value>pacientes</Value>
</Value>
<Value name="2">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>ListarPacientesResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
