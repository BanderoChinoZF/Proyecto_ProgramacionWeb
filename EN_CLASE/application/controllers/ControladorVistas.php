<?php defined('BASEPATH') OR exit('No direct script access allowed');
 
class ControladorVistas extends CI_Controller {
   
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
        $this->load->view('index',$data);
    }
}