Class cysnet.clinicaDental.agenda.msg.ModificarCitaResponse Extends Ens.Response
{

Property mensaje As %String(MAXLEN = "");

Storage Default
{
<Data name="ModificarCitaResponseDefaultData">
<Subscript>"ModificarCitaResponse"</Subscript>
<Value name="1">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>ModificarCitaResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
