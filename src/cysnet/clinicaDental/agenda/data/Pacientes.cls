Class cysnet.clinicaDental.agenda.data.Pacientes Extends %Persistent
{

Property nombre As %String;

Property apellidos As %String;

Property email As %String;

Property permiteNotificaciones As %Boolean;

Property baja As %Boolean;

Storage Default
{
<Data name="PacientesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>nombre</Value>
</Value>
<Value name="3">
<Value>apellidos</Value>
</Value>
<Value name="4">
<Value>email</Value>
</Value>
<Value name="5">
<Value>permiteNotificaciones</Value>
</Value>
<Value name="6">
<Value>baja</Value>
</Value>
</Data>
<DataLocation>^cysnet.clinicaDe505B.PacientesD</DataLocation>
<DefaultData>PacientesDefaultData</DefaultData>
<IdLocation>^cysnet.clinicaDe505B.PacientesD</IdLocation>
<IndexLocation>^cysnet.clinicaDe505B.PacientesI</IndexLocation>
<StreamLocation>^cysnet.clinicaDe505B.PacientesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
