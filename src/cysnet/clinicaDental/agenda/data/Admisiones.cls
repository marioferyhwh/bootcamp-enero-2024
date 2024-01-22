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
<ExtentSize>1</ExtentSize>
<IdLocation>^cysnet.clinicaD505B.AdmisionesD</IdLocation>
<IndexLocation>^cysnet.clinicaD505B.AdmisionesI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="fechaAdmision">
<AverageFieldSize>21</AverageFieldSize>
<OutlierSelectivity>.999999:"2024-01-22 17:38:04"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="idCita">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:4</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="indEnviada">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:0</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^cysnet.clinicaD505B.AdmisionesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
