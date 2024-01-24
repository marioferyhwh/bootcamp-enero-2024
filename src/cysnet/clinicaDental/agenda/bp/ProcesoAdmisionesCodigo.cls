Class cysnet.clinicaDental.agenda.bp.ProcesoAdmisionesCodigo Extends Ens.BusinessProcess
{

Method OnRequest(pRequest As cysnet.clinicaDental.agenda.msg.AdmitirPacienteRequest, Output pResponse As cysnet.clinicaDental.agenda.msg.AdmitirPacienteResponse) As %Status
{
  
  
  Set existeAdmisionRequest = ##class(cysnet.clinicaDental.agenda.msg.ExisteAdmisionRequest).%New()
  Set existeAdmisionResponse = ##class(cysnet.clinicaDental.agenda.msg.ExisteAdmisionResponse).%New()
  
  Set existeAdmisionRequest.idCita = pRequest.idCita
  Do ..SendRequestSync("AdmisionesSQL", existeAdmisionRequest, .existeAdmisionResponse)

  If (pRequest.%ClassName() = "AdmitirPacienteRequest"){

    Set pResponse = ##class(cysnet.clinicaDental.agenda.msg.AdmitirPacienteResponse).%New()

    If (existeAdmisionResponse.existe) {
      Set pResponse.mensaje = "Ya existe un adminsion"
    }Else{
      Do ..SendRequestSync("AdmisionesSQL", pRequest, .pResponse)
    }
  } ElseIf (pRequest.%ClassName() = "AltaPacienteRequest") {
    Set pResponse = ##class(cysnet.clinicaDental.agenda.msg.AltaPacienteResponse).%New()
    If (existeAdmisionResponse.existe) {
      Do ..SendRequestSync("AltasSQL", pRequest, .pResponse)
    }Else{
      Set pResponse.mensaje = "No existe un admicion vigente para la cita :"_pRequest.idCita
    }
  }
  Quit $$$OK
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
