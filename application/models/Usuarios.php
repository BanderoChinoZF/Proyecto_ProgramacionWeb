<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); 

class Usuarios extends CI_Model
{
    function _construct()
    {
        parent::__construct(); 
    }

    public function datos_usuario($id)
    {
        $query = $this->db->get_where('users', array('id' => $id));
        return $query->result();
    }

    public function buscarPorUsuario($username)
    {
    	$query = $this->db->get_where('users', array('username' => $username));
        return $query->result();
    }

    public function insertarGenerales($id, $datosGenerales)
    {
    	$this->db->where('id',$id);
    	$this->db->update('users', $datosGenerales);
    }

    public function eliminarUsuario($id)
    {
        $query = $this->db->delete('users',array('id'=> $id));
        return $query;
    }


    //PARA LAS FOTOS DE PERFIL DE LOS USUARIOS
    //Metodos para agregar fotos a la base de datos
    public function insertarFoto($datosPersona)
    {
        $result = $this->db->insert('fotosUsuarios',$datosPersona);
    }

    public function obtenerFoto($id)
    {
        $query = $this->db->get_where('fotosUsuarios',array('id_usuario'=> $id)); 
        return $query->result();
    }

    public function eliminarFoto($id)
    {
        $query = $this->db->delete('fotosUsuarios',array('id_foto'=> $id));
        return $query;
    }

     public function actualizarFoto($id, $datosGenerales)
    {
        $this->db->where('id_usuario',$id);
        $this->db->update('fotosUsuarios', $datosGenerales);
    }

}
