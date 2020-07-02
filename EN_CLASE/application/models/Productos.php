<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Productos extends CI_Model
{
    function _construct()
    {
        parent::_construct(); 
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

    public function insertarProducto($nombreCorto, $nombreLargo, $unidadMedida, $presentacion, $fechaAlta)
    {
        $producto = array(
            'nombreCorto' => $nombreCorto ,
            'nombreLargo' => $nombreLargo ,
            'unidadMedida' => $unidadMedida ,
            'presentacion' => $presentacion ,
            'fechaAlta' => $fechaAlta  
        );

        $result = $this->db->insert('productos',$producto);
        return $this->db->insert_id();

    }

    public function eliminarProducto($sku)
    {
        $query = $this->db->delete('productos',array('sku'=> $sku));
        return $query;
    }

    public function actualizarProducto($sku, $nombreCorto, $nombreLargo, $unidadMedida, $presentacion, $fechaAlta)
    {
        $data = array(
            //guardar en BD
            'nombreCorto' => $nombreCorto,
            'nombreLargo' => $nombreLargo,
            'unidadMedida' => $unidadMedida,
            'presentacion' => $presentacion,
            'fechaAlta' => $fechaAlta
        );

        $this->db->where('sku',$sku);
        $this->db->update('productos',$data);

    }
}