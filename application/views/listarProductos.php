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
            <h1><strong><font style="vertical-align: inherit;"></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Lista De </font><strong><font style="vertical-align: inherit;">Productos. </font></strong></font></h1>
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
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SKU</font></font></th>
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nombre Corto</font></font></th>
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nombre Largo</font></font></th>
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Accion</font></font></th>
                </tr>
              </thead>

              <tbody>
                <?php foreach ($productos as $p) { ?>

                  <tr>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $p->sku ?></font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $p->nombreCorto ?></font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $p->nombreLargo ?></font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                      <a type="button" 
                        class="btn btn-greensea margin-bottom-20" 
                        href="<?php echo base_url(); ?>ProductosController/detalleProducto/<?php echo $p->sku ?>">Ver Detalles</a>
                      <a type="button" 
                        class="btn btn-warning margin-bottom-20" 
                        href="<?php echo base_url(); ?>ProductosController/editarProducto/<?php echo $p->sku ?>">Editar</a>
                      <a type="button" 
                        class="btn btn-danger margin-bottom-20"
                        onclick="_validarEliminacionProducto(<?php echo $p->sku ?>);">Eliminar</a>
                    </font></font></td>
                  </tr>

                <?php } ?>
              </tbody>
            </table>

          </div>

          </div>
          <!-- Page content end -->

<?php $this->load->view('_piePagina'); ?>