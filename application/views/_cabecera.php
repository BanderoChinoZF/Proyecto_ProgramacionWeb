<!DOCTYPE html>
<html>
  <head>
    <title><?php echo $titulo ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="images/favicon.ico" />
    <!-- Bootstrap -->
    <link href="<?php echo base_url(); ?>minoral/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/animate.min.css"> 
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/rickshaw.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/bootstrap-checkbox.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/summernote.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/summernote-bs3.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/chosen.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/chosen-bootstrap.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/js/plugins/tabdrop/css/tabdrop.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/morris.css">
    <link href="<?php echo base_url(); ?>minoral/css/minoral.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="amethyst-scheme">
   
    <!--/Preloader -->

    <!-- Wrap all page content here -->
    <div id="wrap">

      


      <!-- Make page fluid -->
      <div class="row">

        <!-- Fixed navbar -->
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
          


          <!-- Branding -->
          <div class="navbar-header col-md-2">
            <a class="navbar-brand" href="<?php echo base_url(); ?>Acceso/principal">
              <strong>Inven</strong> <span class="divider vertical"></span> TI v0.01
            </a>
          </div>
          <!-- Branding end -->
          
          <!-- .nav-collapse -->
          <div class="navbar-collapse">

            <!-- Content collapsing at 768px to sidebar -->
            <div class="collapsing-content">

              <!-- Search -->
              <div class="search">
                <input type="text" placeholder="&#61442; Search in dashboard...">
              </div>
              <!-- Search end -->

              <!-- CONTROLES DE USUARIO -->
              <div class="user-controls">
                <ul>

                  <li class="dropdown settings">
                    <a class="dropdown-toggle options" data-toggle="dropdown" href="#">
                      <i class="fa fa-cog"> Configuraciones de Usuario</i>
                    </a>
                    
                    <ul class="dropdown-menu arrow">

                      <li class="divider"></li>

                      <li>
                        <a href="<?php echo base_url(); ?>UsuariosController/verPerfil"><i class="fa fa-user"></i>Ver Perfil</a>
                      </li>

                      <li class="divider"></li>

                      <li>
                        <a href="<?php echo base_url(); ?>Acceso/cambiarEmail"><i class="fa fa-pencil"></i> Cambiar Email</a>
                      </li>

                      <li class="divider"></li>

                      <li>
                        <a href="<?php echo base_url(); ?>Acceso/cambiarContrasenia"><i class="fa fa-pencil"></i> Cambiar Contraseña</a>
                      </li>

                      <li class="divider"></li>

                      <li>
                        <a href="<?php echo base_url(); ?>Acceso/cerrarSesion"><i class="fa fa-power-off"></i> Cerrar Sesion</a>
                      </li>
                    </ul>
                  </li>

                </ul>
              </div>
              <!-- User Controls end -->

            



            </div>
            <!-- /Content collapsing at 768px to sidebar -->



            <!-- Sidebar -->
            <ul class="nav navbar-nav side-nav" id="navigation">
              <li class="collapsed-content">
                <!-- Collapsed content pasting here at 768px -->
              </li>
              <li class="user-status status-online" id="user-status">
                <div class="profile-photo">
                  <?php
                    $prroID = $this->tank_auth->get_user_id();

                    $prraFoto = $this->Usuarios->obtenerFoto($prroID);

                    if (!is_null($prraFoto[0]->foto)) 
                    {
                  ?>

                   <img src="<?php base_url(); ?>/fotosPerfil/<?php echo $prraFoto[0]->foto; ?>" alt>
                  <?php}else { ?>

                    <img src="<?php base_url(); ?>/fotosPerfil/usuario_sin_foto.png" alt>

                  <?php }?>

                </div>
                <div class="user">
                  <?php echo $datos_usuario->nombre ?><strong> <?php echo $datos_usuario->primerApellido ?> </strong>

                  <?php $miID = $this->tank_auth->get_user_id();
                        $miDato = $this->modelo_usuario->obtenerUnUsuario($miID); 

                  if($miDato[0]->nivel == '0') { ?>

                    <span class="role">Desarrollador</span>

                  <?php }else if($miDato[0]->nivel == '1'){ ?>

                    <span class="role">Administrador</span>

                  <?php }else{ ?>

                    <span class="role">Trabajador</span>

                  <?php } ?>
                </div>
              </li>
              
              <!-- ELEMENTO DEL MENU DESPLEGABLE PARA LISTAR -->
            <?php $miID = $this->tank_auth->get_user_id();
                  $miDato = $this->modelo_usuario->obtenerUnUsuario($miID); 

                  if($miDato[0]->nivel == '0' || $miDato[0]->nivel == '1') { ?>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Forms">
                  <i class="fa fa-users">
                    <span class="overlay-label green"></span>
                  </i>
                  Usuarios <b class="fa fa-angle-left dropdown-arrow"></b>
                </a>
                <ul class="dropdown-menu">
                  <li>
                    <a href="<?php echo base_url(); ?>UsuariosController/registrarUsuario" title="Common Elements">
                      <i class="fa fa-pencil"><span class="overlay-label green80"></span></i>
                      Registrar Usuario
                    </a>
                  </li>
                  <li>
                    <a href="<?php echo base_url(); ?>UsuariosController/listarUsuario" title="Validation">
                      <i class="fa fa-list"><span class="overlay-label green60"></span></i>
                      Listar Todos Los Uusuarios
                    </a>
                  </li>
                </ul>
              </li>

            <?php } ?>

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Interface">
                  <i class="fa fa-th">
                    <span class="overlay-label amethyst"></span>
                  </i>
                  Productos<b class="fa fa-angle-left dropdown-arrow"></b>
                </a>
                <ul class="dropdown-menu">
                  <li>
                    <a href="<?php echo base_url(); ?>ProductosController/nuevoProducto" title="UI Elements">
                      <i class="fa fa-pencil"><span class="overlay-label amethyst80"></span></i>
                      Registrar Nuevo Producto
                    </a>
                  </li>
                  <li>
                    <a href="<?php echo base_url(); ?>ProductosController/listaProductos" title="Typography">
                      <i class="fa fa-list"><span class="overlay-label amethyst60"></span></i>
                      Listar Productos
                    </a>
                  </li>
                </ul>
              </li>
          </div>
          <!--/.nav-collapse -->

        </div>
        <!-- Fixed navbar end -->
        
        <!-- CONTENIDO DE LA PAGINA DEL DASHBOARD O PRINCIPAL -->
        <div id="content" class="col-md-12">
          
          