<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Productos extends CI_Model
{

    function __construct()
    {
        parent::__construct();

        $this->load->helper('url');
        $this->load->library('tank_auth');
    }

    public function listaProductos()
    {
        $query = $this->db->get('productos');
        return $query->result();
    }

    public function obtenerProducto($sku)
    {
        $query = $this->db->get_where('productos',array('sku'=> $sku));
        return $query->result();
    }

    public function insertarProducto($datosProducto)
    {
        $result = $this->db->insert('productos',$datosProducto);
        return $this->db->insert_id();
    }

    public function eliminarProducto($sku)
    {
        $query = $this->db->delete('productos',array('sku'=> $sku));
        return $query;
    }

    public function actualizarProducto($sku,$datosProducto)
    {
        $this->db->where('sku',$sku);
        $this->db->update('productos',$datosProducto);
    }

}