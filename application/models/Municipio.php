<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Municipio extends CI_Model
{
    function _construct()
    {
        parent::_construct(); 
    }

    public function getMunicipios()
    {
        $query = $this->db->get('municipio');
        return $query->result();
    }
}
