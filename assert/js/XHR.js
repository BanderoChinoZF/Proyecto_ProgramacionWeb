var XHR = (function(){

	const _solicitud_get = function(obj_arg){
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = _atender_cambios_estado(xhr,obj_arg);
		xhr.open("GET",obj_arg.url+"?r="+Math.random(),true);
		xhr.send();
	};

	const _solicitud_post = function(obj_arg){
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = _atender_cambios_estado(xhr,obj_arg);
		xhr.open("POST",obj_arg.url,true);
        xhr.send(new FormData(obj_arg.formulario));
	}

	const _atender_cambios_estado = function(xhr,obj_arg){
		return function(){
			if (xhr.readyState === 4) {
				if (xhr.status >= 200 && xhr.status <= 299) {
					obj_arg.exito(obj_arg.url,xhr);
				}else{
					obj_arg.fallo(obj_arg.url,xhr);
				}
			}
		}
	};

	

	return {
		"get":_solicitud_get,
		"post":_solicitud_post
	};
	
})();