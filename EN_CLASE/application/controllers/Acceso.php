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
 
    }
 
    public function index()
    {
        $data['titulo'] = 'Acceso :: SGI Gestion de Inventarios';
        $this->load->view('login',$data);
    }

    public function formulario()
    {
        $data['titulo'] = 'Formulario';
        $this->load->view('formulario',$data);
    }

    public function procesar_informacion()
    {
        print_r($_POST);
    }

    public function verFormulario()
    {
        $data['titulo'] = 'Registro';
        $this->load->view('registro',$data);
    }
}