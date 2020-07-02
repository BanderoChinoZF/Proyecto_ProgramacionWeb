<!DOCTYPE html>
<html>
<head>
	<title>Listado De Productos</title>
</head>
<body>

	<table border="1">

	  <thead>

	  	<th> <b>ID</b></th>
	  	<th><b>Nombre Corto</b></th>
	  	
	  </thead>

	  <tbody>

	  <?php foreach ($productos as $producto) { ?>

	  	<tr>

		    <td><?php echo $producto->sku; ?></td>

		    <td><?php echo $producto->nombreCorto; ?></td>

		    <td> <a href="<?php echo base_url(); ?>Prueba/detalleProducto/<?php echo $producto->sku; ?>">Ver detalles</a> </td>

			</tr>

	  <?php } ?>

	</tbody>

</table>

</body>
</html>