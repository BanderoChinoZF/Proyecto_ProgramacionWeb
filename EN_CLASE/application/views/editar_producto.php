<!DOCTYPE html>
<html>
<head>
	<title>Editar Producto</title>
</head>
<body>
    <p><h2>Editar un producto</h2></p>


	<form name="producto" id="producto" method="POST" action="<?php echo base_url();?>/Prueba/actualizarProducto/<?php echo $producto->sku; ?>">

		Nombre Corto: <input type="text" name="nombreCorto" id="nombreCorto" value="<?php echo $producto->nombreCorto; ?>"> <br>
		Nombre Largo: <input type="text" name="nombreLargo" id="nombreLargo" value="<?php echo $producto->nombreLargo; ?>"> <br>

		Unidad De Medida: <select name="unidadMedida" id="unidadMedida">
								<option <?php if($producto->unidadMedida == 'NA') echo "selected"; ?> value="NA" selected>No Aplica</option>
								<option <?php if($producto->unidadMedida == 'PIEZA') echo "selected"; ?> value="PIEZA">Pieza</option>
								<option <?php if($producto->unidadMedida == 'KIT') echo "selected"; ?> value="KIT">Kit</option>
								<option <?php if($producto->unidadMedida == 'GRAMOS') echo "selected"; ?>value="GRAMOS">Gramos</option>
								<option <?php if($producto->unidadMedida == 'LITROS') echo "selected"; ?> value="LITROS">Litros</option>
								<option <?php if($producto->unidadMedida == 'MILILITROS') echo "selected"; ?> value="MILILITROS">Mililitros</option>
								<option <?php if($producto->unidadMedida == 'METROLINEAL') echo "selected"; ?> value="METRO LINEAL">Metro Lineal</option>
								<option <?php if($producto->unidadMedida == 'METRO CUADRADO') echo "selected"; ?> value="METRO CUADRADO">Metro Cuadrado</option>			
		                  </select>

		                  <br>

		Presentacion: <select name="presentacion" id="presentacion">
								<option <?php if($producto->presentacion == 'NA') echo "selected"; ?> value="NA" selected>No Aplica</option>
								<option <?php if($producto->presentacion == 'BOTELLA') echo "selected"; ?> value="BOTELLA">Botella</option>
								<option <?php if($producto->presentacion == 'CAJA') echo "selected"; ?> value="CAJA">Caja</option>
								<option <?php if($producto->presentacion == 'BOLSA') echo "selected"; ?> value="BOLSA">Bolsa</option>
								<option <?php if($producto->presentacion == 'PAQUETE') echo "selected"; ?> value="PAQUETE">Paquete</option>
								<option <?php if($producto->presentacion == 'GRANEL') echo "selected"; ?> value="GRANEL">Granel</option>
								<option <?php if($producto->presentacion == 'ROLLO') echo "selected"; ?> value="ROLLO">Rollo</option>			
		                  </select>

		                  <br>

		Fecha Alta: <input type="date" name="fechaAlta" id="fechaAlta" value="<?php echo $producto->fechaAlta; ?>" > <br>

		<input type="submit" name="enviar" id="enviar" value="Actualizar Producto">
		
	</form>

</body>
</html>