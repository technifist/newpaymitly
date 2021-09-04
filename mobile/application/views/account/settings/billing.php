<div class="section">
  
  <div class="container">
    <p class="grey-text"><?php echo lang('users settings billing'); ?></p>
  </div>
   
  <ul class="collapsible popout">
    <?php if ($paypal['status'] == 1) : ?>
    <li>
      <div class="collapsible-header"><?php echo lang('users settings paypal'); ?></div>
      <div class="collapsible-body">
        <?php echo form_open(site_url("account/settings/update_paypal/"), array("" => "")) ?>
        <div class="col s12">
          <div class="input-field">
            <input id="name" type="email" name="paypal" id="paypal" placeholder="<?php echo lang('users settings paypal'); ?>" <?php if ($enabled_paypal == FALSE) : ?>disabled<?php endif; ?> value="<?php echo $user['paypal']; ?>">
            <label for="name"><?php echo lang('users settings paypal'); ?></label>
          </div>
       </div>
        <div class="col s12">
          <div class="left-align">
            <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
          </div>
        </div>
        <?php echo form_close(); ?> 
      </div>
    </li>
    <?php endif; ?>
    
    <?php if ($credit_card['status'] == 1) : ?>
    <li>
      <div class="collapsible-header"><?php echo lang('users settings card'); ?></div>
      <div class="collapsible-body">
        <?php echo form_open(site_url("account/settings/update_credit_card/"), array("" => "")) ?>
        <div class="col s12">
          <div class="input-field">
            <input type="text" name="card" id="card" placeholder="<?php echo lang('users settings card'); ?>" <?php if ($enabled_credit_card == FALSE) : ?>disabled<?php endif; ?> onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" value="<?php echo $user['card']; ?>">
            <label for="card"><?php echo lang('users settings card'); ?></label>
          </div>
       </div>
      <div class="col s12">
          <div class="left-align">
            <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
          </div>
        </div>
        <?php echo form_close(); ?> 
      </div>
    </li>
    <?php endif; ?>
    
    <?php if ($bitcoin['status'] == 1) : ?>
    <li>
      <div class="collapsible-header"><?php echo lang('users settings bitcoin'); ?></div>
      <div class="collapsible-body">
        <?php echo form_open(site_url("account/settings/update_bitcoin/"), array("" => "")) ?>
        <div class="col s12">
        <div class="input-field">
          <input type="text" name="bitcoin" id="bitcoin" placeholder="<?php echo lang('users settings bitcoin'); ?>" <?php if ($enabled_bitcoin == FALSE) : ?>disabled<?php endif; ?> value="<?php echo $user['bitcoin']; ?>">
          <label for="bitcoin"><?php echo lang('users settings bitcoin'); ?></label>
        </div>
     </div>
    <div class="col s12">
        <div class="left-align">
          <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
        </div>
      </div>
        <?php echo form_close(); ?> 
      </div>
    </li>
    <?php endif; ?>
    
    <?php if ($skrill['status'] == 1) : ?>
    <li>
      <div class="collapsible-header"><?php echo lang('users settings skrill'); ?></div>
      <div class="collapsible-body">
        <?php echo form_open(site_url("account/settings/update_skrill/"), array("" => "")) ?>
        <div class="col s12">
        <div class="input-field">
          <input type="text" name="skrill" id="skrill" placeholder="<?php echo lang('users settings skrill'); ?>" <?php if ($enabled_skrill == FALSE) : ?>disabled<?php endif; ?> value="<?php echo $user['skrill']; ?>">
          <label for="bitcoin"><?php echo lang('users settings skrill'); ?></label>
        </div>
     </div>
    <div class="col s12">
        <div class="left-align">
          <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
        </div>
      </div>
        <?php echo form_close(); ?> 
      </div>
    </li>
    <?php endif; ?>
    
    <?php if ($payza['status'] == 1) : ?>
    <li>
      <div class="collapsible-header"><?php echo lang('users settings payza'); ?></div>
      <div class="collapsible-body">
        <?php echo form_open(site_url("account/settings/update_payza/"), array("" => "")) ?>
        <div class="col s12">
        <div class="input-field">
          <input type="text" name="payza" id="payza" placeholder="<?php echo lang('users settings payza'); ?>" <?php if ($enabled_payza == FALSE) : ?>disabled<?php endif; ?> value="<?php echo $user['payza']; ?>">
          <label for="payza"><?php echo lang('users settings payza'); ?></label>
        </div>
     </div>
    <div class="col s12">
        <div class="left-align">
          <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
        </div>
      </div>
        <?php echo form_close(); ?> 
      </div>
    </li>
    <?php endif; ?>
    
    <?php if ($advcash['status'] == 1) : ?>
    <li>
      <div class="collapsible-header"><?php echo lang('users settings advcash'); ?></div>
      <div class="collapsible-body">
        <?php echo form_open(site_url("account/settings/update_advcash/"), array("" => "")) ?>
        <div class="col s12">
        <div class="input-field">
          <input type="text" name="advcash" id="advcash" placeholder="<?php echo lang('users settings advcash'); ?>" <?php if ($enabled_advcash == FALSE) : ?>disabled<?php endif; ?> value="<?php echo $user['advcash']; ?>">
          <label for="payza"><?php echo lang('users settings payza'); ?></label>
        </div>
     </div>
    <div class="col s12">
        <div class="left-align">
          <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
        </div>
      </div>
        <?php echo form_close(); ?> 
      </div>
    </li>
    <?php endif; ?>
    
    <?php if ($perfect_m['status'] == 1) : ?>
    <li>
      <div class="collapsible-header"><?php echo lang('users settings perfect_m'); ?></div>
      <div class="collapsible-body">
        <?php echo form_open(site_url("account/settings/update_perfect_m/"), array("" => "")) ?>
        <div class="col s12">
        <div class="input-field">
          <input type="text" name="perfect_m" id="perfect_m" placeholder="<?php echo lang('users settings perfect_m'); ?>" <?php if ($enabled_perfect_m == FALSE) : ?>disabled<?php endif; ?> value="<?php echo $user['perfect_m']; ?>">
          <label for="payza"><?php echo lang('users settings payza'); ?></label>
        </div>
     </div>
    <div class="col s12">
        <div class="left-align">
          <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
        </div>
      </div>
        <?php echo form_close(); ?> 
      </div>
    </li>
    <?php endif; ?>
    
    <?php if ($swift['status'] == 1) : ?>
    <li>
      <div class="collapsible-header"><?php echo lang('users settings swift'); ?></div>
      <div class="collapsible-body">
        <?php echo form_open(site_url("account/settings/update_swift/"), array("" => "")) ?>
        <div class="col s12">
        <div class="input-field">
          <textarea id="textarea1" class="materialize-textarea" name="swift" <?php if ($enabled_swift == FALSE) : ?>disabled<?php endif; ?> placeholder="<?php echo lang('users settings swift'); ?>"><?php echo $user['swift']; ?></textarea>
          <label for="textarea1"><?php echo lang('users settings swift'); ?></label>
        </div>
     </div>
    <div class="col s12">
        <div class="left-align">
          <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users button save'); ?></button>
        </div>
      </div>
        <?php echo form_close(); ?> 
      </div>
    </li>
    <?php endif; ?>
    
    
  </ul>
  
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