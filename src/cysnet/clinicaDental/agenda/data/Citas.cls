Class cysnet.clinicaDental.agenda.data.Citas Extends (%Persistent, %XML.Adaptor)
{

Property idPaciente As %Integer;

Property descCita As %String;

Property fechaCita As %TimeStamp;

Property codEstado As %Integer;

Storage Default
{
<Data name="CitasDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>idPaciente</Value>
</Value>
<Value name="3">
<Value>descCita</Value>
</Value>
<Value name="4">
<Value>fechaCita</Value>
</Value>
<Value name="5">
<Value>codEstado</Value>
</Value>
</Data>
<DataLocation>^cysnet.clinicaDental505B.CitasD</DataLocation>
<DefaultData>CitasDefaultData</DefaultData>
<ExtentSize>2</ExtentSize>
<IdLocation>^cysnet.clinicaDental505B.CitasD</IdLocation>
<IndexLocation>^cysnet.clinicaDental505B.CitasI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="codEstado">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:1</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="descCita">
<AverageFieldSize>10.5</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="fechaCita">
<AverageFieldSize>21</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="idPaciente">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^cysnet.clinicaDental505B.CitasS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
