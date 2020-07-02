<!DOCTYPE html>
<html>
<head>
	<title><?php echo $titulo; ?></title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
	<p>
		<ol>
			<li><a href="<?php echo base_url(); ?>Controlador/vistaInicio">Inicio</a></li>
			<li><a href="<?php echo base_url(); ?>Controlador/listar_Persona">Eliminar</a></li>
			<li><a href="<?php echo base_url(); ?>Controlador/listar_Persona">Listar</a></li>
		</ol>
	</p>
	<p><h3>Bienvenido al modulo de agregar personas</h3></p>

	<table border="1">
		<thead>
			<tr style="background-color: yellow;" >
				<td>RFC</td>
				<td>Nombre</td>
				<td>Primer apellido</td>
				<td>Segundo apellido</td>
				<td>Detalle</td>
				<td>Editar</td>
				<td>Eliminar</td>

			</tr>
		</thead>
		<tbody>
			<?php foreach ($personas as $persona) { ?>
			<tr>
				<td><?php echo $persona->rfc; ?></td>
				<td><?php echo $persona->nombre; ?></td>
				<td><?php echo $persona->primerApellido; ?></td>
				<td><?php echo $persona->segundoApellido; ?></td>
				<td><a href="<?php echo base_url(); ?>Controlador/detallePersona/<?php echo $persona->id ?>">Detalle</a></td>
				<td><a href="<?php echo base_url(); ?>Controlador/editarPersona/<?php echo $persona->id ?>">Editar</a></td>
				<td><a href="<?php echo base_url(); ?>Controlador/eliminarPersona/<?php echo $persona->id ?>">Eliminar</a></td>

			</tr>
			<?php } ?>
		</tbody>

	</table>

</body>
</html>