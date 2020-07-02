<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ProductosController extends CI_Controller {

    function __construct()
    {
        parent::__construct();

        $this->load->helper('url');
        $this->load->library('tank_auth');
    }

    public function nuevoProducto()
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/nuevoProducto', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', $this->input->ip_address());

            $data['titulo'] = 'Registro De Productos Nuevos ::: Modulo De Productos';
            $data['miga1'] = 'Productos';
            $data['miga2'] = 'Registrar Nuevo Producto';

            $this->load->view('nuevo_producto',$data);
        }
    }

    public function guardarProducto()
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/guardarProducto', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/guardarProducto', 'AUTORIZACION VALIDADA', $this->input->ip_address());

            if ($_POST) 
            {
                $nombreCorto = $_POST['nombreCorto'];
                $nombreLargo = $_POST['nombreLargo'];
                $unidadMedida = $_POST['unidadMedida'];
                $presentacion = $_POST['presentacion'];
                $fechaAlta = $_POST['fechaAlta'];

                $datosProducto = array(
                    'nombreCorto' => $nombreCorto,
                    'nombreLargo' => $nombreLargo,
                    'unidadMedida' => $unidadMedida,
                    'presentacion' => $presentacion,
                    'fechaAlta' => $fechaAlta
                );

                $this->Productos->insertarProducto($datosProducto);

                redirect('ProductosController/listaProductos');
            }
        }
    }

    public function listaProductos()
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/listaProductos', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', $this->input->ip_address());

            $data['titulo'] = 'Lista De Todos Los Productos ::: Modulo De Productos';
            $data['miga1'] = 'Productos';
            $data['miga2'] = 'Lista De Productos';

            $resultado = $this->Productos->listaProductos();
            $data['productos'] = $resultado;

            $this->load->view('listarProductos',$data);
        }
    }

    public function detalleProducto($sku)
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/eliminarProducto', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', $this->input->ip_address());

            $data['titulo'] = 'Detalle De Producto'.$sku.' ::: Modulo De Productos';
            $data['miga1'] = 'Productos';
            $data['miga2'] = 'Lista De Productos';
            $data['miga3'] = 'Detalle De Producto'.$sku;

            $resultado = $this->Productos->obtenerProducto($sku);
            $data['producto'] = $resultado;

            $this->load->view('detalleProducto',$data);
        }
    }

    public function eliminarProducto($sku)
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/eliminarProducto', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            $prroUsuario_ID = $this->tank_auth->get_user_id();
            $te_econtre_prro = $this->modelo_usuario->obtenerUnUsuario($prroUsuario_ID);

            if($te_econtre_prro[0]->nivel == '0' || $te_econtre_prro[0]->nivel == '1')
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/eliminarProducto', 'AUTORIZACION VALIDADA', $this->input->ip_address());

                $resultado = $this->Productos->eliminarProducto($sku);

                redirect('ProductosController/listaProductos');

             }else
            {
                //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
                $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/eliminarProducto', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', $this->input->ip_address());

                redirect('Acceso/Principal');
            }
        }
    }

    public function editarProducto($sku)
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/editarProducto', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', $this->input->ip_address());

            $data['titulo'] = 'Editar Informacion Del Producto'.$sku.' ::: Modulo De Productos';
            $data['miga1'] = 'Productos';
            $data['miga2'] = 'Lista De Productos';
            $data['miga3'] = 'Editar Producto'.$sku;

            $resultado = $this->Productos->obtenerProducto($sku);
            $data['producto'] = $resultado;

            $this->load->view('editarProducto',$data);
        }
    }

    public function actualizarProducto($sku)
    {
        if(!$this->tank_auth->is_logged_in())
        { 
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosControlller/actualizarProducto', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', $this->input->ip_address());

            echo '<script>alert("No Has Iniciado Sesion En El Sistema.");</script>';

            redirect('Acceso/login');
        }else
        {
            //REGISTRAMOS EN EL LOG MOVIMIENTOS DEL USUARIO
            $this->Sistema->log($this->tank_auth->get_username(), 'GET', 'ProductosController/actualizarProducto', 'AUTORIZACION VALIDADA', $this->input->ip_address());

            if ($_POST) 
            {
                $nombreCorto = $_POST['nombreCorto'];
                $nombreLargo = $_POST['nombreLargo'];
                $unidadMedida = $_POST['unidadMedida'];
                $presentacion = $_POST['presentacion'];
                $fechaAlta = $_POST['fechaAlta'];

                $datosProducto = array(
                    'nombreCorto' => $nombreCorto,
                    'nombreLargo' => $nombreLargo,
                    'unidadMedida' => $unidadMedida,
                    'presentacion' => $presentacion,
                    'fechaAlta' => $fechaAlta
                );

                $this->Productos->actualizarProducto($sku,$datosProducto);

                redirect('ProductosController/listaProductos');
            }
        }

    }

}

//En las URL van a ir de la siguiente manera 127.0.0.1/Clase/Funcion/Parametros

