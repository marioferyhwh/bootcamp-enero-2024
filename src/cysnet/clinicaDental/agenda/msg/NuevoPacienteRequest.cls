Class cysnet.clinicaDental.agenda.msg.NuevoPacienteRequest Extends Ens.Request
{

Property nombre As %String;

Property apellidos As %String;

Property email As %String;

Storage Default
{
<Data name="NuevoPacienteRequestDefaultData">
<Subscript>"NuevoPacienteRequest"</Subscript>
<Value name="1">
<Value>nombre</Value>
</Value>
<Value name="2">
<Value>apellidos</Value>
</Value>
<Value name="3">
<Value>email</Value>
</Value>
</Data>
<DefaultData>NuevoPacienteRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
