<!DOCTYPE html>
<html>
<head>
	<title>Nuevo Producto</title>
</head>
<body>

	<form name="producto" id="producto" method="POST" action="<?php echo base_url();?>/Prueba/guardarProducto">

		Nombre Corto: <input type="text" name="nombreCorto" id="nombreCorto"> <br>
		Nombre Largo: <input type="text" name="nombreLargo" id="nombreLargo"> <br>
		Unidad De Medida: <select name="unidadMedida" id="unidadMedida">
								<option value="NA" selected>NO APLICA</option>
								<option value="PIEZA">PIEZA</option>
								<option value="KIT">KIT</option>
								<option value="GRAMOS">GRAMOS</option>
								<option value="LITROS">LITROS</option>
								<option value="MILILITROS">MILILITROS</option>
								<option value="METRO LINEAL">METRO LINEALl</option>
								<option value="METRO CUADRADO">METRO CUADRADO</option>			
		                  </select>

		                  <br>

		Presentacion: <select name="presentacion" id="presentacion">
								<option value="NA" selected>NO APLICA</option>
								<option value="BOTELLA">BOTELLA</option>
								<option value="CAJA">CAJA</option>
								<option value="BOLSA">BOLSA</option>
								<option value="PAQUETE">PAQUETE</option>
								<option value="GRANEL">GRANEL</option>
								<option value="ROLLA">ROLLO</option>			
		                  </select>

		                  <br>

		Fecha Alta: <input type="date" name="fechaAlta" id="fechaAlta"> <br>

		<input type="submit" name="enviar" id="enviar" value="Registrar Producto">
		
	</form>

</body>
</html>