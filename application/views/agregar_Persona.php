<!DOCTYPE html>
<html>
<head>
	<title><?php echo $titulo; ?></title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

	<p><h2>Menu:</h2></p>

	<p>
		<ul>
			<li><a href="<?php echo base_url(); ?>Controlador/vistaInicio">Inicio</a></li>
			<li><a href="<?php echo base_url(); ?>Controlador/listar_Persona">Eliminar</a></li>
			<li><a href="<?php echo base_url(); ?>Controlador/listar_Persona">Listar</a></li>
		</ul>
	</p>

	<p>
		<h2>Bienvenido al modulo agregar personas</h2>
	</p>

	<form method="POST" enctype="multipart/form-data" name="formPersona" id="formPersona" action="<?php echo base_url(); ?>Controlador/guardarPersona">
		<p>
			RFC: 
			<input type="text" name="rfc" id="rfc" minlength="13" maxlength="18">
		</p>
		<p>
			Nombre: 
			<input type="text" name="nombre" id="nombre" required> 
		</p>
		<p>
			Primer Apellido: 
			<input type="text" name="primerApellido" id="primerApellido" required>
		</p>
		<p>
			Segundo Apellido: 
			<input type="text" name="segundoApellido" id="segundoApellido" required>
		</p>
		<p>
			Fecha Nacimiento: 
			<input type="date" name="fechaNacimiento" id="fechaNacimiento" required>
		</p>
		<p>
			Sexo: 
			<input type="radio" name="sexo" value="HOMBRE" required> Hombre
			<input type="radio" name="sexo" value="MUJER" required> Mujer
			<input type="radio" name="sexo" value="NO ESPECIFICADO" required> No Especificado
		</p>
		<p>
			CURP: 
			<input type="text" name="curp" id="curp" maxlength="14" minlength="18" required>
		</p>
		<p>
			Profesion u Oficio: 
			<select name="ocupacion" id="ocupacion" required>
				<option value="" selected>Seleccione una ocupacion</option>
				<?php foreach ($ocupaciones as $ocup) { ?>

					<option value="<?php echo $ocup->id ?>"><?php echo $ocup->ocupacion ?></option>

				<?php } ?>
			</select>
		</p>
		<p>
			Grado Estudios: 
			<select name="gradoEstudios" id="gradoEstudios" required>
				<option selected value="">Seleccione una ocupacion</option>
				<option value="Primaria">Primaria</option>
				<option value="Secundaria">Secundaria</option>
				<option value="Bachillerato">Bachillerato</option>
				<option value="Universidad">Universidad</option>	
			</select>
		</p>
		<p>
			Calle: 
			<input type="text" name="calle" id="calle" required>
		</p>
		<p>
			Numero: 
			<input type="number" name="numero" id="numero" required>
		</p>
		<p>
			Colonia: 
			<input type="text" name="colonia" id="colonia" required>
		</p>
		<p>
			Localidad: 
			<input type="text" name="localidad" id="localidad" required>
		</p>
		<p>
		Municipio: 
			<select name="municipio" id="municipio" required>
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
		<p>
			Estado: 
			<select name="estado" id="estado" required="required" >
				<option value="" selected >Seleccione un estado</option>
				<option value="OAXACA" >OAXACA</option>
				<option value="CHIAPAS" >CHIAPAS</option>
				<option value="VERACRUZ" >VERACRUZ</option>
				<option value="OTRO" >OTRO</option>
			</select>
		</p>
		<p>
			Pais: 
			<select name="pais" id="pais" required="required" >
				<option value="" selected >Seleccione un pais</option>
				<option value="MEXICO" >MEXICO</option>
				<option value="OTRO" >OTRO</option>
			</select>
		</p>
		<p>
			Codigo Postal: 
			<input type="number" name="cp" id="cp" required>
		</p>
		<p>
			Tipo de sangre: 
			<select name="tipoSangre" id="tipoSangre" required>
				<option selected value="">Seleccione un tipo de sangre</option>
				<option value="O+">O+</option>
				<option value="O-">O-</option>
				<option value="B+">B+</option>
				<option value="B-">B-</option>
				<option value="A+">A+</option>
				<option value="A-">A-</option>
				<option value="AB+">AB+</option>
				<option value="AB-">AB-</option>	
			</select>
		</p>
		<p>
			Alergias: 
			<input type="checkbox" name="alergias" id="alergias" value="SI">
		</p>
		<p>
			Tipo de alergia: 
			<input type="text" name="tipoAlergia" id="tipoAlergia">
		</p>
		<p>
			Fuma: 
			<input type="checkbox" name="fuma" id="fuma" value="SI">
		</p>
		<p>
			Toma: 
			<input type="checkbox" name="toma" id="toma" value="SI">
		</p>
		<p>
			Usa alguna droga: 
			<input type="checkbox" name="droga" id="droga" value="SI">
		</p>
		<p>
			Discapacitado: 
			<input type="checkbox" name="discapacitado" id="discapacitado" value="SI">
		</p>
		<p>
			Tipo descapacidad: 
			<input type="text" name="tipoDiscapacidad" id="tipoDiscapacidad">
		</p>
		<p>
			Estado Civil: 
			<select name="estadoCivil" id="estadoCivil" required>
				<option selected value="">Seleccione una opcion</option>
				<option value="Soltero">Soltero</option>
				<option value="Comprometido">Comprometido</option>
				<option value="En Relacion">En Relacion</option>
				<option value="Casado">Casado</option>
				<option value="Union Libre">Union Libre</option>
				<option value="Separado">Separado</option>
				<option value="Divorciado">Divorciado</option>
				<option value="Viudo">Viudo</option>
				<option value="Noviazgo">Noviazgo</option>				
			</select>
		</p>
		<p>
			Email: 
			<input type="email" name="email" id="email" required>
		</p>
		<p>
			Subir Foto:
			<input type="file" name="foto" id="foto" required>
		</p>
		<p>
			<input type="submit" name="nuevaPersona" id="nuevaPersona" value="Registrar Persona">
		</p>

	</form>

</body>
</html>