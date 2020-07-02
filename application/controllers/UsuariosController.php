<?php defined('BASEPATH') OR exit('No direct script access allowed');
 
class UsuariosController extends CI_Controller { 
   
    function __construct()
    {
        parent::__construct();

        //Cargando el helper del url
        //permite cargar la url del sitio
        //para usar direcciones absolutas como
        //si fueran relativas
        $this->load->helper('url');
        $this->load->library('tank_auth');

 
    }

    public function listarUsuario()
    {
        if(!$this->tank_auth->is_logged_in()) { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/listarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION AL LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login'); 
        }else
        {
            $prroUsuario_ID = $this->tank_auth->get_user_id();
            $te_econtre_prro = $this->modelo_usuario->obtenerUnUsuario($prroUsuario_ID);

            if($te_econtre_prro[0]->nivel == '0' || $te_econtre_prro[0]->nivel == '1')
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', $this->input->ip_address());

                $data['titulo'] = 'Lista General De Usuarios ::: Modulo de usuarios :: Consulta';
                $data['miga1'] = 'Lista Datos';
                $data['miga2'] = 'Listar Usuarios';

                $usuarios = $this->modelo_usuario->obtenerUsuarios();
                $data['usuarios']=$usuarios;

                $this->load->view('listado_usuarios',$data);

            }else
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/listarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', $this->input->ip_address());

                redirect('Acceso/Principal');
            }
        }
    }

    public function detalleUsuario($id)
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/detalleUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION AL LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            $prroUsuario_ID = $this->tank_auth->get_user_id();
            $te_econtre_prro = $this->modelo_usuario->obtenerUnUsuario($prroUsuario_ID);

            if($te_econtre_prro[0]->nivel == '0' || $te_econtre_prro[0]->nivel == '1')
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', $this->input->ip_address());

                $data['titulo'] = 'Detalles De Usuario ::: Modulo de usuarios :: Detalles Usuario '.$id;
                $data['miga1'] = 'Lista Datos';
                $data['miga2'] = 'Listar Usuarios';
                $data['miga3'] = 'Detalle De Usuario '.$id;

                $usuario = $this->modelo_usuario->obtenerUnUsuario($id);
                $data['usuario']=$usuario;

                $this->load->view('detalleUsuarios',$data);

            }else
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/detalleUsuarios', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', $this->input->ip_address());

                redirect('Acceso/Principal');
            }
        }
    }

    public function  editarUsuario($id)
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/editarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            $prroUsuario_ID = $this->tank_auth->get_user_id();
            $te_econtre_prro = $this->modelo_usuario->obtenerUnUsuario($prroUsuario_ID);

            if($te_econtre_prro[0]->nivel == '0' || $te_econtre_prro[0]->nivel == '1')
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/editarUsuario', 'AUTORIZACION VALIDADA', $this->input->ip_address());

                $usuario = $this->modelo_usuario->obtenerUnUsuario($id);
                $data['usuario']=$usuario;

                $data['titulo'] = 'Editar Informacion De Usuario ::: Modulo de usuarios'.$id;
                $data['miga1'] = 'Usuarios';
                $data['miga2'] = 'Lista de Usuarios';
                $data['miga3'] = 'Editar Info. Usuario " '.$usuario[0]->username.' "';

                $this->load->view('editarUsuario',$data);

            }else
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/editarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', $this->input->ip_address());

                redirect('Acceso/Principal');
            }
        }
    }

    public function registrar_Edicion($id)
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/registrar_Edicion', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            $prroUsuario_ID = $this->tank_auth->get_user_id();
            $te_econtre_prro = $this->modelo_usuario->obtenerUnUsuario($prroUsuario_ID);

            if($te_econtre_prro[0]->nivel == '0' || $te_econtre_prro[0]->nivel == '1')
            {

            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/registrar_Edicion', 'AUTORIZACION VALIDADA', $this->input->ip_address());

                if($_POST)
                {
                    $email = $_POST['email'];
                    $username = $_POST['username'];
                    $nombre = $_POST['nombre'];
                    $primerApellido = $_POST['primerApellido'];
                    $segundoApellido = $_POST['segundoApellido'];
                    $nivelUsuario = $_POST['nivelUsuario'];

                    $datosGenerales = array(
                        'email' => $email,
                        'username' => $username,
                        'nombre' => $nombre,
                        'primerApellido' => $primerApellido,
                        'segundoApellido' => $segundoApellido,
                        'nivel' => $nivelUsuario
                                );

                    $this->Usuarios->insertarGenerales($id,$datosGenerales);

                    redirect('UsuariosController/listarUsuario');
                }

            }else
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/registrar_Edicion', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', $this->input->ip_address());

                redirect('Acceso/Principal');
            }
        }
    }

    public function estaDisponibleUsuario($nombre_usuario = ''){
        echo  $this->tank_auth->is_username_available($nombre_usuario);
    }

    public function estaDisponibleCorreo($correo_electronico = ''){
        echo  $this->tank_auth->is_username_available($nombre_usuario);
    }

    public function registrarUsuario()
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/registrarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            $prroUsuario_ID = $this->tank_auth->get_user_id();
            $te_econtre_prro = $this->modelo_usuario->obtenerUnUsuario($prroUsuario_ID);


            if($te_econtre_prro[0]->nivel == '0' || $te_econtre_prro[0]->nivel == '1')
            {

                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/registrarUsuario', 'AUTORIZACION VALIDADA', $this->input->ip_address());

                $data['titulo'] = 'Registro de Usuario ::: Modulo de usuarios';
                $data['miga1'] = 'Ingresar Nuevos Registros';
                $data['miga2'] = 'Agregar Un Usuario';

                $this->load->view('agregarNuevoUsuario',$data);

            }else
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/registrarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', $this->input->ip_address());

                redirect('Acceso/Principal');
            }
        }
    }

    public function regitrarBD_Usuario()
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/registrarBD_Usuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            $prroUsuario_ID = $this->tank_auth->get_user_id();
            $te_econtre_prro = $this->modelo_usuario->obtenerUnUsuario($prroUsuario_ID);

            if($te_econtre_prro[0]->nivel == '0' || $te_econtre_prro[0]->nivel == '1')
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/registrarBD_Usuario', 'AUTORIZACION VALIDADA', $this->input->ip_address());

                if ($_POST) 
                {
                    $email = $_POST['email'];
                    $username = $_POST['username'];
                    $contra1 = $_POST['contrasena1'];
                    $contra2 = $_POST['contrasena2'];
                    $nombre = $_POST['nombre'];
                    $primerApellido = $_POST['primerApellido'];
                    $segundoApellido = $_POST['segundoApellido'];
                    $nivelUsuario = $_POST['nivelUsuario'];

                        $cotorreo = $this->tank_auth->is_username_available($username);
                        $prro = $this->tank_auth->is_email_available($email);

                        if($cotorreo==true)
                        {
                            if($prro==true)
                            {
                                $this->tank_auth->create_user($username,$email,$contra1,false);

                                $datosGenerales = array(
                                    'nombre' => $nombre,
                                    'primerApellido' => $primerApellido,
                                    'segundoApellido' => $segundoApellido,
                                    'nivel' => $nivelUsuario
                                );

                                $resultado = $this->Usuarios->buscarPorUsuario($username);
                                $id = $resultado[0]->id;

                                $this->Usuarios->insertarGenerales($id,$datosGenerales);

                                $nombreDefault = 'usuario_sin_foto.png';

                                $datosFoto = array(
                                    'id_usuario' => $id,
                                    'foto' => $nombreDefault
                                );

                                $this->Usuarios->insertarFoto($datosFoto);

                                redirect('UsuariosController/listarUsuario');

                            }else
                            {
                                echo '<script>alert("El email '.$email.' ya se ecuentra en uso.");</script>';

                               redirect('UsuariosController/agregarNuevoUsuario');
                            }

                        }else
                        {
                            echo '<script>alert("El Nombre De Usuario '.$username.' ya esta en uso.");</script>';

                            redirect('UsuariosController/agregarNuevoUsuario');
                        }
                }

            }else
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/registrarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', $this->input->ip_address());

                redirect('Acceso/Principal');
            }
        }
    }

    public function eliminarUsuario($id)
    {

        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/eliminarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            $prroUsuario_ID = $this->tank_auth->get_user_id();
            $te_econtre_prro = $this->modelo_usuario->obtenerUnUsuario($prroUsuario_ID);

            if($te_econtre_prro[0]->nivel == '0' || $te_econtre_prro[0]->nivel == '1')
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/eliminarUsuario', 'AUTORIZACION VALIDADA', $this->input->ip_address());

                $fotuqui = $this->Usuarios->obtenerFoto($id);
                $miResult = $this->Usuarios->eliminarFoto($fotuqui[0]->id_foto);

                $resultado = $this->Usuarios->eliminarUsuario($id);

                redirect('UsuariosController/listarUsuario');

             }else
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/eliminarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', $this->input->ip_address());

                redirect('Acceso/Principal');
            }
        }
    }

    public function verPerfil()
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/detalleUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION AL LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', $this->input->ip_address());

            $id = $this->tank_auth->get_user_id();
            $usuario = $this->modelo_usuario->obtenerUnUsuario($id);

            $data['titulo'] = 'Ver Perfil ::: Modulo de usuarios'.$usuario[0]->username;
            $data['miga1'] = 'Config. Usuario';
            $data['miga2'] = 'Ver Perfil De '.$usuario[0]->username;
            $data['usuario'] = $usuario;

            $this->load->view('verPerfil',$data);
        }

    }

    public function guardarFoto()
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/detalleUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION AL LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {

            if ($_POST)
            {
            //Consultamos el nombre de usuario y id correspondientes a la sesion iniciada.
            $no_borrar = 'usuario_sin_foto.png';
            $nombre = $this->tank_auth->get_username();
            $id = $this->tank_auth->get_user_id();

            $resultado = $this->Usuarios->obtenerFoto($id);

            if(!($resultado[0]->foto == $no_borrar))
            {
                $nombre_fichero = 'fotosPerfil/'.$resultado[0]->foto;

                if (file_exists($nombre_fichero)) 
                {   
                    $this->Usuarios->eliminarFoto($resultado[0]->id_foto);
                    unlink('fotosPerfil/'.$resultado[0]->foto);
                }

                $config['upload_path']      = 'fotosPerfil/';
                $config['allowed_types']    = 'gif|jpg|png|jpeg';
                $config['max_size']         = "50000";
                $config['file_name']        = 'foto_perfil_'.$nombre;

                $this->load->library('upload', $config);

                if ( !$this->upload->do_upload('fotoPerfil'))
                {  
                    $error = array('error' => $this->upload->display_errors()); 
                    print_r($error); 
                }
                else
                {  
                    $datosArchivo = array('upload_data' => $this->upload->data());

                    $datosFoto = array(
                            'id_usuario' => $id,
                            'foto' => $datosArchivo['upload_data']['file_name']
                            );

                    $this->Usuarios->insertarFoto($datosFoto);
                    redirect('UsuariosController/verPerfil');
                }

            }else
            {
                $config['upload_path']      = 'fotosPerfil/';
                $config['allowed_types']    = 'gif|jpg|png|jpeg';
                $config['max_size']         = "50000";
                $config['file_name']        = 'foto_perfil_'.$nombre;

                $this->load->library('upload', $config);

                if ( !$this->upload->do_upload('fotoPerfil'))
                {  
                    $error = array('error' => $this->upload->display_errors()); 
                    print_r($error); 
                }
                else
                {  
                    $datosArchivo = array('upload_data' => $this->upload->data());

                    $datosFoto = array(
                            'id_usuario' => $id,
                            'foto' => $datosArchivo['upload_data']['file_name']
                            );

                    $this->Usuarios->actualizarFoto($id, $datosFoto);
                    redirect('UsuariosController/verPerfil');
                }
            }
        }

        }
    }

    public function eliminarFoto()
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'UsuariosController/detalleUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION AL LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //Consultamos el nombre de usuario y id correspondientes a la sesion iniciada.
            $nombreDefault = 'usuario_sin_foto.png';
            $id = $this->tank_auth->get_user_id();

            $resultado = $this->Usuarios->obtenerFoto($id);

            $nombre_fichero = 'fotosPerfil/'.$resultado[0]->foto;

            if (file_exists($nombre_fichero)) 
            {   
                unlink('fotosPerfil/'.$resultado[0]->foto);
            }


            $datosFoto = array(
                        'id_usuario' => $id,
                        'foto' => $nombreDefault
                        );

            $this->Usuarios->actualizarFoto($id,$datosFoto);
            
            redirect('UsuariosController/verPerfil');
        }
    }  
}