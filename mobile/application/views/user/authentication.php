<div class="section">
  
  <?php if ($this->session->flashdata('message')) : ?>
          <div class="center-align">
            <p class="green-text"><?php echo $this->session->flashdata('message'); ?></p>
          </div>
      <?php elseif ($this->session->flashdata('error')) : ?>
      <div class="center-align">
          <p class="red-text"><?php echo $this->session->flashdata('error'); ?>
          </p>
        </div>
      <?php elseif (validation_errors()) : ?>
        <div class="center-align">
          <p class="red-text"><?php echo validation_errors(); ?>
          </p>
        </div>
      <?php elseif ($this->error) : ?>
        <div class="center-align">
          <p class="red-text"><?php echo $this->error; ?>
          </p>
        </div>
      <?php endif; ?>
  
    <div class="center-align mb-3">
      <img src="<?php echo base_url();?>assets/themes/account/img/main-logo.png" height="30" alt="">
    </div>
  
  <div class="row">
    <?php echo form_open(site_url("user/start_authentication/"), array("" => "")) ?>
      <div class="col s12">
          <div class="input-field">
            <?php echo form_input(array('name'=>'code', 'type'=>'text')); ?>
            <?if($user['method_login'] == 2){?>
              <label for="exampleInputEmail1" class="white-text"><?php echo lang('users security enter_token_otp'); ?></label>
              <?}else{?><?}?>
              <?if($user['method_login'] == 3){?>
              <label for="exampleInputEmail1" class="white-text"><?php echo lang('users security enter_token_sms'); ?></label>
              <?}else{?><?}?>
              <?if($user['method_login'] == 4){?>
              <label for="exampleInputEmail1" class="white-text"><?php echo lang('users security enter_token_email'); ?></label>
              <?}else{?><?}?>
          </div>
        </div>
      <div class="col s12 center-align">
          <button type="submit" class="waves-effect waves-light deep-purple lighten-2 btn-large"><?php echo lang('users security confirm'); ?></button> <a href="<?php echo base_url('logout'); ?>" class="waves-effect waves-light  red darken-1 btn-large"><?php echo lang('core button logout'); ?></a>
      </div>
    <?php echo form_close(); ?> 
  </div>
  
</div>