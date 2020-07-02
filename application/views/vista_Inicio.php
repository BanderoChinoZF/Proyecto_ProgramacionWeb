<!DOCTYPE html>
<html>
<head>
	<title>Bienvenido Al Registro</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
</head>
<body>

	<h2>¿Que Accion Deseea Realizar?</h2>

	<br>
	<a href="<?php echo base_url(); ?>/Controlador/agregarPersona">Nueva Persona</a>

	<br>
	<br>
	<a href="<?php echo base_url(); ?>/Controlador/listar_Persona">Listado De Personas</a>	

	<br>
	<br>
	<a href="<?php echo base_url(); ?>/Controlador/listar_Persona">Editar Persona</a>

	<br>
	<br>
	<a href="<?php echo base_url(); ?>/Controlador/listar_Persona">Eliminar Persona</a>
</body>
</html>