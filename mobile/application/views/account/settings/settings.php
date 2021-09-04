<div class="section">
  <?php echo form_open('', array('role'=>'form')); ?>
  <div class="row">
    <div class="col s12">
        <div class="input-field">
          <input type="email" name="email" id="email" value="<?php echo $user['email']; ?>">
          <label for="email"><?php echo lang('users settings email'); ?></label>
        </div>
      </div>
    <div class="col s12">
        <div class="input-field">
          <input type="text" name="first_name" id="first_name" value="<?php echo $user['first_name']; ?>">
          <label for="first_name"><?php echo lang('users settings first_name'); ?></label>
        </div>
      </div>
    <div class="col s12">
        <div class="input-field">
          <input type="text" name="last_name" id="last_name" value="<?php echo $user['last_name']; ?>">
          <label for="last_name"><?php echo lang('users settings last_name'); ?></label>
        </div>
      </div>
    <div class="col s12">
        <div class="input-field">
          <?php echo form_dropdown('language', $this->languages, (isset($user['language']) ? $user['language'] : $this->config->item('language')), 'id="language"'); ?>
          <label for="language"><?php echo lang('users settings language'); ?></label>
      </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input type="password" name="password" id="password" placeholder="*******">
          <label for="password"><?php echo lang('users settings password'); ?></label>
        </div>
      </div>
    <div class="col s12">
        <div class="input-field">
          <input type="password" name="password_repeat" id="password_repeat" placeholder="*******">
          <label for="password_repeat"><?php echo lang('users settings re_password'); ?></label>
        </div>
      </div>
    <div class="col s12">
        <div class="left-align">
          <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
        </div>
      </div>
  </div>
  <?php echo form_close(); ?> 
</div>

<div class="fixed-action-btn">
  <a class="btn-floating btn-large deep-purple lighten-1">
    <i class="large material-icons">settings</i>
  </a>
  <ul>
    <li><a href="<?php echo base_url('account/settings/verification'); ?>" class="btn-floating light-blue darken-3"><i class="material-icons">fingerprint</i></a></li>
    <li><a href="<?php echo base_url('account/settings/billing'); ?>" class="btn-floating green"><i class="material-icons">account_balance_wallet</i></a></li>
    <li><a href="<?php echo base_url('account/settings/logs'); ?>" class="btn-floating yellow darken-4"><i class="material-icons">lock_outline</i></a></li>
    <li><a href="<?php echo base_url('account/settings/security'); ?>" class="btn-floating red"><i class="material-icons">security</i></a></li>
  </ul>
</div>