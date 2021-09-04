<div class="section">
  
  <div class="card">
        <div class="card-content">
          <span class="card-title"><?php echo lang('users settings standart_ver'); ?></span>
          <?php if ($user['verify_status'] != 0) : ?>
          <p class="green-text"><?php echo lang('users settings ok_status'); ?></p>
          <?php endif; ?>
          <?php if ($user['verify_status'] == 0) : ?>
          <?php echo form_open(site_url("account/settings/standart_verification/"), array("" => "")) ?>
          <div class="col s12">
            <div class="input-field">
              <input type="text" name="company" id="company" value="<?php echo $user['company']; ?>" placeholder="<?php echo lang('users settings company'); ?>">
              <label for="company"><?php echo lang('users settings company'); ?></label>
            </div>
          </div>
          <div class="col s12">
            <div class="input-field">
              <input type="text" name="country" id="country" value="<?php echo $user['country']; ?>" placeholder="<?php echo lang('users settings country'); ?>">
              <label for="country"><?php echo lang('users settings country'); ?></label>
            </div>
          </div>
          <div class="col s12">
            <div class="input-field">
              <input type="text" name="zip" id="zip" value="<?php echo $user['zip']; ?>" placeholder="<?php echo lang('users settings zip'); ?>">
              <label for="zip"><?php echo lang('users settings zip'); ?></label>
            </div>
          </div>
          <div class="col s12">
            <div class="input-field">
              <input type="text" name="city" id="city" value="<?php echo $user['city']; ?>" placeholder="<?php echo lang('users settings city'); ?>">
              <label for="city"><?php echo lang('users settings city'); ?></label>
            </div>
          </div>
          <div class="col s12">
            <div class="input-field">
              <input type="text" name="address_1" id="address_1" value="<?php echo $user['address_1']; ?>" placeholder="<?php echo lang('users settings address_1'); ?>">
              <label for="address_1"><?php echo lang('users settings address_1'); ?></label>
            </div>
          </div>
          <div class="col s12">
            <div class="input-field">
              <input type="text" name="address_2" id="address_2" value="<?php echo $user['address_2']; ?>" placeholder="<?php echo lang('users settings address_2'); ?>">
              <label for="address_2"><?php echo lang('users settings address_2'); ?></label>
            </div>
          </div>
          <div class="col s12">
            <div class="input-field">
              <input type="text" name="phone" id="phone" value="<?php echo $user['phone']; ?>" placeholder="<?php echo lang('users input phone'); ?>">
              <label for="phone"><?php echo lang('users input phone'); ?></label>
            </div>
          </div>
          <div class="col s12">
            <div class="left-align">
              <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
            </div>
          </div>
          <?php echo form_close(); ?>
          <?php endif; ?>
        </div>
  </div>
  
  <div class="card">
        <div class="card-content">
          <span class="card-title"><?php echo lang('users settings extend_ver'); ?></span>
          <?php if ($user['verify_status'] == 0) : ?>
          <p class="red-text"><?php echo lang('users settings affter_status'); ?></p>
          <?php endif; ?>
          <?php if ($user['verify_status'] == 2) : ?>
          <p class="green-text"><?php echo lang('users settings ok_status'); ?></p>
          <?php endif; ?>
          <?php if ($user['verify_status'] != 2 && $user['verify_status'] == 1 && $check_request == 0) : ?>
          <?php echo form_open_multipart(site_url("account/settings/extended_verification/"), array("" => "")) ?>
          <div class="col s12">
            <div class="file-field input-field">
              <div class="btn deep-purple lighten-1">
                <span><i class="material-icons">image</i></span>
                <input id="id_card" name="id_card" type="file">
              </div>
              <div class="file-path-wrapper">
                <input class="file-path validate" type="file" id="id_card" name="id_card" placeholder="<?php echo lang('users settings id_card'); ?>">
                <label for="id_card"><?php echo lang('users settings id_card_info'); ?></label>
              </div>
            </div>
          </div>
          <div class="col s12">
            <div class="file-field input-field">
              <div class="btn deep-purple lighten-1">
                <span><i class="material-icons">image</i></span>
                <input id="id_address" name="id_address" type="file">
              </div>
              <div class="file-path-wrapper">
                <input class="file-path validate" type="file" id="id_address" name="id_address" placeholder="<?php echo lang('users settings id_address'); ?>">
                <label for="id_address"><?php echo lang('users settings id_address_info'); ?></label>
              </div>
            </div>
          </div>
          <div class="col s12">
            <div class="left-align">
              <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
            </div>
          </div>
          <?php echo form_close(); ?>
          <?php endif; ?>
        </div>
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