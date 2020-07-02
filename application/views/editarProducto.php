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
                    <h1><strong><font style="vertical-align: inherit;"></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Modificar Informacion Del Producto: </font><strong><font style="vertical-align: inherit;"><?php echo $producto[0]->sku ?></font></strong></font></h1>
                    <div class="controls">
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body">

                    <form name="registroUsuarios" id="registroUsuarios" method="POST" action="<?php echo base_url();?>/ProductosController/actualizarProducto/<?php echo $producto[0]->sku ?>" onsubmit=" return _validar_registro();">

                  <div class="row">
                    <div class="form-group col-sm-3">
                        <label for="nombreCorto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nombre Corto: </font></font></label>
                        <input type="text" 
                          class="form-control" 
                          id="nombreCorto" 
                          name="nombreCorto" 
                          placeholder="Nombre Corto Del Producto"
                          value="<?php echo $producto[0]->nombreCorto ?>" 
                          autocomplete="off"
                          required>
                      </div>
                      <div class="form-group col-sm-3">
                        <label for="nombreLargo"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nombre Largo: </font></font></label>
                        <input type="text" 
                          class="form-control" 
                          id="nombreLargo" 
                          name="nombreLargo" 
                          placeholder="Ingresa Tu Nombre De Usuario"
                          value="<?php echo $producto[0]->nombreLargo ?>" 
                          autocomplete="off"
                          required>
                      </div>
                      <div class="form-group col-sm-3">
                        <label for="unidadMedida"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Unidad De Medida: </font></font></label>
                        <br>
                        <select name="unidadMedida" id="unidadMedida">
                          <option value="NA" selected>NO APLICA</option>
                          <option <?php if($producto[0]->unidadMedida == 'PIEZA') echo "selected"; ?> value="PIEZA">PIEZA</option>
                          <option <?php if($producto[0]->unidadMedida == 'KIT') echo "selected"; ?> value="KIT">KIT</option>
                          <option <?php if($producto[0]->unidadMedida == 'GRAMOS') echo "selected"; ?> value="GRAMOS">GRAMOS</option>
                          <option <?php if($producto[0]->unidadMedida == 'LITROS') echo "selected"; ?> value="LITROS">LITROS</option>
                          <option <?php if($producto[0]->unidadMedida == 'MILILITROS') echo "selected"; ?> value="MILILITROS">MILILITROS</option>
                          <option <?php if($producto[0]->unidadMedida == 'METRO LINEAL') echo "selected"; ?> value="METRO LINEAL">METRO LINEALl</option>
                          <option <?php if($producto[0]->unidadMedida == 'METRO CUADRADO') echo "selected"; ?> value="METRO CUADRADO">METRO CUADRADO</option>      
                        </select>
                      </div>
                    </div>

                    <div class="row">
                      <div class="form-group col-sm-3">
                          <label for="presentacion"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Presentacion: </font></font></label>
                          <select name="presentacion" id="presentacion">
                            <option value="NA" selected>NO APLICA</option>
                            <option <?php if($producto[0]->presentacion == 'BOTELLA') echo "selected"; ?> value="BOTELLA">BOTELLA</option>
                            <option <?php if($producto[0]->presentacion == 'CAJA') echo "selected"; ?> value="CAJA">CAJA</option>
                            <option <?php if($producto[0]->presentacion == 'BOLSA') echo "selected"; ?> value="BOLSA">BOLSA</option>
                            <option <?php if($producto[0]->presentacion == 'PAQUETE') echo "selected"; ?> value="PAQUETE">PAQUETE</option>
                            <option <?php if($producto[0]->presentacion == 'GRANEL') echo "selected"; ?> value="GRANEL">GRANEL</option>
                            <option <?php if($producto[0]->presentacion == 'ROLLA') echo "selected"; ?> value="ROLLA">ROLLO</option>      
                          </select>
                        </div>
                        <div class="form-group col-sm-3">
                          <label for="fechaAlta"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Fecha De Alta: </font></font></label>
                          <input type="date" 
                            class="form-control" 
                            id="fechaAlta"
                            name="fechaAlta" 
                            placeholder="Primer Apellido"
                            value="<?php echo $producto[0]->fechaAlta ?>" 
                            autocomplete="off"
                             required>
                        </div>
                    </div>

                    <div class="row" align="center">

                      <input class="btn btn-amethyst margin-bottom-20" 
                        type="submit" 
                        name="enviarDatos" 
                        id="enviarDatos"
                        value="Editar Informacion">

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