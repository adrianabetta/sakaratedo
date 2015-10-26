﻿<%@ Page Language="C#" MasterPageFile="~/GUI/Master/SKD.Master" AutoEventWireup="true" CodeBehind="M11_ListarResultadoCompetencia.aspx.cs" Inherits="templateApp.GUI.Modulo11.ListarResultadoCompetencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">Gestión de Resultados de Competencia
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="subtitulo" runat="server">Listar Resultados de Competencia
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contenidoCentral" runat="server">

    <div id="alert" runat="server">
    </div>

     <div class="row">
            <div class="col-xs-12">
              <div class="box">
        <div class="box-header">
                      <h3 class="box-title">Listar Resultados</h3>
        </div><!-- /.box-header -->

    <div class="box-body table-responsive">
        <table id="tablaResultado" class="table table-bordered table-striped dataTable">
        <thead>
				<tr>
                    <th style="text-align:center">Id</th>
					<th style="text-align:center">Nombre del Evento</th>
                    <th style="text-align:center">Tipo</th>
					<th style="text-align:center">Fecha</th>
					<th style="text-align:center">Acciones</th>
				</tr>
			</thead>
			<tbody>
				<tr>
                    <td class="id">1</td>
					<td>Campeonato Nacional Seito</td>
                    <td> Competencia</td>
                    <td> 19/05/2001</td>
					
                    <td>
                        <a class="btn btn-primary glyphicon glyphicon-info-sign" data-toggle="modal" data-target="#modal-info" href="#"></a>
                        <a class="btn btn-default glyphicon glyphicon-pencil" href=".../GUI/Modulo10/M10_ModificarAsistenciaEventos.aspx"></a>
                     </td>
                </tr>
                <tr>
                     <td class="id">2</td>
                    <td>Karate Premier</td>
                     <td>Examen de Ascenso</td>
                    <td>09/04/2001</td>
                    <td>
                        <a class="btn btn-primary glyphicon glyphicon-info-sign" data-toggle="modal" data-target="#modal-info" href="#"></a>
                        <a class="btn btn-default glyphicon glyphicon-pencil" href="/GUI/Modulo10/M10_ModificarAsistenciaEventos.aspx"></a>
                     </td>
				</tr><tr>
                    <td class="id">3</td>
                    <td>Copa Osawa</td>
                     <td>Competencia</td>
                    <td>14/10/2001</td>
                    <td>
                        <a class="btn btn-primary glyphicon glyphicon-info-sign" data-toggle="modal" data-target="#modal-info" href="#"></a>
                        <a class="btn btn-default glyphicon glyphicon-pencil" href="/GUI/Modulo10/M10_ModificarAsistenciaEventos.aspx"></a>
                     </td>
                </tr>
                <tr>
                    <td class="id">4</td>
                    <td>XVII SHITORYU KARATEDO PAN-AMERICAN CHAMPIONSHIPS</td>
                     <td>Competencia</td>
                    <td>01/01/2000</td>		
                    <td>
                        <a class="btn btn-primary glyphicon glyphicon-info-sign" data-toggle="modal" data-target="#modal-info" href="#"></a>
                        <a class="btn btn-default glyphicon glyphicon-pencil" href="/GUI/Modulo10/M10_ModificarAsistenciaEventos.aspx"></a>
                     </td>
                </tr>
                <tr>
                    <td class="id">5</td>
                    <td>COPA SHOKO SATO</td>
                    <td> Competencia</td>
                    <td>05/04/2001</td>
                    <td>
                        <a class="btn btn-primary glyphicon glyphicon-info-sign" data-toggle="modal" data-target="#modal-info" href="#"></a>
                        <a class="btn btn-default glyphicon glyphicon-pencil" href="M10_ModificarAsistenciaEventos.aspx"></a>
                    </td>
                </tr>
			    </tbody>
            </table>
           </div>
       </div>
    </div>
</div>

        
        <div class="modal-dialog">
          <div class="modal-content">
          
              </div>
            </div>
            <div class="modal-body">
              <div class="container-fluid">
                </div>
                </div>
            <div class="modal-footer">  
           </div>
 

    		<div id="modal-info" class="modal fade" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">Información del Evento</h4>
					</div>
					<div class="modal-body">
						<div class="container-fluid" id="info">
							<div class="row">
								<h3>Organización</h3>
									<ul>
										<li>Fecha del Evento </li>
										<li>Informacion del Evento</li>
									</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
             <script type="text/javascript">
                 $(document).ready(function () {
                     $('#tablaResultado').DataTable();

                     var table = $('#tablaResultado').DataTable();
                     var comp;
                     var tr;



                     $('#tablaasistenciae tbody').on('click', 'a', function () {
                         if ($(this).parent().hasClass('selected')) {
                             comp = $(this).parent().prev().prev().prev().prev().text();
                             tr = $(this).parents('tr');//se guarda la fila seleccionada
                             $(this).parent().removeClass('selected');

                         }
                         else {
                             comp = $(this).parent().prev().prev().prev().prev().text();
                             tr = $(this).parents('tr');//se guarda la fila seleccionada
                             table.$('tr.selected').removeClass('selected');
                             $(this).parent().addClass('selected');
                         }
                     });

                 });

        </script>
    
</asp:Content>