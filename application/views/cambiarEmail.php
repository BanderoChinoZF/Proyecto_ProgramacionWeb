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

          <!-- <div class="tile-header">
            <h1><strong><font style="vertical-align: inherit;"></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Agregar Un </font><strong><font style="vertical-align: inherit;">Usuario </font></strong></font></h1>
              <div class="controls">
                <a href="#" class="refresh"><i class="fa f
                a-refresh"></i></a>
                <a href="#" class="remove"><i class="fa fa-times"></i></a>
              </div> 
            </div> -->

        <div class="tile-body nopadding">        
            
          <section class="tile">


                  <!-- tile header -->
                  <div class="tile-header">
                    <h1><strong><font style="vertical-align: inherit;"></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Cambiar Contraseña: </font><strong><font style="vertical-align: inherit;"><?php echo $this->tank_auth->get_username();?> </font></strong></font></h1>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body">
                    <form name="registroUsuarios" id="registroUsuarios" method="POST" action="<?php echo base_url();?>/Acceso/guardarNuevoEmail/" onsubmit="return _validar_cambio_email();">
                  <div class="row">
                    <div class="form-group col-sm-3">
                        <label for="nuevoEmail"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Correo Electronico Nuevo: </font></font></label>
                        <input type="email" 
                          class="form-control" 
                          id="nuevoEmail" 
                          name="nuevoEmail" 
                          placeholder="Ingresa Tu Nuevo Email"
                          autocomplete="off"
                          required>
                      </div>
                    <div class="row" align="center">

                      <input class="btn btn-amethyst margin-bottom-20" 
                        type="submit" 
                        name="enviarDatos" 
                        id="enviarDatos"
                        value="Cambiar Contrsaeña">
                    </div>
                    </form>

                  </div>
                  <!-- /tile body -->
                

                  <!-- show code btn -->
                  <button class="btn show-code" data-toggle="modal" data-target="#verticalFormCodeModal"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                    Ayuda Con El Registro
                  </font></font></button>
                  <!-- /show code btn -->


                  <!-- Modal -->
                  <div class="modal fade" id="verticalFormCodeModal" tabindex="-1" role="dialog" aria-labelledby="verticalFormCode" aria-hidden="true">
                    <div class="modal-dialog wide">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                          <h4 class="modal-title" id="verticalFormCode">Ayuda Con Registro De Nuevos Usuarios</h4>
                        </div>
                        <div class="modal-body">

        </div>

        </div>
        <!-- Page content end -->


<?php $this->load->view('_piePagina'); ?>