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
            <h1><strong><font style="vertical-align: inherit;"></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Lista De </font><strong><font style="vertical-align: inherit;">Usuarios. </font></strong></font></h1>
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
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Activo</font></font></th>
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nombre</font></font></th>
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Primer Apellido</font></font></th>
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Segundo Apellido</font></font></th>
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Email</font></font></th>
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Accion</font></font></th>
                </tr>
              </thead>

              <tbody>
                <?php foreach ($usuarios as $u) { ?>

                  <tr>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $u->id ?></font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $u->username ?></font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                      <?php if( $u->activated == '1' )  {?>

                        <span class="badge badge-pill badge-success">Activo</span>

                      <?php }else { ?>

                        <span class="badge badge-pill badge-danger">Inactivo</span>

                      <?php }?>
                    </font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $u->nombre ?></font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $u->primerApellido ?></font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $u->segundoApellido ?></font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $u->email ?></font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                      <a type="button" 
                        class="btn btn-greensea margin-bottom-20" 
                        href="<?php echo base_url(); ?>UsuariosController/detalleUsuario/<?php echo $u->id ?>">Ver Detalles</a>
                      <a type="button" class="btn btn-warning margin-bottom-20" href="<?php echo base_url(); ?>UsuariosController/editarUsuario/<?php echo $u->id ?>">Editar</a>
                      <a type="button" 
                        class="btn btn-danger margin-bottom-20"
                        onclick="_validarEliminacion(<?php echo $u->id ?>);">Eliminar</a>
                    </font></font></td>
                  </tr>

                <?php } ?>
              </tbody>
            </table>

          </div>

          </div>
          <!-- Page content end -->

<?php $this->load->view('_piePagina'); ?>