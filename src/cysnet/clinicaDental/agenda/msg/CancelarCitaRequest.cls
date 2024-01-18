Class cysnet.clinicaDental.agenda.msg.CancelarCitaRequest Extends Ens.Request
{

Property idCita As %Integer;

Storage Default
{
<Data name="CancelarCitaRequestDefaultData">
<Subscript>"CancelarCitaRequest"</Subscript>
<Value name="1">
<Value>idCita</Value>
</Value>
</Data>
<DefaultData>CancelarCitaRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
