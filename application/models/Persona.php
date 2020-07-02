<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Persona extends CI_Model
{
    function _construct()
    {
        parent::_construct(); 
    }

    public function listaPersonas()
    {
        $query = $this->db->get('personas');
        return $query->result();
    }

    public function insertarPersona($datosPersona)
    {
        $result = $this->db->insert('personas',$datosPersona);
        return $this->db->insert_id();

    }

    public function obtenerPersona($id)
    {
        $query = $this->db->get_where('personas',array('id'=> $id)); 
        return $query->result();
    } 

    public function eliminarPersona($id)
    {
        $query = $this->db->delete('personas',array('id'=> $id));
        return $query;
    }

    public function actualizarPersona($id, $datosPersona)
    {
    	$this->db->where('id',$id);
        $this->db->update('personas',$datosPersona);
    }

    //Metodos para agregar fotos a la base de datos
    public function insertarFoto($datosPersona)
    {
        $result = $this->db->insert('fotos',$datosPersona);
    }

    public function obtenerFotos($id)
    {
        $query = $this->db->get_where('fotos',array('id_persona'=> $id)); 
        return $query->result();
    }

    public function eliminarFoto($id)
    {
        $query = $this->db->delete('fotos',array('id_foto'=> $id));
        return $query;
    }


}