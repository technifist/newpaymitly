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
  <link href="<?php echo base_url();?>assets/themes/material/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="<?php echo base_url();?>assets/themes/material/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>
  
  <?php // Notify invoice
		$info_invoices = $this->notice->sum_user_invoices($user['username']);
		if ($info_invoices > 0) {
			$sample_invoice = TRUE;
		} else {
			$sample_invoice = FALSE;
		}
	?>
	
	<?php // Notify support
		$info_support = $this->notice->sum_user_support($user['username']);
		if ($info_invoices > 0) {
			$sample_support = TRUE;
		} else {
			$sample_support = FALSE;
		}
	?>
  
<body>
<div class="navbar-fixed"> 
  <nav class="deep-purple lighten-1">
    <div class="nav-wrapper">
      <a href="#!" class="brand-logo center"><img src="<?php echo base_url();?>assets/themes/account/img/main-logo.png" height="20" alt=""></a>
      <ul class="left">
        <li><a href="#" data-target="wallet" class="sidenav-trigger"><i class="material-icons">menu</i></a></li>
      </ul>
      <ul class="right">
        <li><a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">perm_identity</i></a></li>
      </ul>
    </div>
  </nav>
</div>


  <?php echo $content; ?>
  
  

  <!--  Accounts menu -->
  <ul id="wallet" class="wallet">
    <li><a class="subheader">Money operations</a></li>
    <li><a class="waves-effect" href="<?php echo base_url('account/transactions'); ?>"><i class="material-icons">dashboard</i><?php echo lang('users title history'); ?></a></li>
    <li><a class="waves-effect" href="<?php echo base_url('account/money_transfer'); ?>"><i class="material-icons">send</i><?php echo lang('users menu transfer'); ?></a></li>
    <li><a class="waves-effect" href="<?php echo base_url('account/exchange'); ?>"><i class="material-icons">cached</i><?php echo lang('users menu exchange'); ?></a></li>
    <li><a class="waves-effect" href="<?php echo base_url('account/invoices'); ?>"><i class="material-icons">description</i><?php echo lang('users invoices menu'); ?> <?if($info_invoices == TRUE){?><span class="new badge red" data-badge-caption=""><?php echo $this->notice->sum_user_invoices($user['username']); ?></span><?}else{?><?}?></a></li>
    <li><a class="waves-effect" href="<?php echo base_url('account/vouchers'); ?>"><i class="material-icons">grade</i><?php echo lang('users vouchers menu'); ?></a></li>
    <li><a class="waves-effect" href="<?php echo base_url('account/shops'); ?>"><i class="material-icons">shopping_basket</i><?php echo lang('users shops title'); ?></a></li>
    <li><div class="divider"></div></li>
    <li><a class="waves-effect waves-light btn green" href="<?php echo base_url('/account/deposit'); ?>"><?php echo lang('users dashboard deposit'); ?></a></li>
    <li><a class="waves-effect waves-light btn deep-purple lighten-1 " href="<?php echo base_url('account/withdrawal'); ?>"><?php echo lang('users dashboard withdrawal'); ?></a></li>
    
  </ul>
  
  <!--  User menu -->
  <ul id="slide-out" class="sidenav">
    <li><div class="user-view">
      <div class="background">
       <img src="<?php echo base_url();?>assets/themes/escrow/img/just3-bg.png">
      </div>
      <a href="#user"><img class="circle" src="<?php echo $this->notice->check_userimg($user['email']); ?>"></a>
      <a href="#name"><span class="white-text name"><?php echo $user['first_name']; ?> <?php echo $user['last_name']; ?></span></a>
      <a href="#email"><span class="white-text email"><?php echo $user['username']; ?></span></a>
    </div></li>
    <li><a href="<?php echo base_url('/account/orders'); ?>" class="waves-effect"><i class="material-icons">card_giftcard</i>My orders</a></li>
    <li><a href="<?php echo base_url('/account/cart'); ?>" class="waves-effect"><i class="material-icons">shopping_cart</i>My cart <span class="new badge green" data-badge-caption=""><?php echo $this->notice->sum_items_cart($user['username']); ?></span></a></li>
    <li><div class="divider"></div></li>
    <li><a class="waves-effect" href="<?php echo base_url('account/disputes'); ?>"><i class="material-icons">security</i><?php echo lang('users menu dispute'); ?></a></li>
    <li><a class="waves-effect" href="<?php echo base_url('account/merchants'); ?>"><i class="material-icons">account_balance</i><?php echo lang('users shops merchant'); ?></a></li>
    <li><a class="waves-effect" href="<?php echo base_url('account/support'); ?>"><i class="material-icons">forum</i><?php echo lang('users support title_1'); ?> <?if($info_support == TRUE){?><span class="new badge green" data-badge-caption=""><?php echo $this->notice->sum_user_support($user['username']); ?></span><?}else{?><?}?></a></li>
    <li><a class="waves-effect" href="<?php echo base_url('account/settings'); ?>"><i class="material-icons">settings</i><?php echo lang('users settings title'); ?></a></li>
    <li><a class="waves-effect" href="<?php echo base_url('logout'); ?>"><i class="material-icons">power_settings_new</i><?php echo lang('core button logout'); ?></a></li>
  </ul>
  
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
  

<?php if ($this->session->flashdata('message')) : ?>
<script>
$(function(){
    M.toast({html: '<?php echo $this->session->flashdata('message'); ?>'})
});  
</script>
<?php elseif ($this->session->flashdata('error')) : ?>
<script>
$(function(){
    M.toast({html: '<?php echo $this->session->flashdata('error'); ?>'})
});  
</script>
<?php elseif (validation_errors()) : ?>
<script>
$(function(){
    M.toast({html: '<?php echo validation_errors(); ?>'})
});  
</script>
<?php elseif ($this->error) : ?>
<script>
$(function(){
    M.toast({html: '<?php echo $this->error; ?>'})
});  
</script> 
<?php endif; ?>

</body>

</html>