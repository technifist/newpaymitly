
<div class="section">
  <div class="row">
    <?php echo form_open(site_url("account/settings/update_security/"), array("" => "")) ?>
    <div class="col s12">
      <div class="input-field">
        <select class="icons" name="method">
          <option value="1" <?if($user['method_login'] == 1){?>selected<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/icon/no.png"><?php echo lang('users security 1'); ?></option>
          <option value="2" <?if($user['method_login'] == 2){?>selected<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/icon/qr.png"><?php echo lang('users security 2'); ?></option>
          <option value="3" <?if($user['method_login'] == 3){?>selected<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/icon/sms.png"><?php echo lang('users security 3'); ?></option>
          <option value="4" <?if($user['method_login'] == 4){?>selected<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/icon/email.png"><?php echo lang('users security 4'); ?></option>
        </select>
        <label><?php echo lang('users security title'); ?></label>
      </div>
    </div>
     <div class="col s12">
        <div class="right-align">
          <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
        </div>
      </div>
    <?php echo form_close(); ?>
  </div>
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