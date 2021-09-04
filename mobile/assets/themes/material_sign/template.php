<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Default Public Template
 */
?><!DOCTYPE html>
<html lang="en">
  
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <meta name="author" content="Justigniter">
  <title><?php echo $page_title; ?> - <?php echo $this->settings->site_name; ?></title>
	<meta name="keywords" content="<?php echo $this->settings->meta_keywords; ?>">
  <meta name="description" content="<?php echo $this->settings->meta_description; ?>">
  <meta name="theme-color" content="#7e57c2">

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="<?php echo base_url();?>assets/themes/material_sign/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="<?php echo base_url();?>assets/themes/material_sign/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
  
 
<body class="deep-purple lighten-1">
  

  
  <?php echo $content; ?>
  

  
<div class="fixed-action-btn">
    <a class="btn-floating btn-large deep-purple lighten-2">
      <i class="large material-icons">more_horiz</i>
    </a>
    <ul>
      <li><a href="<?php echo base_url('user/forgot'); ?>" class="btn-floating orange"><i class="material-icons">lock_open</i></a></li>
      <li><a href="<?php echo base_url('user/register'); ?>" class="btn-floating green"><i class="material-icons">add</i></a></li>
    </ul>
  </div>
        
 
  
  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="<?php echo base_url();?>assets/themes/material/js/materialize.js"></script>
  
  <!--  User menu-->
  <script>
    
  $('.sidenav').sidenav({
    edge: 'right'
  });
    
  $('.wallet').sidenav({
    edge: 'left'
  });
    

  // Or with jQuery
  $('.carousel.carousel-slider').carousel({
    fullWidth: true,
    indicators: true
  });
    
  $('.carousel').slider({height:150});
    
  $(document).ready(function(){
    $('.tooltipped').tooltip();
  });
    
  $(document).ready(function(){
    $('.fixed-action-btn').floatingActionButton({
    direction: 'top',
    hoverEnabled: false
  });
  });
    
  $(document).ready(function(){
    $('.modal').modal();
  });
    
  $(document).ready(function(){
    $('select').formSelect();
  });
    
  $(document).ready(function(){
    $('.tabs').tabs();
  });
    
  $(document).ready(function(){
    $('.collapsible').collapsible();
  });
  
  $('.dropdown-trigger').dropdown();
    
  var instance = M.Tabs.getInstance(elem);

  </script>

  
</body>

</html>