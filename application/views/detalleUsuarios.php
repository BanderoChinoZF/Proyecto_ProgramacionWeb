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
               <li><a href="<?php echo base_url(); ?>UsuariosController/listarUsuario"><?php echo $miga2 ?></a></li>
              <li class="active"><?php echo $miga3 ?> </li>
            </ol>
          </div>
          <!-- /breadcrumbs -->

          <!-- content main container -->
          <div class="main">


           <div class="tile-header">
            <h1><strong><font style="vertical-align: inherit;"></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Detalle Del </font><strong><font style="vertical-align: inherit;">Usuario <?php echo $usuario[0]->username ?> </font></strong></font></h1>
            <!-- <div class="controls">
              <a href="#" class="refresh"><i class="fa f
              a-refresh"></i></a>
              <a href="#" class="remove"><i class="fa fa-times"></i></a>
            </div> -->
          </div>

          <div class="tile-body nopadding">
                    
            <table class="table table-condensed">
            	<thead>
	                <tr>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ID</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nombre de Usuario</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Email</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Activo</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Baneado</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Razon Del Baneo</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ultima IP Utilizada</font></font></th>
	                </tr>
              	</thead>

              	<tbody>
	              	<tr>
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->id ?></font></font></td>
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->username ?></font></font></td>
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->email ?></font></font></td>

	              		<!-- ------------------------------------------------------------------------------------------------------------------ -->
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
		                    <?php if( $usuario[0]->activated == '1' )  {?>
		                    	<span class="badge badge-pill badge-success">Activo</span>
		                    <?php }else { ?>
		                    	<span class="badge badge-pill badge-danger">Danger</span>
		                    <?php }?>
                    	</font></font></td>

                    	<!-- ------------------------------------------------------------------------------------------------------------------ -->
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
		                    <?php if( $usuario[0]->banned == '0' )  {?>
		                    	<span class="badge badge-pill badge-success">Con Autorizacion</span>
		                    <?php }else { ?>
		                    	<span class="badge badge-pill badge-danger">Sin Autorizacion</span>
		                    <?php }?>
                    	</font></font></td>

                    	<!-- ------------------------------------------------------------------------------------------------------------------ -->
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
		                    <?php if( $usuario[0]->ban_reason == null )  {?>
		                    	<span class="badge badge-pill badge-success">Sin Baneo Aplicado</span>
		                    <?php }else { ?>
		                    	<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->ban_reason ?></font></font></td>
		                    <?php }?>
                    	</font></font></td>

                    	<!-- ------------------------------------------------------------------------------------------------------------------ -->
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->last_ip ?></font></font></td>
	              	</tr>
	              </tbody>
            </table>

            <table class="table table-condensed">
            	<thead>
            		<tr>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ultima Conexion</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Fecha De Creacion</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nomnbre</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Primer Apellido</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Segundo Apellido</font></font></th>
		                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nivel De Cuenta</font></font></th>
                	</tr>
            	</thead>

            	<tbody>
	              	<tr>
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->last_login ?></font></font></td>
	              		<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $usuario[0]->created ?></font></font></td>
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
          <!-- Page content end -->


  <?php $this->load->view('_piePagina'); ?>