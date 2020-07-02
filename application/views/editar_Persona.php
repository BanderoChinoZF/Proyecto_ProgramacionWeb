<!DOCTYPE html>
<html>
<head>
	<title><?php echo $titulo; ?></title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

	<p><h2>Menu:</h2></p>

	<p>
		<h2>Bienvenido al modulo editar personas</h2>
	</p>

	<form method="POST" enctype="multipart/form-data" name="formPersona" id="formPersona" action="<?php echo base_url();?>/Controlador/actualizarPersona/<?php echo $persona->id; ?>">

		<p>
			ID:
			<input type="number" name="id" id="id" value="<?php echo $persona->id; ?>" disabled>
		</p>
		<p>
			RFC: 
			<input type="text" name="rfc" id="rfc" minlength="13" maxlength="18" 
				   value="<?php echo $persona->rfc; ?>">
		</p>
		<p>
			Nombre: 
			<input type="text" name="nombre" id="nombre" value="<?php echo $persona->nombre; ?>" required>
		</p>
		<p>
			Primer Apellido: 
			<input type="text" name="primerApellido" id="primerApellido" 
				   value="<?php echo $persona->primerApellido; ?>"required>
		</p>
		<p>
			Segundo Apellido: 
			<input type="text" name="segundoApellido" id="segundoApellido"  
				   value="<?php echo $persona->segundoApellido; ?>" required>
		</p>
		<p>
			Fecha Nacimiento: 
			<input type="date" name="fechaNacimiento" id="fechaNacimiento" 
				value="<?php echo $persona->fechaNacimiento; ?>" required>
		</p>
		<p>
			Sexo: 
			<input type="radio" name="sexo" <?php if($persona->sexo == 'HO') echo "checked"; ?> value="HOMBRE" required> Hombre
			<input type="radio" name="sexo" <?php if($persona->sexo == 'MU') echo "checked"; ?> value="MUJER" required> Mujer
			<input type="radio" name="sexo" <?php if($persona->sexo == 'NO') echo "checked"; ?> value="NO ESPECIFICADO" required> No Especificado
		</p>
		<p>
			CURP: 
			<input type="text" name="curp" id="curp" maxlength="14" minlength="18" value="<?php echo $persona->curp; ?>" required>
		</p>
		<p>
		Profesion u Oficio: 
			<select name="ocupacion" id="ocupacion" required>
				<option value="">Selecione una opcion</option>
				<?php 
					$selected = ' ';
					foreach ($ocupaciones as $ocup) { 
					if ($ocup->id==$persona->ocupacion) { $selected = ' selected '; }
				?>

				<option <?php echo $selected; $selected=''; ?>  
						value="<?php echo $ocup->id; ?>">
						<?php echo $ocup->ocupacion; ?></option>
				<?php } ?>
			</select>
		</p>
		<p>
			Grado Estudios: 
			<select name="gradoEstudios" id="gradoEstudios" required>
				<option value="">Seleccione una ocupacion</option>
				<option <?php if($persona->gradoEstudios == 'Primaria') echo "selected"; ?> value="Primaria">Primaria</option>
				<option <?php if($persona->gradoEstudios == 'Secundaria') echo "selected"; ?> value="Secundaria">Secundaria</option>
				<option <?php if($persona->gradoEstudios == 'Bachillerato') echo "selected"; ?> value="Bachillerato">Bachillerato</option>
				<option <?php if($persona->gradoEstudios == 'Universidad') echo "selected"; ?> value="Universidad">Universidad</option>	
			</select>
		</p>
		<p>
			Calle: 
			<input type="text" name="calle" id="calle" value="<?php echo $persona->calle; ?>" required>
		</p>
		<p>
			Numero: 
			<input type="number" name="numero" id="numero" value="<?php echo $persona->numero; ?>" required>
		</p>
		<p>
			Colonia: 
			<input type="text" name="colonia" id="colonia" value="<?php echo $persona->colonia; ?>" required>
		</p>
		<p>
			Localidad: 
			<input type="text" name="localidad" id="localidad" value="<?php echo $persona->localidad; ?>" required>
		</p>
		<p>
		Municipio: 
			<select name="municipio" id="municipio" required>
				<option value="" selected>Selecione una opcion</option>
				<?php 
					$selected = ' ';
					foreach ($municipios as $municipio) { 
					if ($municipio->id==$persona->municipio) { $selected = ' selected '; }
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
				<option value="" >Seleccione un estado</option>
				<option <?php if($persona->estado == 'OAXACA') echo "selected"; ?> value="OAXACA" >OAXACA</option>
				<option <?php if($persona->estado == 'CHIAPAS') echo "selected"; ?> value="CHIAPAS" >CHIAPAS</option>
				<option <?php if($persona->estado == 'VERACRUZ') echo "selected"; ?> value="VERACRUZ" >VERACRUZ</option>
				<option <?php if($persona->estado == 'OTRO') echo "selected"; ?> value="OTRO" >OTRO</option>
			</select>
		</p>
		<p>
			Pais: 
			<select name="pais" id="pais" required="required" >
				<option value="">Seleccione un pais</option>
				<option <?php if($persona->pais == 'MEXICO') echo "selected"; ?> value="MEXICO" >MEXICO</option>
				<option <?php if($persona->pais == 'OTRO') echo "selected"; ?> value="OTRO" >OTRO</option>
			</select>
		</p>
		<p>
			Codigo Postal: 
			<input type="number" name="cp" id="cp" value="<?php echo $persona->cp; ?>" required>
		</p>
		<p>
			Tipo de sangre: 
			<select name="tipoSangre" id="tipoSangre" required>
				<option value="">Seleccione un tipo de sangre</option>
				<option <?php if($persona->tipoSangre == 'O+') echo "selected"; ?> value="O+">O+</option>
				<option <?php if($persona->tipoSangre == 'O-') echo "selected"; ?> value="O-">O-</option>
				<option <?php if($persona->tipoSangre == 'B+') echo "selected"; ?> value="B+">B+</option>
				<option <?php if($persona->tipoSangre == 'B-') echo "selected"; ?> value="B-">B-</option>
				<option <?php if($persona->tipoSangre == 'A+') echo "selected"; ?> value="A+">A+</option>
				<option <?php if($persona->tipoSangre == 'A-') echo "selected"; ?> value="A-">A-</option>
				<option <?php if($persona->tipoSangre == 'AB+') echo "selected"; ?> value="AB+">AB+</option>
				<option <?php if($persona->tipoSangre == 'AB-') echo "selected"; ?> value="AB-">AB-</option>	
			</select>
		</p>
		<p>
			Alergias: 
			<input type="checkbox" name="alergias" id="alergias"  <?php if($persona->alergias == 'SI') echo "checked"; ?> value="SI">
		</p>
		<p>
			Tipo de alergia: 
			<input type="text" name="tipoAlergia" id="tipoAlergia" value="<?php echo $persona->tipoAlergia; ?>">
		</p>
		<p>
			Fuma: 
			<input type="checkbox" name="fuma" id="fuma" <?php if($persona->fuma == 'SI') echo "checked"; ?> value="SI">
		</p>
		<p>
			Toma: 
			<input type="checkbox" name="toma" id="toma" <?php if($persona->toma == 'SI') echo "checked"; ?> value="SI">
		</p>
		<p>
			Usa alguna droga: 
			<input type="checkbox" name="droga" id="droga" <?php if($persona->droga == 'SI') echo "checked"; ?> value="SI">
		</p>
		<p>
			Discapacitado: 
			<input type="checkbox" name="discapacitado" id="discapacitado" <?php if($persona->discapacitado == 'SI') echo "checked"; ?> value="SI">
		</p>
		<p>
			Tipo descapacidad: 
			<input type="text" name="tipoDiscapacidad" id="tipoDiscapacidad" value="<?php echo $persona->tipoDiscapacidad; ?>">
		</p>
		<p>
			Estado Civil: 
			<select name="estadoCivil" id="estadoCivil" required>
				<option value="">Seleccione una opcion</option>
				<option <?php if($persona->estadoCivil == 'Soltero') echo "selected"; ?> value="Soltero">Soltero</option>
				<option <?php if($persona->estadoCivil == 'Comprometido') echo "selected"; ?> value="Comprometido">Comprometido</option>
				<option <?php if($persona->estadoCivil == 'En Relacion') echo "selected"; ?> value="En Relacion">En Relacion</option>
				<option <?php if($persona->estadoCivil == 'Casado') echo "selected"; ?> value="Casado">Casado</option>
				<option <?php if($persona->estadoCivil == 'Union Libre') echo "selected"; ?> value="Union Libre">Union Libre</option>
				<option <?php if($persona->estadoCivil == 'Separado') echo "selected"; ?> value="Separado">Separado</option>
				<option <?php if($persona->estadoCivil == 'Divorciado') echo "selected"; ?> value="Divorciado">Divorciado</option>
				<option <?php if($persona->estadoCivil == 'Viudo') echo "selected"; ?> value="Viudo">Viudo</option>
				<option <?php if($persona->estadoCivil == 'Noviazgo') echo "selected"; ?> value="Noviazgo">Noviazgo</option>				
			</select>
		</p>
		<p>
			Email: 
			<input type="email" name="email" id="email" value="<?php echo $persona->email; ?>">
		</p>
		<p>
			Subir Foto:
			<input type="file" name="foto" id="foto">
		</p>
		<p>
			<input type="submit" name="nuevaPersona" id="nuevaPersona" value="Actualizar Datos">
		</p>

	</form>

</body>
</html>