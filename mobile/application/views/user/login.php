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
      <?php echo form_open('', array('class'=>'')); ?>
      <div class="col s12">
          <div class="input-field">
            <?php echo form_input(array('name'=>'username', 'id'=>'username', 'autocomplete'=>'off', 'placeholder'=>lang('core button enter_username'), 'maxlength'=>256)); ?>
            <label for="name" class="white-text"><?php echo lang('core button username_email'); ?></label>
          </div>
        </div>
      <div class="col s12">
          <div class="input-field">
            <?php echo form_password(array('name'=>'password', 'id'=>'password', 'placeholder'=>lang('core button enter_password'), 'maxlength'=>72, 'autocomplete'=>'off')); ?>
            <label for="password" class="white-text"><?php echo lang('core button password'); ?></label>
          </div>
        </div>
      <div class="col s12 mb-3">
        <div class="g-recaptcha" data-sitekey="<?php echo $this->settings->google_site_key; ?>"></div>
      </div>
      <div class="col s12 center-align">
          <button type="submit" class="waves-effect waves-light deep-purple lighten-2 btn-large"><i class="material-icons left">input</i> <?php echo lang('core button login'); ?></button>
      </div>
      <?php echo form_close(); ?>
    </div>
  </div>