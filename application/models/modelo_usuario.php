<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class modelo_usuario extends CI_Model
{
    function _construct()
    {
        parent::_construct();

        $this->load->helper('url');
        $this->load->library('tank_auth'); 
    } 

   public function obtenerUsuarios()
   {
   		$query = $this->db->get('users'); 
        return $query->result();
   }

   public function obtenerUnUsuario($id)
   {
   		$query = $this->db->get_where('users',array('id'=> $id)); 
        return $query->result();
   }

}