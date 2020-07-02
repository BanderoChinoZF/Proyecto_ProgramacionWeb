<!DOCTYPE html>
<html>
<head>
	<title>Mi primer vista con CI</title>
</head>
<body>
	<p><h2>Combo para insertas</h2></p>
	<p>
	Municipio: 
		<select>
			<option value="" selected>Selecione una opcion</option>
				<?php foreach ($municipios as $municipio) { ?>
					<option value="<?php echo $municipio->id; ?>"><?php echo $municipio->nombre; ?></option>
				<?php } ?>
		</select>
	</p>

	<p><h2>Combo para update</h2></p>
	<p>
	Municipio: 
		<select>
			<option value="" selected>Selecione una opcion</option>
			<?php 
				$selected = ' ';
				foreach ($municipios as $municipio) { 
				if ($municipio->id==$municipio_persona) { $selected = ' selected '; }
			?>

			<option <?php echo $selected; $selected=''; ?>  
					value="<?php echo $municipio->id; ?>">
					<?php echo $municipio->nombre; ?></option>
			<?php } ?>
		</select>
	</p>

</body>
</html>