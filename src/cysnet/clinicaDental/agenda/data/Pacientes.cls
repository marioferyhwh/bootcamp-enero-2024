Class cysnet.clinicaDental.agenda.data.Pacientes Extends (%Persistent, %XML.Adaptor)
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
<ExtentSize>1</ExtentSize>
<IdLocation>^cysnet.clinicaDe505B.PacientesD</IdLocation>
<IndexLocation>^cysnet.clinicaDe505B.PacientesI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="apellidos">
<AverageFieldSize>5</AverageFieldSize>
<OutlierSelectivity>.999999:"apq"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="baja">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:0</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="email">
<AverageFieldSize>7</AverageFieldSize>
<OutlierSelectivity>.999999:"email"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="nombre">
<AverageFieldSize>6</AverageFieldSize>
<OutlierSelectivity>.999999:"name"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="permiteNotificaciones">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:1</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^cysnet.clinicaDe505B.PacientesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
