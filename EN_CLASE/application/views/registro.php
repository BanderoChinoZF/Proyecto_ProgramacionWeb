<!DOCTYPE html>
<html>
  <head>
    <title>Registro Persona</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="images/favicon.ico" />
    <!-- Bootstrap -->
    <link href="<?php echo base_url(); ?>minoral/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/animate.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/summernote.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/summernote-bs3.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/chosen.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/chosen-bootstrap.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/datepicker3.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/js/plugins/datetimepicker/css/bootstrap-datetimepicker.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>minoral/css/bootstrap-colorpicker.css">
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

    <!-- Preloader -->
    <div class="mask"><div id="loader"></div></div>
    <!--/Preloader -->

    <!-- Wrap all page content here -->
    <div id="wrap">

      


      <!-- Make page fluid -->
      <div class="row">
        




        <!-- Fixed navbar -->
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
          


          <!-- Branding -->
          <div class="navbar-header col-md-2">
            <a class="navbar-brand" href="index.html">
              <strong>MIN</strong> <span class="divider vertical"></span> ORAL
            </a>
            <div class="sidebar-collapse">
              <a href="#">
                <i class="fa fa-bars"></i>
              </a>
            </div>
          </div>
          <!-- Branding end -->


          <!-- .nav-collapse -->
          <div class="navbar-collapse">
            

            

            <!-- Content collapsing at 768px to sidebar -->
            <div class="collapsing-content">




              <!-- Quick Actions -->
              <ul class="nav navbar-nav">
                <li class="divided">
                  <a href="#" class="page-refresh"><i class="fa fa-refresh"></i></a>
                  <span class="divider vertical"></span>
                </li>
                
                <li class="dropdown quick-action tasks">
                  <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                    <i class="fa fa-tasks"></i>
                    <span class="overlay-label green">5</span>
                  </a>
                  <ul class="dropdown-menu wide arrow green nopadding">
                    <li><h1>You have <strong>5</strong> new tasks</h1></li>
                    <li>
                      <a href="#">
                        <div class="task-info">
                          <div class="desc">Layout</div>
                          <div class="percent">80%</div>
                        </div>
                        <div class="progress progress-striped progress-thin">
                          <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                            <span class="sr-only">40% Complete (success)</span>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <div class="task-info">
                          <div class="desc">Schemes</div>
                          <div class="percent">15%</div>
                        </div>
                        <div class="progress progress-striped active progress-thin">
                          <div class="progress-bar progress-bar-cyan" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 15%">
                            <span class="sr-only">45% Complete</span>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <div class="task-info">
                          <div class="desc">Forms</div>
                          <div class="percent">5%</div>
                        </div>
                        <div class="progress progress-striped progress-thin">
                          <div class="progress-bar progress-bar-orange" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 5%">
                            <span class="sr-only">5% Complete (warning)</span>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <div class="task-info">
                          <div class="desc">JavaScript</div>
                          <div class="percent">30%</div>
                        </div>
                        <div class="progress progress-striped progress-thin">
                          <div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                            <span class="sr-only">30% Complete (danger)</span>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <div class="task-info">
                          <div class="desc">Dropdowns</div>
                          <div class="percent">60%</div>
                        </div>
                        <div class="progress progress-striped progress-thin">
                          <div class="progress-bar progress-bar-amethyst" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                            <span class="sr-only">60% Complete</span>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li><a href="#">Check all tasks <i class="fa fa-angle-right"></i></a></li>
                  </ul>
                </li>

                <li class="dropdown quick-action notifications">
                  <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell"></i>
                    <span class="overlay-label orange">12</span>
                  </a>
                  <ul class="dropdown-menu wide arrow orange nopadding">
                    <li><h1>You have <strong>12</strong> new notifications</h1></li>

                    <li>
                      <a href="#">
                        <span class="label label-green"><i class="fa fa-user"></i></span>
                        New user registered.
                        <span class="small">18 mins</span>
                      </a>
                    </li>

                    <li>
                      <a href="#">
                        <span class="label label-red"><i class="fa fa-power-off"></i></span>
                        Server down.
                        <span class="small">27 mins</span>
                      </a>
                    </li>

                    <li>
                      <a href="#">
                        <span class="label label-orange"><i class="fa fa-plus"></i></span>
                        New order.
                        <span class="small">36 mins</span>
                      </a>
                    </li>

                    <li>
                      <a href="#">
                        <span class="label label-cyan"><i class="fa fa-power-off"></i></span>
                        Server restared.
                        <span class="small">45 mins</span>
                      </a>
                    </li>

                    <li>
                      <a href="#">
                        <span class="label label-amethyst"><i class="fa fa-power-off"></i></span>
                        Server started.
                        <span class="small">50 mins</span>
                      </a>
                    </li>

                     <li><a href="#">Check all notifications <i class="fa fa-angle-right"></i></a></li>
                  </ul>
                </li>

              </ul>
              <!-- Quick Actions end -->





              <!-- Search -->
              <div class="search">
                <input type="text" placeholder="&#61442; Search in form elements...">
              </div>
              <!-- Search end -->





              <!-- User Controls -->
              <div class="user-controls">
                <ul>

                 
                  <li class="dropdown messages">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                      <span class="badge badge-red" id="user-new-messages">3</span> John <strong>Douey</strong> <i class="fa fa-angle-down"></i>
                    </a>
                    <div class="profile-photo">
                      <img src="images/profile-photo.jpg" alt />
                    </div>
                    <ul class="dropdown-menu wide arrow red nopadding">
                      <li><h1>You have <strong>3</strong> new messages</h1></li>

                      <li>
                        <a class="cyan" href="#">
                          <div class="profile-photo">
                            <img src="images/ici-avatar.jpg" alt />
                          </div>
                          <div class="message-info">
                            <span class="sender">Ing. Imrich Kamarel</span>
                            <span class="time">12 mins</span>
                            <div class="message-content">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum</div>
                          </div>
                        </a>
                      </li>

                      <li>
                        <a class="green" href="#">
                          <div class="profile-photo">
                            <img src="images/arnold-avatar.jpg" alt />
                          </div>
                          <div class="message-info">
                            <span class="sender">Arnold Karlsberg</span>
                            <span class="time">1 hour</span>
                            <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                          </div>
                        </a>
                      </li>

                      <li>
                        <a href="#">
                          <div class="profile-photo">
                            <img src="images/profile-photo.jpg" alt />
                          </div>
                          <div class="message-info">
                            <span class="sender">John Douey</span>
                            <span class="time">3 hours</span>
                            <div class="message-content">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</div>
                          </div>
                        </a>
                      </li>

                      <li>
                        <a class="red" href="#">
                          <div class="profile-photo">
                            <img src="images/peter-avatar.jpg" alt />
                          </div>
                          <div class="message-info">
                            <span class="sender">Peter Kay</span>
                            <span class="time">5 hours</span>
                            <div class="message-content">Ut enim ad minim veniam, quis nostrud exercitation</div>
                          </div>
                        </a>
                      </li>

                      <li>
                        <a class="orange" href="#">
                          <div class="profile-photo">
                            <img src="images/george-avatar.jpg" alt />
                          </div>
                          <div class="message-info">
                            <span class="sender">George McCain</span>
                            <span class="time">6 hours</span>
                            <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                          </div>
                        </a>
                      </li>


                      <li><a href="#">Check all messages <i class="fa fa-angle-right"></i></a></li>
                    </ul>
                  </li>

                  <li class="dropdown settings">
                    <a class="dropdown-toggle options" data-toggle="dropdown" href="#">
                      <i class="fa fa-cog"></i>
                    </a>
                    
                    <ul class="dropdown-menu arrow">

                      <li>
                        <h3>Color schemes:</h3>
                        <ul id="color-schemes">
                          <li><a href="#" class="brownish-scheme" title="Brownish"></a></li>
                          <li><a href="#" class="darkgrey-scheme" title="Dark Grey"></a></li>
                          <li><a href="#" class="lightgrey-scheme" title="Light Grey"></a></li>
                          <li><a href="#" class="cyan-scheme" title="Cyan"></a></li>
                          <li><a href="#" class="red-scheme" title="Red"></a></li>
                          <li><a href="#" class="orange-scheme" title="Orange"></a></li>
                          <li><a href="#" class="green-scheme" title="Green"></a></li>
                          <li><a href="#" class="amethyst-scheme" title="Amethyst"></a></li>
                        </ul>
                      </li>

                      <li class="divider"></li>

                      <li>
                        <a href="#"><i class="fa fa-user"></i> Profile</a>
                      </li>

                      <li>
                        <a href="#"><i class="fa fa-calendar"></i> Calendar</a>
                      </li>

                      <li>
                        <a href="#"><i class="fa fa-envelope"></i> Inbox <span class="badge badge-red" id="user-inbox">3</span></a>
                      </li>

                      <li class="divider"></li>

                      <li>
                        <a href="#"><i class="fa fa-power-off"></i> Logout</a>
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
                  <img src="images/profile-photo.jpg" alt />
                </div>
                <div class="user">
                  John <strong>Douey</strong>
                  <span class="role">Administrator</span>
                  <div class="status">
                    <ul>
                      <li class="dropdown change-status">
                        <a class="dropdown-toggle my-status" data-toggle="dropdown" href="#">Online</a>
                        
                        <ul class="dropdown-menu arrow">
                          <li>
                            <a href="#" id="status-online" data-status="status-online">Online</a>
                          </li>

                          <li>
                            <a href="#" id="status-away" data-status="status-away">Away</a>
                          </li>

                          <li>
                            <a href="#" id="status-invisible" data-status="status-invisible">Invisible</a>
                          </li>
                        </ul>
                      </li>
                    </ul>

                    
                  </div>
                </div>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Dashboard">
                  <i class="fa fa-dashboard">
                    <span class="overlay-label red"></span>
                  </i> 
                  Dashboard <b class="fa fa-angle-left dropdown-arrow"></b>
                  <span class="badge badge-cyan">1</span>
                </a>
                <ul class="dropdown-menu">
                  <li>
                    <a href="index.html" title="Overview">
                      <i class="fa fa-eye"><span class="overlay-label red80"></span></i>
                      Overview
                    </a>
                  </li>
                  <li>
                    <a href="mail.html" title="Inbox">
                      <i class="fa fa-envelope"><span class="overlay-label red60"></span></i>
                      Inbox
                    </a>
                  </li>
                  
                </ul>
              </li>
              <li class="dropdown open">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Forms">
                  <i class="fa fa-list">
                    <span class="overlay-label green"></span>
                  </i>
                  Forms <b class="fa fa-angle-left dropdown-arrow"></b>
                </a>
                <ul class="dropdown-menu">
                  <li class="active">
                    <a href="form-elements.html" title="Common Elements">
                      <i class="fa fa-thumb-tack"><span class="overlay-label green80"></span></i>
                      Common Elements
                    </a>
                  </li>
                  <li>
                    <a href="validation-elements.html" title="Validation">
                      <i class="fa fa-check-square"><span class="overlay-label green60"></span></i>
                      Validation
                    </a>
                  </li>
                  <li>
                    <a href="form-wizard.html"  title="Form Wizard">
                      <i class="fa fa-shield"><span class="overlay-label green40"></span></i>
                      Form Wizard
                    </a>
                  </li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Interface">
                  <i class="fa fa-pencil">
                    <span class="overlay-label amethyst"></span>
                  </i>
                  Interface <b class="fa fa-angle-left dropdown-arrow"></b>
                </a>
                <ul class="dropdown-menu">
                  <li>
                    <a href="ui-elements.html" title="UI Elements">
                      <i class="fa fa-puzzle-piece"><span class="overlay-label amethyst80"></span></i>
                      UI Elements
                    </a>
                  </li>
                  <li>
                    <a href="typography.html" title="Typography">
                      <i class="fa fa-font"><span class="overlay-label amethyst60"></span></i>
                      Typography
                    </a>
                  </li>
                  <li>
                    <a href="nestable.html" title="Nestable Lists">
                      <i class="fa fa-arrows"><span class="overlay-label amethyst40"></span></i>
                      Nestable Lists
                    </a>
                  </li>
                  <li>
                    <a href="tiles.html" title="Tiles">
                      <i class="fa fa-th"><span class="overlay-label amethyst40"></span></i>
                      Tiles
                    </a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="buttons.html" title="Buttons & Icons">
                  <i class="fa fa-tint">
                    <span class="overlay-label orange"></span>
                  </i>
                  Buttons & Icons
                </a>
              </li>
              <li>
                <a href="grid.html" title="Grid Layout">
                  <i class="fa fa-th">
                    <span class="overlay-label cyan"></span> 
                  </i>
                  Grid Layout
                </a>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Tables">
                  <i class="fa fa-th-large">
                    <span class="overlay-label greensea"></span>
                  </i>
                  Tables <b class="fa fa-angle-left dropdown-arrow"></b>
                </a>
                <ul class="dropdown-menu">
                  <li>
                    <a href="tables.html" title="Bootstrap Tables">
                      <i class="fa fa-puzzle-piece"><span class="overlay-label greensea80"></span></i>
                      Bootstrap Tables
                    </a>
                  </li>
                  <li>
                    <a href="datatables.html" title="DataTables">
                      <i class="fa fa-lightbulb-o"><span class="overlay-label greensea60"></span></i>
                      DataTables
                    </a>
                  </li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Example Pages">
                  <i class="fa fa-desktop">
                    <span class="overlay-label drank"></span>  
                  </i>
                  Example Pages <b class="fa fa-angle-left dropdown-arrow"></b>
                  <span class="label label-greensea">mails</span>
                </a>
                <ul class="dropdown-menu">
                  <li>
                    <a href="login.html" title="Login Page">
                      <i class="fa fa-user"><span class="overlay-label drank80"></span></i>
                      Login Page
                    </a>
                  </li>
                  <li>
                    <a href="calendar.html" title="Calendar">
                      <i class="fa fa-calendar"><span class="overlay-label drank60"></span></i>
                      Calendar
                    </a>
                  </li>
                  <li class="dropdown-submenu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown-submenu" title="Mail">
                      <i class="fa fa-exclamation-circle"><span class="overlay-label drank40"></span></i>
                      Error Pages <b class="fa fa-angle-left dropdown-arrow"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="page404.html" title="Page 404">
                          <i class="fa fa-level-up"></i>
                          Page 404
                        </a>
                      </li>
                      <li>
                        <a href="page403.html" title="Page 403">
                          <i class="fa fa-level-up"></i>
                          Page 403
                        </a>
                      </li>
                      <li>
                        <a href="page500.html" title="Page 500">
                          <i class="fa fa-level-up"></i>
                          Page 500
                        </a>
                      </li>
                      <li>
                        <a href="page503.html" title="Page 503">
                          <i class="fa fa-level-up"></i>
                          Page 503
                        </a>
                      </li>
                      <li>
                        <a href="page-offline.html" title="Page Offline">
                          <i class="fa fa-level-up"></i>
                          Offline
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="gallery.html" title="Gallery">
                      <i class="fa fa-camera"><span class="overlay-label drank20"></span></i>
                      Gallery
                    </a>
                  </li>
                  <li>
                    <a href="timeline.html" title="Timeline">
                      <i class="fa fa-clock-o"><span class="overlay-label drank20"></span></i>
                      Timeline
                    </a>
                  </li>
                  <li>
                    <a href="chat.html" title="Chat">
                      <i class="fa fa-comments"><span class="overlay-label drank20"></span></i>
                      Chat
                    </a>
                  </li>
                  <li>
                    <a href="search-result.html" title="Search Results">
                      <i class="fa fa-search"><span class="overlay-label drank20"></span></i>
                      Search Results
                    </a>
                  </li>
                  <li>
                    <a href="nav-right.html" title="RTL Direction">
                      <i class="fa fa-align-right"><span class="overlay-label drank20"></span></i>
                      RTL Direction
                    </a>
                  </li>
                  <li class="dropdown-submenu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown-submenu" title="Mail">
                      <i class="fa fa-envelope"><span class="overlay-label drank20"></span></i>
                      Mail <b class="fa fa-angle-left dropdown-arrow"></b>
                      <span class="label label-greensea">mails</span>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="mail.html" title="Vertical View">
                          <i class="fa fa-level-up"></i>
                          Vertical View
                          <span class="label label-greensea">mails</span>
                        </a>
                      </li>
                      <li>
                        <a href="mail-horizontal.html" title="Horizontal View">
                          <i class="fa fa-level-up"></i>
                          Horizontal View
                          <span class="badge badge-red">3</span>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="dropdown-submenu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown-submenu" title="Maps">
                      <i class="fa fa-map-marker"><span class="overlay-label drank20"></span></i>
                      Maps <b class="fa fa-angle-left dropdown-arrow"></b>
                      <span class="badge badge-red">2</span>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="vector-maps.html" title="Vector Maps">
                          <i class="fa fa-level-up"></i>
                          Vector Maps
                        </a>
                      </li>
                      <li>
                        <a href="google-maps.html" title="Google Maps">
                          <i class="fa fa-level-up"></i>
                          Google Maps
                        </a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li>
                <a href="widgets.html" title="Widgets">
                  <i class="fa fa-play-circle">
                    <span class="overlay-label hotpink"></span>  
                  </i>
                  Widgets
                </a>
              </li>
              <li>
                <a href="charts.html" title="Charts & Graphs">
                  <i class="fa fa-bar-chart-o">
                    <span class="overlay-label dutch"></span>  
                  </i>
                  Charts & Graphs
                </a>
              </li>
            </ul>
            <!-- Sidebar end -->





          </div>
          <!--/.nav-collapse -->





        </div>
        <!-- Fixed navbar end -->
        




        
        <!-- Page content -->
        <div id="content" class="col-md-12">
          








          <!-- breadcrumbs -->
          <div class="breadcrumbs">
            <ol class="breadcrumb">
              <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
              <li><a href="form-elements.html">Forms</a></li>
              <li class="active">Common Elements</li>
            </ol>
          </div>
          <!-- /breadcrumbs -->







          <!-- submenu -->
          <div class="submenu">
            <h1>Forms</h1>
            <div class="collapsed">
              <a href="#" id="submenutoggle"><h1>Forms <i class="fa fa-bars"></i></h1></a>
            </div>
            <ul class="nav nav-tabs">
              <li class="active"><a href="form-elements.html">Common Elements</a></li>
              <li><a href="validation-elements.html">Validation</a></li>
              <li><a href="form-wizard.html">Form Wizard</a></li>
            </ul>
          </div>
          <!-- /submenu -->


          
          




          <!-- content main container -->
          <div class="main">
            
            


            <!-- row -->
            <div class="row">




              <!-- col 6 -->
              <div class="col-md-6">
              

                
                <!-- tile -->
                <section class="tile">


                  <!-- tile header -->
                  <div class="tile-header">
                    <h1><strong>Text</strong> Inputs</h1>
                    <div class="controls">
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body">
                    
                    <form class="form-horizontal" role="form">
                      
                      <div class="form-group">
                        <label for="input01" class="col-sm-4 control-label">Normal input field</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="input01">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="input02" class="col-sm-4 control-label">Password input field</label>
                        <div class="col-sm-8">
                          <input type="password" class="form-control" id="input02">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="input03" class="col-sm-4 control-label">Input with help text</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="input03">
                          <span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="input04" class="col-sm-4 control-label">Input field with placeholder</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="input04" placeholder="This is placeholder...">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="input05" class="col-sm-4 control-label">Normal textarea</label>
                        <div class="col-sm-8">
                          <textarea class="form-control" id="input05" rows="3"></textarea>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="col-sm-4 control-label">Textarea with editor</label>
                        <div class="col-sm-8">
                          <div class="form-control" id="input06"></div>
                        </div>
                      </div>

                      <div class="form-group form-footer">
                        <div class="col-sm-offset-4 col-sm-8">
                          <button type="submit" class="btn btn-primary">Submit</button>
                          <button type="reset" class="btn btn-default">Reset</button>
                        </div>
                      </div>

                    </form>

                  </div>
                  <!-- /tile body -->
                

                  <!-- show code btn -->
                  <button class="btn show-code" data-toggle="modal" data-target="#textInputsCodeModal">
                    show code
                  </button>
                  <!-- /show code btn -->


                  <!-- Modal -->
                  <div class="modal fade" id="textInputsCodeModal" tabindex="-1" role="dialog" aria-labelledby="textInputCode" aria-hidden="true">
                    <div class="modal-dialog wide">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title" id="textInputCode">Text Inputs tile - Source Code</h4>
                        </div>
                        <div class="modal-body">


<!-- Source Code -->

<pre class="prettyprint linenums">
//tile
&lt;section class="tile"&gt;

  //tile header
  &lt;div class="tile-header"&gt;
    &lt;h1&gt;&lt;strong&gt;Text&lt;/strong&gt; Inputs&lt;/h1&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  //tile body
  &lt;div class="tile-body"&gt;
                      
    &lt;form class="form-horizontal" role="form"&gt;
      
      &lt;div class="form-group"&gt;
        &lt;label for="input01" class="col-sm-4 control-label"&gt;Normal input field&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;input type="text" class="form-control" id="input01"&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group"&gt;
        &lt;label for="input02" class="col-sm-4 control-label"&gt;Password input field&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;input type="password" class="form-control" id="input02"&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group"&gt;
        &lt;label for="input03" class="col-sm-4 control-label"&gt;Input with help text&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;input type="text" class="form-control" id="input03"&gt;
          &lt;span class="help-block"&gt;A block of help text that breaks onto a new line and may extend beyond one line.&lt;/span&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group"&gt;
        &lt;label for="input04" class="col-sm-4 control-label"&gt;Input field with placeholder&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;input type="text" class="form-control" id="input04" placeholder="This is placeholder..."&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group"&gt;
        &lt;label for="input05" class="col-sm-4 control-label"&gt;Normal textarea&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;textarea class="form-control" id="input05" rows="3"&gt;&lt;/textarea&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group"&gt;
        &lt;label for="input06" class="col-sm-4 control-label"&gt;Textarea with editor&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;div class="form-control" id="input06"&gt;&lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group form-footer"&gt;
        &lt;div class="col-sm-offset-4 col-sm-8"&gt;
          &lt;button type="submit" class="btn btn-primary"&gt;Submit&lt;/button&gt;
          &lt;button type="reset" class="btn btn-default"&gt;Reset&lt;/button&gt;
        &lt;/div&gt;
      &lt;/div&gt;

    &lt;/form&gt;

  &lt;/div&gt;
  // /tile body

&lt;/section&gt;
// /tile

//****************************//
//*********** jquery *********//
//****************************//

//load wysiwyg editor
$('#input06').summernote({
  height: 130   //set editable area's height
});

</pre>
<!-- /Source Code -->



                        </div>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->
                


                </section>
                <!-- /tile -->



              </div>
              <!-- /col 6 -->



              <!-- col 6 -->
              <div class="col-md-6">
              

                
                <!-- tile -->
                <section class="tile color greensea cornered">


                  <!-- tile header -->
                  <div class="tile-header">
                    <h1><strong>Other</strong> Inputs</h1>
                    <div class="controls">
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body">
                    
                    <form class="form-horizontal" role="form">
                      
                      <div class="form-group">
                        <label for="input07" class="col-sm-4 control-label">Normal select box</label>
                        <div class="col-sm-8">
                          <select class="chosen-select form-control" id="input07">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                          </select>
                        </div>
                      </div>

                       <div class="form-group">
                        <label for="input08" class="col-sm-4 control-label">Multiple select box</label>
                        <div class="col-sm-8">
                          <select multiple class="chosen-select form-control" id="input08">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                          </select>
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="datepicker" class="col-sm-4 control-label">Datepicker field</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="datepicker">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="datetimepicker" class="col-sm-4 control-label">Datetimepicker field</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="datetimepicker">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="colorpicker" class="col-sm-4 control-label">Colorpicker HEX field</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="colorpicker">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="colorpicker-rgb" class="col-sm-4 control-label">Colorpicker RGB field</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="colorpicker-rgb">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="colorpicker-rgb" class="col-sm-4 control-label">File Upload field</label>
                        <div class="col-sm-8">
                          <div class="input-group">
                          <span class="input-group-btn">
                            <span class="btn btn-primary btn-file">
                              Browse… <input type="file" multiple="">
                            </span>
                          </span>
                          <input type="text" class="form-control" readonly="">
                        </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="col-sm-4 control-label">Checkbox inputs</label>
                        <div class="col-sm-8">
                          <div class="checkbox">
                            <input type="checkbox" value="1" id="opt01" checked>
                            <label for="opt01">Option 1</label>
                          </div>
                          <div class="checkbox">
                            <input type="checkbox" value="1" id="opt02">
                            <label for="opt02">Option 2</label>
                          </div>
                          <div class="checkbox">
                            <input type="checkbox" value="1" id="opt03">
                            <label for="opt03">Option 3</label>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="col-sm-4 control-label">Radio inputs</label>
                        <div class="col-sm-8">
                          <div class="radio">
                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                            <label for="optionsRadios1">Option 1</label>
                          </div>
                          <div class="radio">
                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                            <label for="optionsRadios2">Option 2</label>
                          </div>
                          <div class="radio">
                            <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
                            <label for="optionsRadios3">Option 3</label>
                          </div>
                        </div>
                      </div>

                      <div class="form-group form-footer footer-white">
                        <div class="col-sm-offset-4 col-sm-8">
                          <button type="submit" class="btn btn-greensea">Submit</button>
                          <button type="reset" class="btn btn-red">Reset</button>
                        </div>
                      </div>
                            
                    </form>

                  </div>
                  <!-- /tile body -->
                

                  <!-- show code btn -->
                  <button class="btn show-code" data-toggle="modal" data-target="#otherInputsCodeModal">
                    show code
                  </button>
                  <!-- /show code btn -->


                  <!-- Modal -->
                  <div class="modal fade" id="otherInputsCodeModal" tabindex="-1" role="dialog" aria-labelledby="otherInputsCode" aria-hidden="true">
                    <div class="modal-dialog wide">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title" id="otherInputsCode">Other Inputs tile - Source Code</h4>
                        </div>
                        <div class="modal-body">


<!-- Source Code -->

<pre class="prettyprint linenums">
//tile
&lt;section class="tile color greensea cornered"&gt;

  //tile header
  &lt;div class="tile-header"&gt;
    &lt;h1&gt;&lt;strong&gt;Other&lt;/strong&gt; Inputs&lt;/h1&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  //tile body
  &lt;div class="tile-body"&gt;
                    
    &lt;form class="form-horizontal" role="form"&gt;
      
      &lt;div class="form-group"&gt;
        &lt;label for="input07" class="col-sm-4 control-label"&gt;Normal select box&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;select class="chosen-select form-control" id="input07"&gt;
            &lt;option&gt;1&lt;/option&gt;
            &lt;option&gt;2&lt;/option&gt;
            &lt;option&gt;3&lt;/option&gt;
            &lt;option&gt;4&lt;/option&gt;
            &lt;option&gt;5&lt;/option&gt;
          &lt;/select&gt;
        &lt;/div&gt;
      &lt;/div&gt;

       &lt;div class="form-group"&gt;
        &lt;label for="input08" class="col-sm-4 control-label"&gt;Multiple select box&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;select multiple class="chosen-select form-control" id="input08"&gt;
            &lt;option&gt;1&lt;/option&gt;
            &lt;option&gt;2&lt;/option&gt;
            &lt;option&gt;3&lt;/option&gt;
            &lt;option&gt;4&lt;/option&gt;
            &lt;option&gt;5&lt;/option&gt;
          &lt;/select&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group"&gt;
        &lt;label for="datepicker" class="col-sm-4 control-label"&gt;Datepicker field&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;input type="text" class="form-control" id="datepicker"&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group"&gt;
        &lt;label for="colorpicker" class="col-sm-4 control-label"&gt;Colorpicker HEX field&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;input type="text" class="form-control" id="colorpicker"&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group"&gt;
        &lt;label for="colorpicker-rgb" class="col-sm-4 control-label"&gt;Colorpicker RGB field&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;input type="text" class="form-control" id="colorpicker-rgb"&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group"&gt;
        &lt;label for="colorpicker-rgb" class="col-sm-4 control-label"&gt;File Upload field&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;div class="input-group"&gt;
          &lt;span class="input-group-btn"&gt;
            &lt;span class="btn btn-primary btn-file"&gt;
              Browse… &lt;input type="file" multiple=""&gt;
            &lt;/span&gt;
          &lt;/span&gt;
          &lt;input type="text" class="form-control" readonly=""&gt;
        &lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group"&gt;
        &lt;label class="col-sm-4 control-label"&gt;Checkbox inputs&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;div class="checkbox"&gt;
            &lt;input type="checkbox" value="1" id="opt01" checked&gt;
            &lt;label for="opt01"&gt;Option 1&lt;/label&gt;
          &lt;/div&gt;
          &lt;div class="checkbox"&gt;
            &lt;input type="checkbox" value="1" id="opt02"&gt;
            &lt;label for="opt02"&gt;Option 1&lt;/label&gt;
          &lt;/div&gt;
          &lt;div class="checkbox"&gt;
            &lt;input type="checkbox" value="1" id="opt03"&gt;
            &lt;label for="opt03"&gt;Option 1&lt;/label&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group"&gt;
        &lt;label class="col-sm-4 control-label"&gt;Radio inputs&lt;/label&gt;
        &lt;div class="col-sm-8"&gt;
          &lt;div class="radio"&gt;
            &lt;input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked&gt;
            &lt;label for="optionsRadios1"&gt;Option 1&lt;/label&gt;
          &lt;/div&gt;
          &lt;div class="radio"&gt;
            &lt;input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"&gt;
            &lt;label for="optionsRadios2"&gt;Option 2&lt;/label&gt;
          &lt;/div&gt;
          &lt;div class="radio"&gt;
            &lt;input type="radio" name="optionsRadios" id="optionsRadios3" value="option3"&gt;
            &lt;label for="optionsRadios3"&gt;Option 3&lt;/label&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;

      &lt;div class="form-group form-footer footer-white"&gt;
        &lt;div class="col-sm-offset-4 col-sm-8"&gt;
          &lt;button type="submit" class="btn btn-greensea"&gt;Submit&lt;/button&gt;
          &lt;button type="reset" class="btn btn-red"&gt;Reset&lt;/button&gt;
        &lt;/div&gt;
      &lt;/div&gt;
            
    &lt;/form&gt;

  &lt;/div&gt;
  // /tile body

&lt;/section&gt;
// /tile

//****************************//
//*********** jquery *********//
//****************************//

//initialize file upload button function
$(document)
  .on('change', '.btn-file :file', function() {
    var input = $(this),
    numFiles = input.get(0).files ? input.get(0).files.length : 1,
    label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
    input.trigger('fileselect', [numFiles, label]);
});

$(function(){
  
  //chosen select input
  $(".chosen-select").chosen({disable_search_threshold: 10});

  //initialize datepicker
  $('#datepicker').datepicker({
    todayHighlight: true
  });

  //initialize colorpicker
  $('#colorpicker').colorpicker();

  //initialize colorpicker RGB
  $('#colorpicker-rgb').colorpicker({
    format: 'rgb'
  });

  //initialize file upload button
  $('.btn-file :file').on('fileselect', function(event, numFiles, label) {
    
    var input = $(this).parents('.input-group').find(':text'),
      log = numFiles > 1 ? numFiles + ' files selected' : label;
    
    if( input.length ) {
      input.val(log);
    } else {
      if( log ) alert(log);
    }
    
  });

})

</pre>
<!-- /Source Code -->



                        </div>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->
                


                </section>
                <!-- /tile -->



              </div>
              <!-- /col 6 -->
        


              <!-- col 12 -->
              <div class="col-md-12">
              

                
                <!-- tile -->
                <section class="tile">


                  <!-- tile header -->
                  <div class="tile-header">
                    <h1><strong>Input</strong> Groups</h1>
                    <div class="controls">
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body">
                    
                     <div class="input-group margin-bottom-20">
                      <span class="input-group-addon addon-red">@</span>
                      <input type="text" class="form-control" placeholder="Username">
                    </div>

                    <div class="input-group margin-bottom-20">
                      <input type="text" class="form-control">
                      <span class="input-group-addon addon-greensea">.00</span>
                    </div>

                    <div class="input-group margin-bottom-20">
                      <span class="input-group-addon">$</span>
                      <input type="text" class="form-control">
                      <span class="input-group-addon">.00</span>
                    </div>

                    <h4>Sizing</h4>

                    <input class="form-control input-lg margin-bottom-20" type="text" placeholder=".input-lg">
                    <input class="form-control margin-bottom-20" type="text" placeholder="Default input">
                    <input class="form-control input-sm margin-bottom-20" type="text" placeholder=".input-sm">

                    <div class="input-group input-group-lg margin-bottom-20">
                      <span class="input-group-addon addon-drank">@</span>
                      <input type="text" class="form-control" placeholder="Username">
                    </div>

                    <div class="input-group margin-bottom-20">
                      <span class="input-group-addon addon-cyan">@</span>
                      <input type="text" class="form-control" placeholder="Username">
                    </div>

                    <div class="input-group input-group-sm margin-bottom-20">
                      <span class="input-group-addon addon-hotpink">@</span>
                      <input type="text" class="form-control" placeholder="Username">
                    </div>

                    <h4>Checkboxes and radio addons</h4>

                    <div class="row">
                      <div class="col-lg-6">
                        <div class="input-group margin-bottom-20">
                          <span class="input-group-addon">
                            <input type="checkbox">
                          </span>
                          <input type="text" class="form-control">
                        </div><!-- /input-group -->
                      </div><!-- /.col-lg-6 -->
                      <div class="col-lg-6">
                        <div class="input-group margin-bottom-20">
                          <span class="input-group-addon">
                            <input type="radio">
                          </span>
                          <input type="text" class="form-control">
                        </div><!-- /input-group -->
                      </div><!-- /.col-lg-6 -->
                    </div><!-- /.row -->

                    <h4>Button addons</h4>

                    <div class="row">
                      <div class="col-lg-6">
                        <div class="input-group input-group-lg margin-bottom-20">
                          <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                          </span>
                          <input type="text" class="form-control">
                        </div><!-- /input-group -->
                      </div><!-- /.col-lg-6 -->
                      <div class="col-lg-6">
                        <div class="input-group input-group-lg margin-bottom-20">
                          <input type="text" class="form-control">
                          <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                          </span>
                        </div><!-- /input-group -->
                      </div><!-- /.col-lg-6 -->
                    </div><!-- /.row -->

                    <div class="row">
                      <div class="col-lg-6">
                        <div class="input-group margin-bottom-20">
                          <div class="input-group-btn">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                            </ul>
                          </div><!-- /btn-group -->
                          <input type="text" class="form-control">
                        </div><!-- /input-group -->
                      </div><!-- /.col-lg-6 -->
                      <div class="col-lg-6">
                        <div class="input-group margin-bottom-20">
                          <input type="text" class="form-control">
                          <div class="input-group-btn">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                            <ul class="dropdown-menu pull-right">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                            </ul>
                          </div><!-- /btn-group -->
                        </div><!-- /input-group -->
                      </div><!-- /.col-lg-6 -->
                    </div><!-- /.row -->

                    <div class="row">
                      <div class="col-lg-6">
                        <div class="input-group input-group-sm margin-bottom-20">
                          <div class="input-group-btn">
                            <button type="button" class="btn btn-default" tabindex="-1">Action</button>
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" tabindex="-1">
                              <span class="caret"></span>
                              <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                            </ul>
                          </div>
                          <input type="text" class="form-control">
                        </div>
                      </div><!-- /.col-lg-6 -->
                      <div class="col-lg-6">
                        <div class="input-group input-group-sm margin-bottom-20">
                          <input type="text" class="form-control">
                          <div class="input-group-btn">
                            <button type="button" class="btn btn-default" tabindex="-1">Action</button>
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" tabindex="-1">
                              <span class="caret"></span>
                              <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                            </ul>
                          </div>
                        </div>
                      </div><!-- /.col-lg-6 -->
                    </div><!-- /.row -->

                  </div>
                  <!-- /tile body -->
                

                  <!-- show code btn -->
                  <button class="btn show-code" data-toggle="modal" data-target="#groupInputCodeModal">
                    show code
                  </button>
                  <!-- /show code btn -->


                  <!-- Modal -->
                  <div class="modal fade" id="groupInputCodeModal" tabindex="-1" role="dialog" aria-labelledby="groupInputCode" aria-hidden="true">
                    <div class="modal-dialog wide">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title" id="groupInputCode">Input Groups tile - Source Code</h4>
                        </div>
                        <div class="modal-body">


<!-- Source Code -->

<pre class="prettyprint linenums">
//tile
&lt;section class="tile"&gt;

  //tile header
  &lt;div class="tile-header"&gt;
    &lt;h1&gt;&lt;strong&gt;Input&lt;/strong&gt; Groups&lt;/h1&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  //tile body
  &lt;div class="tile-body"&gt;
                    
    &lt;div class="input-group margin-bottom-20"&gt;
      &lt;span class="input-group-addon addon-red"&gt;@&lt;/span&gt;
      &lt;input type="text" class="form-control" placeholder="Username"&gt;
    &lt;/div&gt;

    &lt;div class="input-group margin-bottom-20"&gt;
      &lt;input type="text" class="form-control"&gt;
      &lt;span class="input-group-addon addon-greensea"&gt;.00&lt;/span&gt;
    &lt;/div&gt;

    &lt;div class="input-group margin-bottom-20"&gt;
      &lt;span class="input-group-addon"&gt;$&lt;/span&gt;
      &lt;input type="text" class="form-control"&gt;
      &lt;span class="input-group-addon"&gt;.00&lt;/span&gt;
    &lt;/div&gt;

    &lt;h4&gt;Sizing&lt;/h4&gt;

    &lt;input class="form-control input-lg margin-bottom-20" type="text" placeholder=".input-lg"&gt;
    &lt;input class="form-control margin-bottom-20" type="text" placeholder="Default input"&gt;
    &lt;input class="form-control input-sm margin-bottom-20" type="text" placeholder=".input-sm"&gt;

    &lt;div class="input-group input-group-lg margin-bottom-20"&gt;
      &lt;span class="input-group-addon addon-drank"&gt;@&lt;/span&gt;
      &lt;input type="text" class="form-control" placeholder="Username"&gt;
    &lt;/div&gt;

    &lt;div class="input-group margin-bottom-20"&gt;
      &lt;span class="input-group-addon addon-cyan"&gt;@&lt;/span&gt;
      &lt;input type="text" class="form-control" placeholder="Username"&gt;
    &lt;/div&gt;

    &lt;div class="input-group input-group-sm margin-bottom-20"&gt;
      &lt;span class="input-group-addon addon-hotpink"&gt;@&lt;/span&gt;
      &lt;input type="text" class="form-control" placeholder="Username"&gt;
    &lt;/div&gt;

    &lt;h4&gt;Checkboxes and radio addons&lt;/h4&gt;

    &lt;div class="row"&gt;
      &lt;div class="col-lg-6"&gt;
        &lt;div class="input-group margin-bottom-20"&gt;
          &lt;span class="input-group-addon"&gt;
            &lt;input type="checkbox"&gt;
          &lt;/span&gt;
          &lt;input type="text" class="form-control"&gt;
        &lt;/div&gt;&lt;!-- /input-group --&gt;
      &lt;/div&gt;&lt;!-- /.col-lg-6 --&gt;
      &lt;div class="col-lg-6"&gt;
        &lt;div class="input-group margin-bottom-20"&gt;
          &lt;span class="input-group-addon"&gt;
            &lt;input type="radio"&gt;
          &lt;/span&gt;
          &lt;input type="text" class="form-control"&gt;
        &lt;/div&gt;&lt;!-- /input-group --&gt;
      &lt;/div&gt;&lt;!-- /.col-lg-6 --&gt;
    &lt;/div&gt;&lt;!-- /.row --&gt;

    &lt;h4&gt;Button addons&lt;/h4&gt;

    &lt;div class="row"&gt;
      &lt;div class="col-lg-6"&gt;
        &lt;div class="input-group input-group-lg margin-bottom-20"&gt;
          &lt;span class="input-group-btn"&gt;
            &lt;button class="btn btn-default" type="button"&gt;Go!&lt;/button&gt;
          &lt;/span&gt;
          &lt;input type="text" class="form-control"&gt;
        &lt;/div&gt;&lt;!-- /input-group --&gt;
      &lt;/div&gt;&lt;!-- /.col-lg-6 --&gt;
      &lt;div class="col-lg-6"&gt;
        &lt;div class="input-group input-group-lg margin-bottom-20"&gt;
          &lt;input type="text" class="form-control"&gt;
          &lt;span class="input-group-btn"&gt;
            &lt;button class="btn btn-default" type="button"&gt;Go!&lt;/button&gt;
          &lt;/span&gt;
        &lt;/div&gt;&lt;!-- /input-group --&gt;
      &lt;/div&gt;&lt;!-- /.col-lg-6 --&gt;
    &lt;/div&gt;&lt;!-- /.row --&gt;

    &lt;div class="row"&gt;
      &lt;div class="col-lg-6"&gt;
        &lt;div class="input-group margin-bottom-20"&gt;
          &lt;div class="input-group-btn"&gt;
            &lt;button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"&gt;Action &lt;span class="caret"&gt;&lt;/span&gt;&lt;/button&gt;
            &lt;ul class="dropdown-menu"&gt;
              &lt;li&gt;&lt;a href="#"&gt;Action&lt;/a&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Another action&lt;/a&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Something else here&lt;/a&gt;&lt;/li&gt;
              &lt;li class="divider"&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Separated link&lt;/a&gt;&lt;/li&gt;
            &lt;/ul&gt;
          &lt;/div&gt;&lt;!-- /btn-group --&gt;
          &lt;input type="text" class="form-control"&gt;
        &lt;/div&gt;&lt;!-- /input-group --&gt;
      &lt;/div&gt;&lt;!-- /.col-lg-6 --&gt;
      &lt;div class="col-lg-6"&gt;
        &lt;div class="input-group margin-bottom-20"&gt;
          &lt;input type="text" class="form-control"&gt;
          &lt;div class="input-group-btn"&gt;
            &lt;button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"&gt;Action &lt;span class="caret"&gt;&lt;/span&gt;&lt;/button&gt;
            &lt;ul class="dropdown-menu pull-right"&gt;
              &lt;li&gt;&lt;a href="#"&gt;Action&lt;/a&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Another action&lt;/a&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Something else here&lt;/a&gt;&lt;/li&gt;
              &lt;li class="divider"&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Separated link&lt;/a&gt;&lt;/li&gt;
            &lt;/ul&gt;
          &lt;/div&gt;&lt;!-- /btn-group --&gt;
        &lt;/div&gt;&lt;!-- /input-group --&gt;
      &lt;/div&gt;&lt;!-- /.col-lg-6 --&gt;
    &lt;/div&gt;&lt;!-- /.row --&gt;

    &lt;div class="row"&gt;
      &lt;div class="col-lg-6"&gt;
        &lt;div class="input-group input-group-sm margin-bottom-20"&gt;
          &lt;div class="input-group-btn"&gt;
            &lt;button type="button" class="btn btn-default" tabindex="-1"&gt;Action&lt;/button&gt;
            &lt;button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" tabindex="-1"&gt;
              &lt;span class="caret"&gt;&lt;/span&gt;
              &lt;span class="sr-only"&gt;Toggle Dropdown&lt;/span&gt;
            &lt;/button&gt;
            &lt;ul class="dropdown-menu" role="menu"&gt;
              &lt;li&gt;&lt;a href="#"&gt;Action&lt;/a&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Another action&lt;/a&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Something else here&lt;/a&gt;&lt;/li&gt;
              &lt;li class="divider"&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Separated link&lt;/a&gt;&lt;/li&gt;
            &lt;/ul&gt;
          &lt;/div&gt;
          &lt;input type="text" class="form-control"&gt;
        &lt;/div&gt;
      &lt;/div&gt;&lt;!-- /.col-lg-6 --&gt;
      &lt;div class="col-lg-6"&gt;
        &lt;div class="input-group input-group-sm margin-bottom-20"&gt;
          &lt;input type="text" class="form-control"&gt;
          &lt;div class="input-group-btn"&gt;
            &lt;button type="button" class="btn btn-default" tabindex="-1"&gt;Action&lt;/button&gt;
            &lt;button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" tabindex="-1"&gt;
              &lt;span class="caret"&gt;&lt;/span&gt;
              &lt;span class="sr-only"&gt;Toggle Dropdown&lt;/span&gt;
            &lt;/button&gt;
            &lt;ul class="dropdown-menu" role="menu"&gt;
              &lt;li&gt;&lt;a href="#"&gt;Action&lt;/a&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Another action&lt;/a&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Something else here&lt;/a&gt;&lt;/li&gt;
              &lt;li class="divider"&gt;&lt;/li&gt;
              &lt;li&gt;&lt;a href="#"&gt;Separated link&lt;/a&gt;&lt;/li&gt;
            &lt;/ul&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;&lt;!-- /.col-lg-6 --&gt;
    &lt;/div&gt;&lt;!-- /.row --&gt;

  &lt;/div&gt;
  // /tile body

&lt;/section&gt;
// /tile
</pre>
<!-- /Source Code -->



                        </div>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->
                


                </section>
                <!-- /tile -->



                <!-- tile -->
                <section class="tile">


                  <!-- tile header -->
                  <div class="tile-header">
                    <h1><strong>Vertical</strong> Form</h1>
                    <div class="controls">
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body">
                    
                    <div class="row">

                      <div class="form-group col-sm-6">
                        <label for="exampleInputEmail">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail" placeholder="Enter email">
                      </div>
                      <div class="form-group col-sm-3">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                      </div>
                      <div class="form-group col-sm-3">
                        <label for="exampleInputPassword2">Password repeat</label>
                        <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password repeat">
                      </div>

                    </div>

                    <div class="row">

                      <div class="form-group col-sm-4">
                        <label for="exampleInputCity">City</label>
                        <input type="text" class="form-control" id="exampleInputCity" placeholder="City">
                      </div>
                      <div class="form-group col-sm-4">
                        <label for="exampleInputAddress">Address</label>
                        <input type="text" class="form-control" id="exampleInputAddress" placeholder="Address">
                      </div>
                      <div class="form-group col-sm-4">
                        <label for="exampleInputCountry">Country</label>
                        <input type="text" class="form-control" id="exampleInputCountry" placeholder="Country">
                      </div>

                    </div>

                  </div>
                  <!-- /tile body -->
                

                  <!-- show code btn -->
                  <button class="btn show-code" data-toggle="modal" data-target="#verticalFormCodeModal">
                    show code
                  </button>
                  <!-- /show code btn -->


                  <!-- Modal -->
                  <div class="modal fade" id="verticalFormCodeModal" tabindex="-1" role="dialog" aria-labelledby="verticalFormCode" aria-hidden="true">
                    <div class="modal-dialog wide">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title" id="verticalFormCode">Vertical Form tile - Source Code</h4>
                        </div>
                        <div class="modal-body">


<!-- Source Code -->

<pre class="prettyprint linenums">
//tile
&lt;section class="tile"&gt;

  //tile header
  &lt;div class="tile-header"&gt;
    &lt;h1&gt;&lt;strong&gt;Vertical&lt;/strong&gt; Form&lt;/h1&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  //tile body
  &lt;div class="tile-body"&gt;
    
    &lt;div class="row"&gt;

      &lt;div class="form-group col-sm-6"&gt;
        &lt;label for="exampleInputEmail"&gt;Email address&lt;/label&gt;
        &lt;input type="email" class="form-control" id="exampleInputEmail" placeholder="Enter email"&gt;
      &lt;/div&gt;
      &lt;div class="form-group col-sm-3"&gt;
        &lt;label for="exampleInputPassword1"&gt;Password&lt;/label&gt;
        &lt;input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"&gt;
      &lt;/div&gt;
      &lt;div class="form-group col-sm-3"&gt;
        &lt;label for="exampleInputPassword2"&gt;Password repeat&lt;/label&gt;
        &lt;input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password repeat"&gt;
      &lt;/div&gt;

    &lt;/div&gt;

    &lt;div class="row"&gt;

      &lt;div class="form-group col-sm-4"&gt;
        &lt;label for="exampleInputCity"&gt;City&lt;/label&gt;
        &lt;input type="text" class="form-control" id="exampleInputCity" placeholder="City"&gt;
      &lt;/div&gt;
      &lt;div class="form-group col-sm-4"&gt;
        &lt;label for="exampleInputAddress"&gt;Address&lt;/label&gt;
        &lt;input type="text" class="form-control" id="exampleInputAddress" placeholder="Address"&gt;
      &lt;/div&gt;
      &lt;div class="form-group col-sm-4"&gt;
        &lt;label for="exampleInputCountry"&gt;Country&lt;/label&gt;
        &lt;input type="text" class="form-control" id="exampleInputCountry" placeholder="Country"&gt;
      &lt;/div&gt;

    &lt;/div&gt;

  &lt;/div&gt;
  // /tile body

&lt;/section&gt;
// /tile
</pre>
<!-- /Source Code -->



                        </div>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->
                


                </section>
                <!-- /tile -->



                <!-- tile -->
                <section class="tile">


                  <!-- tile header -->
                  <div class="tile-header">
                    <h1><strong>Horizontal</strong> Form</h1>
                    <div class="controls">
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body">
                    
                    <div class="form-horizontal">
                                            
                      <div class="row">

                        <div class="form-group col-md-4">
                          <label class="col-sm-4 control-label" for="exampleInputEmail2">Email address</label>
                          <div class="col-sm-8">
                            <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
                          </div>
                        </div>
                        <div class="form-group col-md-4">
                          <label class="col-sm-4 control-label" for="exampleInputPassword3">Password</label>
                          <div class="col-sm-8">
                            <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
                          </div>
                        </div>
                        <div class="form-group col-md-4">
                          <label class="col-sm-4 control-label" for="exampleInputPassword4">Password repeat</label>
                          <div class="col-sm-8">
                            <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Password repeat">
                          </div>
                        </div>

                      </div>

                      <div class="row">

                        <div class="form-group col-md-4">
                          <label class="col-sm-4 control-label" for="exampleInputCity2">City</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="exampleInputCity2" placeholder="City">
                          </div>
                        </div>
                        <div class="form-group col-md-4">
                          <label class="col-sm-4 control-label" for="exampleInputAddress2">Address</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="exampleInputAddress2" placeholder="Address">
                          </div>
                        </div>
                        <div class="form-group col-md-4">
                          <label class="col-sm-4 control-label" for="exampleInputCountry2">Country</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="exampleInputCountry2" placeholder="Country">
                          </div>
                        </div>

                      </div>

                    </div>

                  </div>
                  <!-- /tile body -->
                

                  <!-- show code btn -->
                  <button class="btn show-code" data-toggle="modal" data-target="#horizontalFormCodeModal">
                    show code
                  </button>
                  <!-- /show code btn -->


                  <!-- Modal -->
                  <div class="modal fade" id="horizontalFormCodeModal" tabindex="-1" role="dialog" aria-labelledby="horizontalFormCode" aria-hidden="true">
                    <div class="modal-dialog wide">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title" id="horizontalFormCode">Horizontal Form tile - Source Code</h4>
                        </div>
                        <div class="modal-body">


<!-- Source Code -->

<pre class="prettyprint linenums">
//tile
&lt;section class="tile"&gt;

  //tile header
  &lt;div class="tile-header"&gt;
    &lt;h1&gt;&lt;strong&gt;Horizontal&lt;/strong&gt; Form&lt;/h1&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  //tile body
  &lt;div class="tile-body"&gt;
    
    &lt;div class="form-horizontal"&gt;
                            
      &lt;div class="row"&gt;

        &lt;div class="form-group col-md-4"&gt;
          &lt;label class="col-sm-4 control-label" for="exampleInputEmail2"&gt;Email address&lt;/label&gt;
          &lt;div class="col-sm-8"&gt;
            &lt;input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email"&gt;
          &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="form-group col-md-4"&gt;
          &lt;label class="col-sm-4 control-label" for="exampleInputPassword3"&gt;Password&lt;/label&gt;
          &lt;div class="col-sm-8"&gt;
            &lt;input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password"&gt;
          &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="form-group col-md-4"&gt;
          &lt;label class="col-sm-4 control-label" for="exampleInputPassword4"&gt;Password repeat&lt;/label&gt;
          &lt;div class="col-sm-8"&gt;
            &lt;input type="password" class="form-control" id="exampleInputPassword4" placeholder="Password repeat"&gt;
          &lt;/div&gt;
        &lt;/div&gt;

      &lt;/div&gt;

      &lt;div class="row"&gt;

        &lt;div class="form-group col-md-4"&gt;
          &lt;label class="col-sm-4 control-label" for="exampleInputCity2"&gt;City&lt;/label&gt;
          &lt;div class="col-sm-8"&gt;
            &lt;input type="text" class="form-control" id="exampleInputCity2" placeholder="City"&gt;
          &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="form-group col-md-4"&gt;
          &lt;label class="col-sm-4 control-label" for="exampleInputAddress2"&gt;Address&lt;/label&gt;
          &lt;div class="col-sm-8"&gt;
            &lt;input type="text" class="form-control" id="exampleInputAddress2" placeholder="Address"&gt;
          &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="form-group col-md-4"&gt;
          &lt;label class="col-sm-4 control-label" for="exampleInputCountry2"&gt;Country&lt;/label&gt;
          &lt;div class="col-sm-8"&gt;
            &lt;input type="text" class="form-control" id="exampleInputCountry2" placeholder="Country"&gt;
          &lt;/div&gt;
        &lt;/div&gt;

      &lt;/div&gt;

    &lt;/div&gt;

  &lt;/div&gt;
  // /tile body

&lt;/section&gt;
// /tile
</pre>
<!-- /Source Code -->



                        </div>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->
                


                </section>
                <!-- /tile -->



              </div>
              <!-- /col 12 -->

              
            </div>
            <!-- /row -->



          </div>
          <!-- /content container -->






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

    <script src="<?php echo base_url(); ?>minoral/js/plugins/summernote/summernote.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/chosen/chosen.jquery.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/datepicker/bootstrap-datepicker.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/momentjs/moment-with-langs.min.js"></script>
    <script src="<?php echo base_url(); ?>minoral/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>

    <script src="<?php echo base_url(); ?>minoral/js/minoral.min.js"></script>

    <script>

    //initialize file upload button function
    $(document)
      .on('change', '.btn-file :file', function() {
        var input = $(this),
        numFiles = input.get(0).files ? input.get(0).files.length : 1,
        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
        input.trigger('fileselect', [numFiles, label]);
    });

    $(function(){
      
      //load wysiwyg editor
      $('#input06').summernote({
        height: 130   //set editable area's height
      });

      //chosen select input
      $(".chosen-select").chosen({disable_search_threshold: 10});

      //initialize datepicker
      $('#datepicker').datepicker({
        todayHighlight: true
      });

      //initialize datepicker
      $('#datetimepicker').datetimepicker({
        icons: {
          time: "fa fa-clock-o",
          date: "fa fa-calendar",
          up: "fa fa-arrow-up",
          down: "fa fa-arrow-down"
        }
      });

      //initialize colorpicker
      $('#colorpicker').colorpicker();

      //initialize colorpicker RGB
      $('#colorpicker-rgb').colorpicker({
        format: 'rgb'
      });

      //initialize file upload button
      $('.btn-file :file').on('fileselect', function(event, numFiles, label) {
        
        var input = $(this).parents('.input-group').find(':text'),
          log = numFiles > 1 ? numFiles + ' files selected' : label;
        
        if( input.length ) {
          input.val(log);
        } else {
          if( log ) alert(log);
        }
        
      });

    })
      
    </script>
  </body>
</html>