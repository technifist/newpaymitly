<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

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
            <?php echo form_input(array('name'=>'email', 'value'=>set_value('email', (isset($user['email']) ? $user['email'] : '')), 'placeholder'=>lang('core core button enter_email'), 'type'=>'email')); ?>
            <label for="name" class="white-text"><?php echo lang('core button username_email'); ?></label>
          </div>
        </div>

      <div class="col s12 mb-3">
        <div class="g-recaptcha" data-sitekey="<?php echo $this->settings->google_site_key; ?>"></div>
      </div>
      <div class="col s12 center-align">
          <button type="submit" class="waves-effect waves-light deep-purple lighten-2 btn-large"><i class="material-icons left">refresh</i> <?php echo lang('users button reset_password'); ?></button>
      </div>
      <?php echo form_close(); ?>
    </div>
  
</div>
