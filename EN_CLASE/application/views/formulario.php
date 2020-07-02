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
</head>
<body>

<!-- tile -->
<section class="tile">

<!-- tile header -->
<div class="tile-header">
	<h1><strong>Text</strong> Inputs</h1>
</div>
<!-- /tile header -->

<!-- tile body -->
<div class="tile-body">
  
  <form class="form-horizontal" role="form">
	
	<div class="form-group">
	  <label for="input01" class="col-sm-4 control-label">Normal input field</label>
	  <div class="col-sm-8">
		<input type="text" id="input01">
	  </div>
	</div>

	<div class="form-group">
	  <label for="input02" class="col-sm-4 control-label">Password input field</label>
	  <div class="col-sm-8">
		<input type="password" id="input02">
	  </div>
	</div>

	<div class="form-group">
	  <label for="input03" class="col-sm-4 control-label">Input with help text</label>
	  <div class="col-sm-8">
		<input type="text" id="input03">
		<span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
	  </div>
	</div>

	<div class="form-group">
	  <label for="input04" class="col-sm-4 control-label">Input field with placeholder</label>
	  <div class="col-sm-8">
		<input type="text" id="input04" placeholder="This is placeholder...">
	  </div>
	</div>

	<div class="form-group">
	  <label for="input05" class="col-sm-4 control-label">Normal textarea</label>
	  <div class="col-sm-8">
		<textarea id="input05" rows="3"></textarea>
	  </div>
	</div>

	<div class="form-group">
	  <label class="col-sm-4 control-label">Textarea with editor</label>
	  <div class="col-sm-8">
		<div id="input06"></div>
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

</body>
</html>