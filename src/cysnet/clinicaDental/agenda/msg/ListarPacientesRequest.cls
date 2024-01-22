Class cysnet.clinicaDental.agenda.msg.ListarPacientesRequest Extends Ens.Request
{

Property mostrarBajas As %Boolean;

Storage Default
{
<Data name="ListarPacientesRequestDefaultData">
<Subscript>"ListarPacientesRequest"</Subscript>
<Value name="1">
<Value>mostrarBajas</Value>
</Value>
</Data>
<DefaultData>ListarPacientesRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
