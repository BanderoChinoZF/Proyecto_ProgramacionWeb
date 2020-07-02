<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Sistema extends CI_Model
{
    function _construct()
    {
        parent::_construct(); 
    }

    public function log($user,$accion,$comentario,$variable,$ip)
    {
    	$data = array(
    		'user' => $user,
    		'accion' => $accion,
    		'comentario' => $comentario,
    		'variable' => $variable,
    		'ip' => $ip
    	);

    	$this->db->insert('log',$data);
    }

}