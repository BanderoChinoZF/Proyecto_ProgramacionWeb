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
                    <h1><strong><font style="vertical-align: inherit;"></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Modificar Informacion Del Usuario: </font><strong><font style="vertical-align: inherit;"><?php echo $usuario[0]->username ?></font></strong></font></h1>
                    <div class="controls">
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body">

                    <form name="registroUsuarios" id="registroUsuarios" method="POST" action="<?php echo base_url();?>UsuariosController/registrar_Edicion/<?php echo $usuario[0]->id ?>">

                  <div class="row">
                    <div class="form-group col-sm-3">
                        <label for="email"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Dirección de correo electrónico</font></font></label>
                        <input type="email" 
                          class="form-control" 
                          id="email" 
                          name="email" 
                          placeholder="Ingresa Tu Correo Electronico"
                          autocomplete="off"
                          value="<?php echo $usuario[0]->email ?>" 
                          autofocus 
                          required>
                      </div>
                      <div class="form-group col-sm-3">
                        <label for="username"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nombre De Usuario</font></font></label>
                        <input type="text" 
                          class="form-control" 
                          id="username" 
                          name="username" 
                          placeholder="Ingresa Tu Nombre De Usuario"
                          value="<?php echo $usuario[0]->username ?>"
                          autocomplete="off"
                          autofocus 
                          required>
                      </div>
                    </div>

                    <div class="row">
                      <div class="form-group col-sm-3">
                          <label for="nombre"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nombre o Nombres:</font></font></label>
                          <input type="text" 
                            class="form-control" 
                            id="nombre"
                            name="nombre" 
                            placeholder="Ingresa tu nombre"
                            value="<?php echo $usuario[0]->nombre ?>"
                            autocomplete="off" 
                            required>
                        </div>
                        <div class="form-group col-sm-3">
                          <label for="primerApellido"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Primer Apellido</font></font></label>
                          <input type="text" 
                            class="form-control" 
                            id="primerApellido"
                            name="primerApellido" 
                            placeholder="Primer Apellido"
                            value="<?php echo $usuario[0]->primerApellido ?>"
                            required>
                        </div>

                      <div class="form-group col-sm-3">
                        <label for="segundoApellido"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Segundo Apellido</font></font></label>
                        <input type="text" 
                          class="form-control" 
                          id="segundoApellido"
                          name="segundoApellido" 
                          placeholder="Segundo Apellido"
                          value="<?php echo $usuario[0]->segundoApellido ?>"
                          autocomplete="off" 
                          required>
                      </div>

                        <div class="form-group col-sm-3">
                        <label for="nivelUsuario"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nivel De Usuario</font></font></label>
                        <select name="nivelUsuario" id="nivelUsuario" class="form-control" required>
                          <option value="">Seleccione un nivel</option>
                          <option <?php if($usuario[0]->nivel == '0') echo "selected"; ?> value="0">Desarrollador</option>
                          <option <?php if($usuario[0]->nivel == '1') echo "selected"; ?> value="1">Administrador</option>
                          <option <?php if($usuario[0]->nivel == '2') echo "selected"; ?> value="2">Trabajador</option> 
                        </select>
                        </div>
                    </div>

                    <div class="row" align="center">

                      <input class="btn btn-amethyst margin-bottom-20" 
                        type="submit" 
                        name="enviarDatos" 
                        id="enviarDatos"
                        value="Editar Informaicon">

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