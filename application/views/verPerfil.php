<?php 

  $data['id_user'] = $this->tank_auth->get_user_id();
  $data['username'] = $this->tank_auth->get_username();
  $datos_usuario = $this->Usuarios->datos_usuario($data['id_user']);
  $data['datos_usuario'] =  $datos_usuario[0];

  $this->load->view('_cabecera',$data) ?> 

  <!-- MIGAS EN DONDE NOS ENCONTRAMOD ALGO ASI COMO C:\MIS_DOCUMENTOS\***** -->
          <div class="breadcrumbs">
            <ol class="breadcrumb">
              <li><a href="<?php echo base_url(); ?>Acceso/principal"><i class="fa fa-home"></i>Inicio</a></li>
               <li><a href="<?php echo base_url(); ?>Acceso/principal"><?php echo $miga1 ?></a></li>
              <li class="active"><?php echo $miga2 ?> </li>
            </ol>
          </div>
          <!-- /breadcrumbs -->

        <!-- content main container -->
        <div class="main">


           <div class="tile-header">
            <h1><strong><font style="vertical-align: inherit;"></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Perfil De: </font><strong><font style="vertical-align: inherit;">Usuario <?php echo $usuario[0]->username ?> </font></strong></font></h1>
            <!-- <div class="controls">
              <a href="#" class="refresh"><i class="fa f
              a-refresh"></i></a>
              <a href="#" class="remove"><i class="fa fa-times"></i></a>
            </div> -->
          </div>

        <div class="row">

          	<div class="tile-body nopadding">        
            <table class="table table-condensed">
            	<thead>
	                <tr>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ID</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nombre de Usuario</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Email</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nomnbre</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Primer Apellido</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Segundo Apellido</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nivel De Cuenta</font></font></th>
	                </tr>
              	</thead>

              	<tbody>
	              	<tr>
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->id ?></font></font></td>
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->username ?></font></font></td>
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->email ?></font></font></td>
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->nombre ?></font></font></td>
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->primerApellido ?></font></font></td>
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->segundoApellido ?></font></font></td>
	              		<td>

	              			<?php if( $usuario[0]->nivel == '0' )  {?>

	                        	<span class="badge badge-secondary">Desarollador</span>

		                    <?php }else if( $usuario[0]->nivel == '1' ) { ?>

		                        <span class="badge badge-warningr">Administrador</span>

		                    <?php }else {?>

		                    	<span class="badge badge-info">Trabajador</span>

		                    <?php }?>
	              			
	              		</td>

	              		
	              	</tr>
	              </tbody>
            </table>

          	</div>
          	
  		</div>

  		<div class="row" align="center">

  			<div class="form-group col-sm-6">
            	<label for="fotoPerfil"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Foto De Perfil</font></font></label>
          	</div>
          	<div class="form-group col-sm-6">
          		<?php
          			$prroID = $this->tank_auth->get_user_id();

          			$prraFoto = $this->Usuarios->obtenerFoto($prroID);
          		?>

          			<img src="<?php base_url(); ?>/fotosPerfil/<?php echo $prraFoto[0]->foto ?>" height="150" width="150">
          	</div>
        </div>
        <div class="row" align="center">

        	<button class="btn btn-danger" data-toggle="modal" data-target="#modalEliminar">Eliminar</button>

        	<!-- Modal -->
	        <div class="modal fade" id="modalEliminar" tabindex="-1" role="dialog" aria-labelledby="verticalFormCode" aria-hidden="true">
	            <div class="modal-dialog wide">
	               <div class="modal-content">
	                    <div class="modal-header">
	                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	                            <h4 class="modal-title" id="verticalFormCode">Deseea Elimnar La Foto De Perfil?</h4>
	                	</div>
	                <div class="modal-body">
	                	<a href="<?php echo base_url(); ?>UsuariosController/eliminarFoto" class="btn btn-success">Aceptar</a>
	                	<button type="button" class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Cancelar</button>

	                </div>
  			
        			</div>
  			
  				</div>

    		</div>

        	<!-- show code btn -->
	      	<button class="btn btn-warning" data-toggle="modal" data-target="#verticalFormCodeModal">Cargar Foto</button>
	        <!-- /show code btn -->

	        <!-- Modal -->
	        <div class="modal fade" id="verticalFormCodeModal" tabindex="-1" role="dialog" aria-labelledby="verticalFormCode" aria-hidden="true">
	            <div class="modal-dialog wide">
	                <div class="modal-content">
	                    <div class="modal-header">
	                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	                            <h4 class="modal-title" id="verticalFormCode">Cargar Nueva Foto De Perfil</h4>
	                	</div>
	                <div class="modal-body">

	                	<form method="POST" enctype="multipart/form-data" name="formFotoPerfil" id="formFotoPerfil" action="<?php echo base_url(); ?>UsuariosController/guardarFoto">
	                		<div class="row">
	                			<div class="form-group col-sm-4">
	                			</div>
	                			<div class="form-group col-sm-4">
		                    	<label for="cargarFoto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Seleccion la foto que deseea cargar:</font></font></label>
		                    	<input type="file" 
		                    		class="form-control" 
		                    		id="fotoPerfil" 
		                    		name="fotoPerfil"
		                    		required>
	                  			</div>
	                  			<div class="form-group col-sm-4">
	                  			</div>	
	                		</div>

	                		<div class="row" align="center">

	                    	<input class="btn btn-amethyst margin-bottom-20" 
	                    		type="submit" 
	                    		name="enviarDatos" 
	                    		id="enviarDatos"
	                    		value="Guardar Foto">

                    		</div>

	                	</form>
	                </div>
         			</div>
  				</div>
    		</div>
          	<!-- Page content end -->


  <?php $this->load->view('_piePagina'); ?>