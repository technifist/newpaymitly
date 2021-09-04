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
            <?php echo form_input(array('name'=>'username', 'placeholder'=>lang('core button username'), 'value'=>set_value('username', (isset($user['username']) ? $user['username'] : '')))); ?>
            <label for="name" class="white-text"><?php echo lang('core button username'); ?></label>
          </div>
        </div>
      
      <div class="col s12">
          <div class="input-field">
            <?php echo form_input(array('name'=>'email', 'placeholder'=>lang('core button email'), 'value'=>set_value('email', (isset($user['email']) ? $user['email'] : '')))); ?>
            <label for="name" class="white-text"><?php echo lang('core button email'); ?></label>
          </div>
        </div>
      
      <div class="col s12">
          <div class="input-field">
            <?php echo form_input(array('name'=>'first_name', 'placeholder'=>lang('core button first_name'), 'value'=>set_value('first_name', (isset($user['first_name']) ? $user['first_name'] : '')), 'class'=>'form-control')); ?>
            <label for="name" class="white-text"><?php echo lang('core button first_name'); ?></label>
          </div>
        </div>
      
      <div class="col s12">
          <div class="input-field">
            <?php echo form_input(array('name'=>'last_name', 'placeholder'=>lang('core button last_name'), 'value'=>set_value('last_name', (isset($user['last_name']) ? $user['last_name'] : '')))); ?>
            <label for="name" class="white-text"><?php echo lang('core button last_name'); ?></label>
          </div>
        </div>
      
      <div class="col s12">
          <div class="input-field">
            <?php echo form_dropdown('language', $this->languages, (isset($user['language']) ? $user['language'] : $this->config->item('language')), 'id="language"'); ?>
            <label for="name" class="white-text"><?php echo lang('core button language'); ?></label>
          </div>
        </div>
      
      <div class="col s12">
          <div class="input-field">
            <?php echo form_password(array('name'=>'password', 'value'=>'', 'placeholder'=>'***********', 'autocomplete'=>'off')); ?>
            <label for="name" class="white-text"><?php echo lang('core button password'); ?></label>
          </div>
        </div>
      
      <div class="col s12">
          <div class="input-field">
            <?php echo form_password(array('name'=>'password_repeat', 'value'=>'', 'placeholder'=>'***********', 'autocomplete'=>'off')); ?>
            <label for="name" class="white-text"><?php echo lang('core button re_password'); ?></label>
          </div>
        </div>

      <div class="col s12 mb-3">
        <div class="g-recaptcha" data-sitekey="<?php echo $this->settings->google_site_key; ?>"></div>
      </div>
      <div class="col s12 center-align">
          <button type="submit" class="waves-effect waves-light deep-purple lighten-2 btn-large"><i class="material-icons left">add</i> <?php echo lang('core button register'); ?></button>
      </div>
      <?php echo form_close(); ?>
    </div>
  
</div>
