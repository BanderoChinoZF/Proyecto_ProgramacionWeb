<?php defined('BASEPATH') OR exit('No direct script access allowed');
 
class Controlador extends CI_Controller {
   
    function __construct()
    {
        parent::__construct();

        //Cargando el helper del url
        //permite cargar la url del sitio
        //para usar direcciones absolutas como
        //si fueran relativas
        $this->load->helper('url');
 
    }
 
    public function verMunicipios()
    {
        $resultado = $this->Municipio->getMunicipios();
        $data['municipios'] = $resultado;

        $data['municipio_persona'] = 67;
        $this->load->view('vistaMunicipios',$data);
    }

    public function vistaInicio()
    {

         $data['titulo'] = 'Bienvenido A Mi Primer CRUD.';

        $this->load->view('vista_Inicio',$data);

    }

    public function agregarPersona()
    {

        $resultado1 = $this->Municipio->getMunicipios();
        $data['municipios'] = $resultado1;

        $resultado2 = $this->Ocupacion->getOcupaciones();
        $data['ocupaciones'] = $resultado2;

        $data['titulo'] = 'Modulo ::: Agregar Persona.';

        $this->load->view('agregar_Persona',$data);
    }

    public function listar_Persona()
    {
        $data['titulo'] = 'Lista General De Personas ::: Modulo de persona :: Consulta';

        $personas = $this->Persona->listaPersonas();
        $data['personas']=$personas;

        $this->load->view('listar_Persona',$data);
    }

    public function guardarPersona()
    { 
        
        if ($_POST) 
        {
            //Validaciones para los checkbox en HTMl
            //Si no estan definidas la variable asignamos un valor por defecto
            //Insertar en la base de datos
            //$alergias = $_POST['alergias'];
            if (!isset($_POST['alergias'])) {
                $alergias='NO';
            }else
            {
                $alergias = $_POST['alergias'];
            }

            //$fuma = $_POST['fuma'];
            if (!isset($_POST['fuma'])) {
                $fuma = 'NO';
            }else
            {
                $fuma = $_POST['fuma'];
            }

            //$toma = $_POST['toma'];
            if (!isset($_POST['toma'])) {
                $toma = 'NO';
            }else
            {
                $toma = $_POST['toma'];
            }

            //$droga = $_POST['droga'];
            if (!isset($_POST['droga'])) {
                $droga = 'NO';
            }else
            {
                $droga = $_POST['droga'];
            }

            //$discapacitado = $_POST['discapacitado'];
            if (!isset($_POST['discapacitado'])){
                $discapacitado = 'NO';
            }else
            {
                $discapacitado = $_POST['discapacitado'];
            }

            $config['upload_path']          = 'fotos/';
            $config['allowed_types']        = 'gif|jpg|png|jpeg';
            $config['file_name']        = 'foto_'.$_POST['rfc'];

            $this->load->library('upload', $config);

            if ( !$this->upload->do_upload('foto'))
            {  
                $error = array('error' => $this->upload->display_errors()); 
                print_r($error); 
            }
            else
            {  

                $datosArchivo = array('upload_data' => $this->upload->data());

                $rfc = $_POST['rfc'];
                $nombre = $_POST['nombre'];
                $primerApellido = $_POST['primerApellido'];
                $segundoApellido = $_POST['segundoApellido'];
                $fechaNacimiento = $_POST['fechaNacimiento'];
                $sexo = $_POST['sexo'];
                $curp = $_POST['curp'];
                $ocupacion = $_POST['ocupacion'];
                $gradoEstudios = $_POST['gradoEstudios'];
                $calle = $_POST['calle'];
                $numero = $_POST['numero'];
                $colonia = $_POST['colonia'];
                $localidad = $_POST['localidad'];
                $municipio = $_POST['municipio'];
                $estado = $_POST['estado'];
                $pais = $_POST['pais'];
                $cp = $_POST['cp'];
                $tipoSangre = $_POST['tipoSangre'];
                $tipoAlergia = $_POST['tipoAlergia'];
                $tipoDiscapacidad = $_POST['tipoDiscapacidad'];
                $estadoCivil = $_POST['estadoCivil'];
                $email = $_POST['email'];
                $foto = 'foto_'.$rfc;

                $datosPersona = array(
                        'rfc' => $rfc,
                        'nombre' => $nombre,
                        'primerApellido' => $primerApellido,
                        'segundoApellido' => $segundoApellido,
                        'fechaNacimiento' => $fechaNacimiento,
                        'sexo' => $sexo,
                        'curp' => $curp,
                        'ocupacion' => $ocupacion,
                        'gradoEstudios' => $gradoEstudios,
                        'calle' => $calle,
                        'numero' => $numero,
                        'colonia' => $colonia,
                        'localidad' => $localidad,
                        'municipio' => $municipio,
                        'estado' => $estado,
                        'pais' => $pais,
                        'cp' => $cp,
                        'tipoSangre' => $tipoSangre,
                        'alergias' => $alergias,
                        'tipoAlergia' => $tipoAlergia,
                        'fuma' => $fuma,
                        'toma' => $toma,
                        'droga' => $droga,
                        'discapacitado' => $discapacitado,
                        'tipoDiscapacidad' => $tipoDiscapacidad,
                        'estadoCivil' => $estadoCivil,
                        'email' => $email,
                        'foto' => $datosArchivo['upload_data']['file_name']
                        );

                $this->Persona->insertarPersona($datosPersona);
                redirect('Controlador/listar_Persona');
            }
        }
    }

    public function detallePersona($id)
    {
        $resultado1 = $this->Persona->obtenerPersona($id);
        $data['persona'] = $resultado1;

        $resultado2 = $this->Persona->obtenerFotos($id);
        $data['fotos'] = $resultado2;

        $this->load->view('detalle_Persona',$data);

    }

    public function eliminarPersona($id)
    {
        $resultado = $this->Persona->eliminarPersona($id);

        redirect('Controlador/listar_Persona');
    }

     public function editarPersona($id)
    {
        $resultado1 = $this->Municipio->getMunicipios();
        $data['municipios'] = $resultado1;

        $resultado2 = $this->Ocupacion->getOcupaciones();
        $data['ocupaciones'] = $resultado2;

        $resultado = $this->Persona->obtenerPersona($id);
        $data['persona'] = $resultado[0]; 

        $this->load->view('editar_Persona',$data);

    }

    public function actualizarPersona($id)
    {
        if ($_POST) 
        {
            //Validaciones para los checkbox en HTMl
            //Si no estan definidas la variable asignamos un valor por defecto
            //Insertar en la base de datos
            //$alergias = $_POST['alergias'];
            if (!isset($_POST['alergias'])) {
                $alergias='NO';
            }else
            {
                $alergias = $_POST['alergias'];
            }

            //$fuma = $_POST['fuma'];
            if (!isset($_POST['fuma'])) {
                $fuma = 'NO';
            }else
            {
                $fuma = $_POST['fuma'];
            }

            //$toma = $_POST['toma'];
            if (!isset($_POST['toma'])) {
                $toma = 'NO';
            }else
            {
                $toma = $_POST['toma'];
            }

            //$droga = $_POST['droga'];
            if (!isset($_POST['droga'])) {
                $droga = 'NO';
            }else
            {
                $droga = $_POST['droga'];
            }

            //$discapacitado = $_POST['discapacitado'];
            if (!isset($_POST['discapacitado'])){
                $discapacitado = 'NO';
            }else
            {
                $discapacitado = $_POST['discapacitado'];
            }
    
            //Consulta a personas
            $resultado = $this->Persona->obtenerPersona($id);

            $nombre_fichero = 'fotos/'.$resultado[0]->foto;

            if (file_exists($nombre_fichero))
            {                
                unlink('fotos/'.$resultado[0]->foto);
            }

            $config['upload_path']          = 'fotos/';
            $config['allowed_types']        = 'gif|jpg|png|jpeg';
            $config['file_name']        = 'foto_'.$_POST['rfc'];

            $this->load->library('upload', $config);

            if(!$this->upload->do_upload('foto'))
            { 
                $error = array('error' => $this->upload->display_errors()); 
                print_r($error); 
            }
            else
            {  

                $datosArchivo = array('upload_data' => $this->upload->data());

                $rfc = $_POST['rfc'];
                $nombre = $_POST['nombre'];
                $primerApellido = $_POST['primerApellido'];
                $segundoApellido = $_POST['segundoApellido'];
                $fechaNacimiento = $_POST['fechaNacimiento'];
                $sexo = $_POST['sexo'];
                $curp = $_POST['curp'];
                $ocupacion = $_POST['ocupacion'];
                $gradoEstudios = $_POST['gradoEstudios'];
                $calle = $_POST['calle'];
                $numero = $_POST['numero'];
                $colonia = $_POST['colonia'];
                $localidad = $_POST['localidad'];
                $municipio = $_POST['municipio'];
                $estado = $_POST['estado'];
                $pais = $_POST['pais'];
                $cp = $_POST['cp'];
                $tipoSangre = $_POST['tipoSangre'];
                $tipoAlergia = $_POST['tipoAlergia'];
                $tipoDiscapacidad = $_POST['tipoDiscapacidad'];
                $estadoCivil = $_POST['estadoCivil'];
                $email = $_POST['email'];
                $foto = 'foto_'.$rfc;

                $datosPersona = array(
                        'rfc' => $rfc,
                        'nombre' => $nombre,
                        'primerApellido' => $primerApellido,
                        'segundoApellido' => $segundoApellido,
                        'fechaNacimiento' => $fechaNacimiento,
                        'sexo' => $sexo,
                        'curp' => $curp,
                        'ocupacion' => $ocupacion,
                        'gradoEstudios' => $gradoEstudios,
                        'calle' => $calle,
                        'numero' => $numero,
                        'colonia' => $colonia,
                        'localidad' => $localidad,
                        'municipio' => $municipio,
                        'estado' => $estado,
                        'pais' => $pais,
                        'cp' => $cp,
                        'tipoSangre' => $tipoSangre,
                        'alergias' => $alergias,
                        'tipoAlergia' => $tipoAlergia,
                        'fuma' => $fuma,
                        'toma' => $toma,
                        'droga' => $droga,
                        'discapacitado' => $discapacitado,
                        'tipoDiscapacidad' => $tipoDiscapacidad,
                        'estadoCivil' => $estadoCivil,
                        'email' => $email,
                        'foto' => $datosArchivo['upload_data']['file_name']
                        );

                $this->Persona->actualizarPersona($id, $datosPersona);
                redirect('Controlador/listar_Persona');
                
            }
        } 
    }

    //METODOS PARA LAS FOTOS
    public function guardarDetalleFoto($id)
    {
        if ($_POST)
        {
            //Consulta a personas
            $resultado = $this->Persona->obtenerFotos($id);

            foreach ($resultado as $result) 
            {
                if ($_POST['tipoFoto'] == $result->tipo) 
                {
                    $nombre_fichero = 'fotosDetalle/'.$result->foto;

                    if (file_exists($nombre_fichero)) 
                    {   
                        $this->Persona->eliminarFoto($result->id_foto);
                        unlink('fotosDetalle/'.$result->foto);
                    }
                }
            }

            $config['upload_path']      = 'fotosDetalle/';
            $config['allowed_types']    = 'gif|jpg|png|jpeg';
            $config['max_size']         = "50000";
            $config['file_name']        = 'foto_'.$_POST['tipoFoto'].'_'.$id;

            $this->load->library('upload', $config);

            if ( !$this->upload->do_upload('foto'))
            {  
                $error = array('error' => $this->upload->display_errors()); 
                print_r($error); 
            }
            else
            {  
                $datosArchivo = array('upload_data' => $this->upload->data());

                $tipoFoto = $_POST['tipoFoto'];

                $datosFoto = array(
                        'id_persona' => $id,
                        'tipo' => $tipoFoto,
                        'foto' => $datosArchivo['upload_data']['file_name']
                        );

                $this->Persona->insertarFoto($datosFoto);
                redirect('Controlador/detallePersona/'.$id);
            }

        }
    }

    public function eliminarFoto($id,$idPersona,$nombreFoto)
    {
        $resultado = $this->Persona->eliminarFoto($id);

        $nombre_fichero = 'fotosDetalle/'.$nombreFoto;

        if (file_exists($nombre_fichero)) 
        {   
            unlink('fotosDetalle/'.$nombreFoto);
        }

        redirect('Controlador/detallePersona/'.$idPersona);
    }
}
