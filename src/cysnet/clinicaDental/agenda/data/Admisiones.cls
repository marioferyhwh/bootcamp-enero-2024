Class cysnet.clinicaDental.agenda.data.Admisiones Extends %Persistent
{

// Identificador de la cita

Property idCita As %Integer;

// Fecha/hora en la que el paciente entra a la Clínica para su cita

Property fechaAdmision As %TimeStamp;

// Indicador de si los datos de la admisión se han enviado

Property indEnviada As %Boolean;

Storage Default
{
<Data name="AdmisionesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>idCita</Value>
</Value>
<Value name="3">
<Value>fechaAdmision</Value>
</Value>
<Value name="4">
<Value>indEnviada</Value>
</Value>
</Data>
<DataLocation>^cysnet.clinicaD505B.AdmisionesD</DataLocation>
<DefaultData>AdmisionesDefaultData</DefaultData>
<IdLocation>^cysnet.clinicaD505B.AdmisionesD</IdLocation>
<IndexLocation>^cysnet.clinicaD505B.AdmisionesI</IndexLocation>
<StreamLocation>^cysnet.clinicaD505B.AdmisionesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
