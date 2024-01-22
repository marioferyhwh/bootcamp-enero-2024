Class cysnet.clinicaDental.agenda.msg.ListarCitasResponse Extends Ens.Response
{

Property citas As list Of cysnet.clinicaDental.agenda.data.Citas;

Property mensaje As %String(MAXLEN = "");

Storage Default
{
<Data name="ListarCitasResponseDefaultData">
<Subscript>"ListarCitasResponse"</Subscript>
<Value name="1">
<Value>citas</Value>
</Value>
<Value name="2">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>ListarCitasResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
