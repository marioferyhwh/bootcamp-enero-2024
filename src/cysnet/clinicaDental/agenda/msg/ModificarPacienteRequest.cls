Class cysnet.clinicaDental.agenda.msg.ModificarPacienteRequest Extends Ens.Request
{

Property ID As %Integer;

Property nombre As %String;

Property apellidos As %String;

Property email As %String;

Property permiteNotificaciones As %Boolean;

Storage Default
{
<Data name="ModificarPacienteRequestDefaultData">
<Subscript>"ModificarPacienteRequest"</Subscript>
<Value name="1">
<Value>nombre</Value>
</Value>
<Value name="2">
<Value>apellidos</Value>
</Value>
<Value name="3">
<Value>email</Value>
</Value>
<Value name="4">
<Value>permiteNotificaciones</Value>
</Value>
<Value name="5">
<Value>ID</Value>
</Value>
</Data>
<DefaultData>ModificarPacienteRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
