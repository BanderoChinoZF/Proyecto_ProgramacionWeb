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
                    <h1><strong><font style="vertical-align: inherit;"></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Regitrar Un </font><strong><font style="vertical-align: inherit;">Nuevo Producto.</font></strong></font></h1>
                    <div class="controls">
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body">

                  	<form name="registroUsuarios" id="registroUsuarios" method="POST" action="<?php echo base_url();?>/ProductosController/guardarProducto" onsubmit=" return _validar_registro();">

              		<div class="row">
              			<div class="form-group col-sm-3">
                    		<label for="nombreCorto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nombre Corto: </font></font></label>
                    		<input type="text" 
                    			class="form-control" 
                    			id="nombreCorto" 
                    			name="nombreCorto" 
                    			placeholder="Nombre Corto Del Producto"
                    			autocomplete="off"
                    			autofocus 
                    			required>
                  		</div>
                  		<div class="form-group col-sm-3">
                    		<label for="nombreLargo"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nombre Largo: </font></font></label>
                    		<input type="text" 
                    			class="form-control" 
                    			id="nombreLargo" 
                    			name="nombreLargo" 
                    			placeholder="Ingresa Tu Nombre De Usuario"
                    			autocomplete="off"
                    			autofocus 
                    			required>
                  		</div>
	                  	<div class="form-group col-sm-3">
	                    	<label for="unidadMedida"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Unidad De Medida: </font></font></label>
                        <br>
	                    	<select name="unidadMedida" id="unidadMedida">
                          <option value="NA" selected>NO APLICA</option>
                          <option value="PIEZA">PIEZA</option>
                          <option value="KIT">KIT</option>
                          <option value="GRAMOS">GRAMOS</option>
                          <option value="LITROS">LITROS</option>
                          <option value="MILILITROS">MILILITROS</option>
                          <option value="METRO LINEAL">METRO LINEALl</option>
                          <option value="METRO CUADRADO">METRO CUADRADO</option>      
                        </select>
	                  	</div>
                    </div>

                    <div class="row">
                    	<div class="form-group col-sm-3">
                        	<label for="presentacion"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Presentacion: </font></font></label>
                          <select name="presentacion" id="presentacion">
                            <option value="NA" selected>NO APLICA</option>
                            <option value="BOTELLA">BOTELLA</option>
                            <option value="CAJA">CAJA</option>
                            <option value="BOLSA">BOLSA</option>
                            <option value="PAQUETE">PAQUETE</option>
                            <option value="GRANEL">GRANEL</option>
                            <option value="ROLLA">ROLLO</option>      
                          </select>
                      	</div>
                      	<div class="form-group col-sm-3">
                        	<label for="fechaAlta"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Fecha De Alta: </font></font></label>
                        	<input type="date" 
                        		class="form-control" 
                        		id="fechaAlta"
                        		name="fechaAlta" 
                        		placeholder="Primer Apellido"
                        		autocomplete="off"
                        		 required>
                      	</div>
                    </div>

                    <div class="row" align="center">

                    	<input class="btn btn-amethyst margin-bottom-20" 
                    		type="submit" 
                    		name="enviarDatos" 
                    		id="enviarDatos"
                    		value="Registrar Producto">

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