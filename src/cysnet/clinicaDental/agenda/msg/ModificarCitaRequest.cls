Class cysnet.clinicaDental.agenda.msg.ModificarCitaRequest Extends Ens.Request
{

Property ID As %Integer;

Property fechaCita As %TimeStamp;

Storage Default
{
<Data name="ModificarCitaRequestDefaultData">
<Subscript>"ModificarCitaRequest"</Subscript>
<Value name="1">
<Value>ID</Value>
</Value>
<Value name="2">
<Value>fechaCita</Value>
</Value>
</Data>
<DefaultData>ModificarCitaRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
