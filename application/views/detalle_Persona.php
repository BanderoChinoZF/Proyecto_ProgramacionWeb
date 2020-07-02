<!DOCTYPE html>
<html>
<head>
	<title>Detalle Persona</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-light bg-dark">
	  <form class="form-inline">
	    <a class="btn btn-outline-danger" type="button" href="<?php base_url();?>/Controlador/listar_Persona" >Regresar</a>
	  </form>
	</nav>

	<h2>Detalle Persona</h2>



	<?php foreach ($persona as $p) { ?>

	<table border="1">
		<thead>
			<tr style="background-color: yellow;" >
				<td>RFC</td>
				<td>Nombre</td>
				<td>Primer apellido</td>
				<td>Segundo apellido</td>
				<td>Fecha Nacimiento</td>
				<td>Sexo</td>
				<td>CURP</td>
				<td>Ocupacion</td>
				<td>Grado de Estudios</td>
				<td>Calle</td>
				<td>Numero</td>
				<td>Colonia</td>
				<td>Localidad</td>
				<td>Municipios</td>
				<td>Estado</td>
				<td>Pais</td>
				<td>Codigo Postal</td>
				<td>Tipo De Sangre</td>
				<td>Alergias</td>
				<td>Tipo Alergias</td>
				<td>Fumar?</td>
				<td>Tomar?</td>
				<td>Drogas?</td>
				<td>Discapacitado</td>
				<td>Tipo Discapacidad</td>
				<td>Estado Civil</td>
				<td>Email</td>
				<td>Foto</td>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($persona as $p) { 
				$identificador = $p->id; ?>
			<tr>
				<td><?php echo $p->rfc; ?></td>
				<td><?php echo $p->nombre; ?></td>
				<td><?php echo $p->primerApellido; ?></td>
				<td><?php echo $p->segundoApellido; ?></td>
				<td><?php echo $p->fechaNacimiento; ?></td>
				<td><?php echo $p->sexo; ?></td>
				<td><?php echo $p->curp; ?></td>
				<td><?php echo $p->ocupacion; ?></td>
				<td><?php echo $p->gradoEstudios; ?></td>
				<td><?php echo $p->calle; ?></td>
				<td><?php echo $p->numero; ?></td>
				<td><?php echo $p->colonia; ?></td>
				<td><?php echo $p->localidad; ?></td>
				<td><?php echo $p->municipio; ?></td>
				<td><?php echo $p->estado; ?></td>
				<td><?php echo $p->pais; ?></td>
				<td><?php echo $p->cp; ?></td>
				<td><?php echo $p->tipoSangre; ?></td>
				<td><?php echo $p->alergias; ?></td>
				<td><?php echo $p->tipoAlergia; ?></td>
				<td><?php echo $p->fuma; ?></td>
				<td><?php echo $p->toma; ?></td>
				<td><?php echo $p->droga; ?></td>
				<td><?php echo $p->discapacitado; ?></td>
				<td><?php echo $p->tipoDiscapacidad; ?></td>
				<td><?php echo $p->estadoCivil; ?></td>
				<td><?php echo $p->email; ?></td>
				<!-- <td><?php echo $p->foto; ?></td> -->
				<td><img src="<?php base_url(); ?>/fotos/<?php echo $p->foto; ?>" height="150" width="150" ></td>

			</tr>
			<?php } ?>
		</tbody>

	</table>

	<?php } ?>

	<h2>Agregar Mas Fotos << Detalle De Rostro >></h2>

	<table border="1">
		<thead>
			<tr style="background-color: yellow;">

				<td>Foto</td>
				<td>Tipo Foto</td>
				<td>Acción</td>
				
			</tr>
		</thead>
		<tbody>

			<!-- DECLARAMOS EL CUERPO DE LA TABLA DE LAS IMAGENES -->

			<?php foreach ($fotos as $f) { ?>

				<tr>
					
					<td>
					<img src="<?php base_url(); ?>/fotosDetalle/<?php echo $f->foto; ?>" height="150" width="150">
					</td>
					<td> <?php echo $f->tipo ?> </td>
					<td><a href="<?php echo base_url(); ?>Controlador/eliminarFoto/<?php echo $f->id_foto ?>/<?php echo $f->id_persona ?>/<?php echo $f->foto ?>">ELIMINAR</a></td>

				</tr>

			<?php } ?>

			
		</tbody>
	</table>

	<form method="POST" enctype="multipart/form-data" name="detalleFoto" id="detalleFoto" action="<?php echo base_url(); ?>Controlador/guardarDetalleFoto/<?php echo $p->id ?>">

		<p>
			Tipo de Foto: 
			<select name="tipoFoto" id="tipoFoto" required>
				<option value="" selected>Seleccione un tipo</option>
				<option value="PERFIL">PERFIL</option>
				<option value="ATRAS">ATRAS</option>
				<option value="PERSONALIZADA">PERSONALIZADA</option>
			</select>
		</p>
		<p>
			Subir Foto:
			<input type="file" name="foto" id="foto" required>
		</p>
		<p>
			<input type="submit" name="registrarFoto" value="Registrar Nueva Foto">
		</p>
		
	</form>

</body>
</html>