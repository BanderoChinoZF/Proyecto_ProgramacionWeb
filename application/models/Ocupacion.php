<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Ocupacion extends CI_Model
{
    function _construct()
    {
        parent::_construct(); 
    }

    public function getOcupaciones()
    {
        $query = $this->db->get('ocupaciones');
        return $query->result();
    }

}