<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Prueba extends CI_Controller {

    public function _construct()
    {
        parent::_construct();

        $this->load->model('Productos');
    }

    public function listaProductos()
    {
        //Hacemos una consult a model/productos.php en la
        //funcion listaProductos, y guardamos el resultado en en: $resultado
        $resultado = $this->Productos->listaProductos();
        $data['productos'] = $resultado;

        $this->load->view('listado_productos',$data);
    }

    public function detalleProducto($sku)
    {
         //Hacemos una consult a model/productos.php en la
        //funcion listaProductos, y guardamos el resultado en en: $resultado
        $resultado = $this->Productos->obtenerProducto($sku);
        $data['producto'] = $resultado;

        $this->load->view('detalle_producto',$data);

    }

    public function nuevoProducto()
    {
        $this->load->view('nuevo_producto');
    }

    public function guardarProducto()
    {
        if($_POST)
        {
            //guardar en BD
            $nombreCorto = $_POST['nombreCorto'];
            $nombreLargo = $_POST['nombreLargo'];
            $unidadMedida = $_POST['unidadMedida'];
            $presentacion = $_POST['presentacion'];
            $fechaAlta = $_POST['fechaAlta'];

            $resultado = $this->Productos->insertarProducto($nombreCorto, $nombreLargo, $unidadMedida, $presentacion, $fechaAlta);
            
            redirect('Prueba/detalleProducto/'.$resultado);


        }else{
            echo "No puedes ingresar directamente prro :v";
        }
    }

    public function eliminarProducto($sku)
    {
        $resultado = $this->Productos->eliminarProducto($sku);

        $this->load->view('producto_eliminado');

    }

    public function editarProducto($sku)
    {
        $resultado = $this->Productos->obtenerProducto($sku);
        $data['producto'] = $resultado[0]; 

        $this->load->view('editar_producto',$data);

    }

    public function actualizarProducto($sku)
    {
        if($_POST)
        {
            //guardar en BD
            $nombreCorto = $_POST['nombreCorto'];
            $nombreLargo = $_POST['nombreLargo'];
            $unidadMedida = $_POST['unidadMedida'];
            $presentacion = $_POST['presentacion'];
            $fechaAlta = $_POST['fechaAlta'];

            $resultado = $this->Productos->actualizarProducto($sku, $nombreCorto, $nombreLargo, $unidadMedida, $presentacion, $fechaAlta);
            
            redirect('Prueba/detalleProducto/'.$sku);


        }else{
            echo "No puedes ingresar directamente prro :v";
        }
    }

}

//En las URL van a ir de la siguiente manera 127.0.0.1/Clase/Funcion/Parametros

