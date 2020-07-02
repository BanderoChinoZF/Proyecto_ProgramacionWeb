
const _validarEliminacion = function(id_usuario)
{
	if(confirm("¿Seguro deseea elimnar el registro?"))
	{
		document.location = 'http://127.0.0.1/UsuariosController/eliminarUsuario/'+id_usuario;
	}
};

const _validarEliminacionProducto = function(sku)
{
	if(confirm("¿Seguro deseea elimnar el registro?"))
	{
		document.location = 'http://127.0.0.1/ProductosController/eliminarProducto/'+sku;
	}
};

const _valida_contrasenias = function (){
	let $input_Contrasena1 = document.getElementById('contrasena1');
	let $input_Contrasena2 = document.getElementById('contrasena2');

	return $input_Contrasena1.value === $input_Contrasena2.value;
};

const _valida_NuevaContrasenia = function (){
	let $input_Contrasena1 = document.getElementById('contraNueva1');
	let $input_Contrasena2 = document.getElementById('contraNueva2');

	return $input_Contrasena1.value === $input_Contrasena2.value;
};

const fn_exito = function(url,xhr){
	document.write('esxito respuesta desde el servidor');
};


const _existe_nombre_usuario = function(){
	var nombre_usuario = document.getElementById('username').value;

	XHR.get({'url':'http://127.0.0.1/UsuariosController/estaDisponibleUsuario/'+nombre_usuario,
			 'exito':fn_exito,
			 'fallo':function(url,xhr){
			 	   console.log('Nel  no funcina');
			 }});
};

const _validar_cambio_contrasenia = function(){
	//Validamos las nuevas contraseña que sean iguales
	if (!_valida_NuevaContrasenia()) 
	{
		alert('Las Nuevas Contraseñas No Coinciden\nIntenta nuevamente por favor.');
		return false;
	}

};

const _validar_cambio_email = function()
{
	if(confirm("¿Esta de acuerdo con el cambio de email?"))
	{
		document.location = 'http://127.0.0.1/Acceso/guardarNuevoEmail';
	}

};

const _validar_registro = function()
{
	//_existe_nombre_usuario();
	if (!_valida_contrasenias()) 
	{
		alert('Las Contraseñas No Coinciden.');
		return false;
	}



};

/*const _validar_registro = function (){
	//_existe_nombre_usuario();
	if(!_valida_contrasenias()){
		alert('contraseñas no coinciden');
		return false;
	}else{
		//confirm('¿Seguro que quiere registrar?')
		XHR.post({'url':'http://127.0.0.1/UsuariosController/regitrarBD_Usuario',
			'formulario':document.getElementById('registroUsuarios'),
			 'exito':fn_exito,
			 'fallo':function(url,xhr){
			 	   console.log('Nel  no funcina');
			 }});
		return false ;
	}
	
};*/



