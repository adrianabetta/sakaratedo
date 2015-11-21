﻿<%@ Page Language="C#"  MasterPageFile="~/GUI/Master/SKD.Master" AutoEventWireup="true" CodeBehind="M10_ModificarAsistenciaEventos.aspx.cs" Inherits="templateApp.GUI.Modulo10.M10_ModificarAsistenciaEventos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../../../plugins/datepicker/datepicker3.css" rel="stylesheet"/>
     <script src="../../../plugins/datepicker/bootstrap-datepicker.js"></script>  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">Gestión de Asistencias a Eventos</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="subtitulo" runat="server">Modificar Asistencias a Eventos</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="breads" runat="server">

	<%--Breadcrumbs--%>
    <div>
	    <ol class="breadcrumb" style="background-color:rgba(0,0,0,0);">
		    <li>
			    <a href="../Master/Inicio.aspx">Home</a>
		    </li>
		
		    <li>
			    <a href="#">Asistencia a Eventos</a> 
		    </li>

            <li>
			    <a href="#">Gestión de Asistencia a Eventos</a> 
		    </li>
		
		    <li class="active">
			    Modificar Asitencia a Eventos
		    </li>
	    </ol>
    </div>
	<%--Fin_Breadcrumbs--%>

    </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contenidoCentral" runat="server">
<!-- general form elements -->
<div class="box box-primary">
<div class="box-header with-border">
   <h3 class="box-title">Modificar Asistencia</h3>
</div>
<!-- /.box-header -->
<!-- form start -->
<form role="form" name="modificar_asistencia" id="modificar_asistencia" method="post" action="#">
<div class="box-body col-sm-12 col-md-12 col-lg-12">
   
     <!--Date picker FECHA-->
    <div class="form-group col-sm-10 col-md-10 col-lg-10">
        <br />
        <h3>Fecha del Evento:</h3>
        <div class="input-group input-append date" id="datePicker">
        <input type="text" class="form-control" name="date" disabled />
        <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
        </div>

            <h3>Evento:</h3>
    <input type="text" class="form-control" disabled >
    </div>

        <!--COMBO CATEGORIA-->
    <div class="form-group col-sm-12 col-md-12 col-lg-12">
        <h3>Categoria:</h3>
      <div class="col-sm-8 col-md-8 col-lg-8" >
        <div class="btn-group">
         <asp:DropDownList class="btn btn-default btn-lg dropdown-toggle" ID="comboCat" runat="server" OnSelectedIndexChanged="comboCat_SelectedIndexChanged" AutoPostBack="true"  >
          </asp:DropDownList>
          <ul class="dropdown-menu">
               <li><a href="#">Categoria #1</a></li>
               <li><a href="#">Categoria #2</a></li>
               <li><a href="#">Categoria #3</a></li>
               <li><a href="#">Categoria #4</a></li>
          </ul>
        </div>
      </div>
    </div>


            <!--LISTAS ATLETAS INSCRITOS Y ASISTENTES-->
    <div class="form-group">
      <div id="div-org" class="col-sm-12 col-md-12 col-lg-12" style="height:200px">
           <table style="width:100%; height:100% ">
               <tr>
                   <th >
                       <h3 style="text-align:center">No Asistieron</h3>
                   </th>
                    <th>
                       
                   </th>
                   <th>
                       <h3 style="text-align:center">Asistieron</h3>
                   </th>
               </tr>
        <tr>
            <td>
        
         <select multiple="multiple" name="org_primary" size="4" class="form-control select select-primary select-block mbl" style="height:120px">
            <option value="Organización 1">Atleta #1</option>
            <option value="Organización 2">Atleta #2</option>
            <option value="Organización 3">Atleta #3</option>
            <option value="Organización 1">Atleta #4</option>
            <option value="Organización 2">Atleta #5</option>
            <option value="Organización 3">Atleta #6</option>
            <option value="Organización 1">Atleta #1</option>
            <option value="Organización 2">Atleta #2</option>
            <option value="Organización 3">Atleta #3</option>
            <option value="Organización 1">Atleta #4</option>
            <option value="Organización 2">Atleta #5</option>
            <option value="Organización 3">Atleta #6</option>
         </select>
       </td>
            <td>
         <div class="text-center padding-small">
            <button type="button" class="btn btn-default btn-circle glyphicon glyphicon-chevron-down" onclick="agregarOrg()"></button>
            <button type="button" class="btn btn-default btn-circle glyphicon glyphicon-chevron-up" onclick="eliminarOrg()"></button>
         </div>
           </td>
            
             <td>
         <select id="asistieron" multiple="multiple" name="org_secondary" size="4" class="form-control select select-primary select-block mbl" style="height:120px">
               <option value="Organización 1">Atleta #1</option>
            <option value="Organización 2">Atleta #2</option>
            <option value="Organización 3">Atleta #3</option>
            <option value="Organización 1">Atleta #4</option>
            <option value="Organización 2">Atleta #5</option>
            <option value="Organización 3">Atleta #6</option>
    

         </select>
        
                  </td>
        </tr>
    </table>
      </div>
   </div>
    <!--FIN LISTAS ATLETAS INSCRITOS Y ASISTENTES-->

</div>
      <!-- /.box-body -->
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="box-footer">
         &nbsp;&nbsp;&nbsp;&nbsp
         <a id="btn-modificar" class="btn btn-primary" type="submit" href="M10_ListarAsistenciaEventos.aspx?eliminacionSuccess=2" onclick="#">Modificar</a>
         &nbsp;&nbsp
         <a class="btn btn-default" href="M10_ListarAsistenciaEventos.aspx"> Cancelar</a>
      </div>
   </form>
</div>
<!-- /.box -->
</asp:Content>

