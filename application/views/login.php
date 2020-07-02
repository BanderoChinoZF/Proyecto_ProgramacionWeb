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
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/bootstrap-checkbox.css">
 
    <link href="<?php echo base_url(); ?>minoral/css/minoral.css" rel="stylesheet">
 
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
   <!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
     <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
   <![endif]-->
 </head>
 <body class="brownish-scheme">
 
   <!-- El preloader o carga es opcional -->
   <!-- Preloader 
   <div class="mask"><div id="loader"></div></div>
   /Preloader -->
 
   <!-- Wrap all page content here -->
   <div id="wrap">
 
     
 
 
     <!-- Make page fluid -->
     <div class="row">        
       
 
 
 
 
       
       <!-- Page content -->
       <div id="content" class="col-md-12 full-page login">
 
 
         <div class="welcome">
           <img src="images/logo-big.png" alt class="logo">
           <h1><strong>Bienvenidos</strong> Inicia Sesion</h1>
           <h5>SGI :: Sistema de Gestion de Inventarios</h5>
 
           <form id="form-signin" name="formulario_login" class="form-signin" method="POST" action="<?php echo base_url(); ?>/Acceso/login">
             <section>
               <div class="input-group">
                 <input type="text" class="form-control" name="username" placeholder="Username">
                 <div class="input-group-addon"><i class="fa fa-user"></i></div>
               </div>
               <div class="input-group">
                 <input type="password" class="form-control" name="password" placeholder="Password">
                 <div class="input-group-addon"><i class="fa fa-key"></i></div>
               </div>
             </section>
             <section class="controls">
               <div class="checkbox check-transparent">
                 <input type="checkbox" value="1" id="remember" checked>
                 <label for="remember">Recordarme</label>
               </div>
               <a href="#" class="pull-right">Olvidaste La Contraseña?</a>
             </section>
             <section class="new-acc">
               <input class="btn btn-greensea" type="submit" id="acceder" name="acceder" value="Acceder">
             </section>
           </form>
         </div>
         
 
         
         <a href="index.html" class="log-in">Ingresar<i class="fa fa-arrow-right fa-5x"></i></a>
 
 
 
       </div>
       <!-- Page content end -->
 
 
 
 
 
 
     </div>
     <!-- Make page fluid-->
 
 
 
 
   </div>
   <!-- Wrap all page content end -->
 
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?php echo base_url(); ?>minoral/js/bootstrap.min.js"></script>
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&amp;skin=sons-of-obsidian"></script>
    <script src="<?php echo base_url(); ?>minoral/js/plugins/jquery.nicescroll.min.js"></script>
    <script src="<?php echo base_url(); ?>minoral/js/plugins/blockui/jquery.blockUI.js"></script>
 
 
    <script src="<?php echo base_url(); ?>minoral/js/minoral.min.js"></script>
 
    <script>
    $(function(){
     
      $('.welcome').addClass('animated bounceIn');
 
    })
     
    </script>
  </body>
</html>