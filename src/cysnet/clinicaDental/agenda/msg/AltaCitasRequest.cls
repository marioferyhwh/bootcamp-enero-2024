Class cysnet.clinicaDental.agenda.msg.AltaCitasRequest Extends Ens.Request
{

Property idPaciente As %Integer;

Property descCita As %String;

Property fechaCita As %TimeStamp;

Storage Default
{
<Data name="AltaCitasRequestDefaultData">
<Subscript>"AltaCitasRequest"</Subscript>
<Value name="1">
<Value>idPaciente</Value>
</Value>
<Value name="2">
<Value>descCita</Value>
</Value>
<Value name="3">
<Value>fechaCita</Value>
</Value>
</Data>
<DefaultData>AltaCitasRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
