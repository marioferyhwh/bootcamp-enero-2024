Class cysnet.clinicaDental.agenda.msg.BuscarPacientePorIDRequest Extends Ens.Request
{

Property idPaciente As %Integer;

Storage Default
{
<Data name="BuscarPacientePorIDRequestDefaultData">
<Subscript>"BuscarPacientePorIDRequest"</Subscript>
<Value name="1">
<Value>idPaciente</Value>
</Value>
</Data>
<DefaultData>BuscarPacientePorIDRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
