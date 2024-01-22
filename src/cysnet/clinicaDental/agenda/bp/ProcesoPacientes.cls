/// 
Class cysnet.clinicaDental.agenda.bp.ProcesoPacientes Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='cysnet.clinicaDental.agenda.msg.NuevoPacienteRequest' response='cysnet.clinicaDental.agenda.msg.NuevoPacienteResponse' height='2000' width='2000' >
<sequence xend='200' yend='700' >
<call name='crear paciente' target='PacientesSQL' async='0' xpos='200' ypos='250' >
<request type='cysnet.clinicaDental.agenda.msg.NuevoPacienteRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='cysnet.clinicaDental.agenda.msg.NuevoPacienteResponse' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
<if name='se crea?' condition='response.mensaje = "Se crea"' xpos='200' ypos='350' xend='200' yend='600' >
<true>
<assign name="bienvenida" property="response.mensaje" value="&quot;Bienvenido al Sistema&quot;" action="set" xpos='335' ypos='500' />
</true>
</if>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
