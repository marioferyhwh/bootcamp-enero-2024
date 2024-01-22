Class cysnet.clinicaDental.agenda.msg.ListarCitasRequest Extends Ens.Request
{

Property idPaciente As %Integer;

Property mostrarCanceladas As %Boolean;

Storage Default
{
<Data name="ListarCitasRequestDefaultData">
<Subscript>"ListarCitasRequest"</Subscript>
<Value name="1">
<Value>idPaciente</Value>
</Value>
<Value name="2">
<Value>mostrarCanceladas</Value>
</Value>
</Data>
<DefaultData>ListarCitasRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
