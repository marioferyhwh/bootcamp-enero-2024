Class cysnet.clinicaDental.agenda.msg.ListarCitasResponse Extends Ens.Response
{

Property citas As list Of cysnet.clinicaDental.agenda.data.Citas;

Property mensaje As %String;

Storage Default
{
<Data name="ListarCitawResponseDefaultData">
<Subscript>"ListarCitawResponse"</Subscript>
<Value name="1">
<Value>citas</Value>
</Value>
<Value name="2">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>ListarCitawResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
