Class cysnet.clinicaDental.agenda.msg.AltaPacienteRequest Extends Ens.Request
{

Property idCita As %Integer;

Storage Default
{
<Data name="AltaPacienteRequestDefaultData">
<Subscript>"AltaPacienteRequest"</Subscript>
<Value name="1">
<Value>idCita</Value>
</Value>
</Data>
<DefaultData>AltaPacienteRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
