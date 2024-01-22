Class cysnet.clinicaDental.agenda.data.Altas Extends %Persistent
{

Property idCita As %Integer;

Property fechaAlta As %TimeStamp;

Property indEnviada As %Boolean;

Storage Default
{
<Data name="AltasDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>idCita</Value>
</Value>
<Value name="3">
<Value>fechaAlta</Value>
</Value>
<Value name="4">
<Value>indEnviada</Value>
</Value>
</Data>
<DataLocation>^cysnet.clinicaDental505B.AltasD</DataLocation>
<DefaultData>AltasDefaultData</DefaultData>
<ExtentSize>2</ExtentSize>
<IdLocation>^cysnet.clinicaDental505B.AltasD</IdLocation>
<IndexLocation>^cysnet.clinicaDental505B.AltasI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="fechaAlta">
<AverageFieldSize>21</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="idCita">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:3</OutlierSelectivity>
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
<StreamLocation>^cysnet.clinicaDental505B.AltasS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
