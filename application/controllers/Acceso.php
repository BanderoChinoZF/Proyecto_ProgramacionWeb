<?php defined('BASEPATH') OR exit('No direct script access allowed');
 
class Acceso extends CI_Controller {
   
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

    public function index()
    {
        $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/', '', $this->input->ip_address());
        redirect('Acceso/login');
    }

    public function login(){
        $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/login', '', $this->input->ip_address());

        if ($this->tank_auth->is_logged_in()) { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/login', 'Redireccion a principal', $this->input->ip_address());
            redirect('Acceso/principal'); }

        $data['titulo'] = 'Acceso InvenTI v0.01';
        
        if ($_POST) { 

            $this->Sistema->log($this->tank_auth->get_username(), 'POST', 'Acceso/login', 'Intento de acceso con credenciales '.$_POST['username'].' - '.$_POST['password'], $this->input->ip_address());

            $login = $this->tank_auth->login($_POST['username'], $_POST['password'], false, true, true);
            if ($login==1) { redirect('Acceso/principal'); } else { $this->load->view('login', $data); }

         } else { $this->load->view('login', $data); }
    }

    public function cerrarSesion(){
        $this->tank_auth->logout();
        redirect('Acceso/login');
    }

    public function principal(){

        if(!$this->tank_auth->is_logged_in()) { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/principal', 'ACCESO NO AUTORIZADO', $this->input->ip_address());
            redirect('Acceso/login'); }

        $data['titulo'] = 'Dashboard InvenTI v0.01';
        $data['miga1'] = 'Principal';
        $data['miga2'] = 'Dashboard';
        $data['id_user'] = $this->tank_auth->get_user_id();
        $data['username'] = $this->tank_auth->get_username();
        $datos_usuario = $this->Usuarios->datos_usuario($data['id_user']);
        $data['datos_usuario'] =  $datos_usuario[0];
        //guardando log de sistema
        $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/principal', '', $this->input->ip_address());

        $this->load->view('vista_principal',$data);

    }

    public function cambiarContrasenia()
    {

        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/cambiarContrasenia', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', $this->input->ip_address());

            $data['titulo'] = 'Cambiar Contraseña ::: Config. Usuario';
            $data['miga1'] = 'Configuracion Usuario';
            $data['miga2'] = 'Cambiar Contraseña';

            $this->load->view('cambiarPassword',$data);
            
        }

    }

    public function guardarNuevaContra()
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/guardarNuevaContra', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/guardarNuevaContra', 'AUTORIZACION VALIDADA', $this->input->ip_address());

            if($_POST)
                {
                    $antiguaContra = $_POST['antiguaContra'];
                    $contraNueva1 = $_POST['contraNueva1'];

                    $resultado = $this->tank_auth->change_password($antiguaContra,$contraNueva1);

                    redirect('Acceso/principal');

                    if (!$resultado) 
                    {
                         echo '<script>alert("No se puedo completar el cambio de Contraseña.");</script>';

                        redirect('Acceso/cambiarContrasenia');                        
                    }
                } 
        }
    }

    public function cambiarEmail()
    {
         if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/cambiarEmail', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', $this->input->ip_address());

            $data['titulo'] = 'Cambiar Email ::: Config. Usuario';
            $data['miga1'] = 'Configuracion Usuario';
            $data['miga2'] = 'Cambiar Correo Electronico';

            $this->load->view('cambiarEmail',$data);
            
        }

    }

    public function guardarNuevoEmail()
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/guardarNuevaContra', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'Acceso/guardarNuevaContra', 'AUTORIZACION VALIDADA', $this->input->ip_address());

            if($_POST)
                {
                    $id_user = $this->tank_auth->get_user_id();
                    $nuevoEmail = $_POST['nuevoEmail'];

                    $datosGenerales = array(
                        'email' => $nuevoEmail
                                );

                    $this->Usuarios->insertarGenerales($id_user,$datosGenerales);

                    redirect('Acceso/principal');

                    if (!$resultado) 
                    {
                         echo '<script>alert("No se puedo completar el cambio de Contraseña.");</script>';

                        redirect('Acceso/cambiarContrasenia');                        
                    }
                } 
        }

    }


    /*public function nuevoUsuario($usuario, $password){
        $data = $this->tank_auth->create_user(
                        $usuario,
                        $usuario."@itoaxaca.mx",
                        $password,
                        FALSE);
        print_r($data);
    }*/
}