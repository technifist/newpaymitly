
  <div class="section">
  <?php echo form_open(site_url("account/deposit/confirm"), array("" => "")) ?>
  <div class="row">
      <div class="col s12">
        <div class="input-field">
          <input id="amount" type="text" name="amount" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" placeholder="0.00">
          <label for="amount"><?php echo lang('users transfer amount'); ?></label>
        </div>
      </div>
    
      <div class="col s12">
        <div class="input-field">
          <select name="currency">
            <option value="debit_base"><?php echo $this->currencys->display->base_code ?></option>
            <?php if($this->currencys->display->extra1_check) : ?>
            <option value="debit_extra1"><?php echo $this->currencys->display->extra1_code ?></option>
            <?php endif; ?>
            <?php if($this->currencys->display->extra2_check) : ?>
            <option value="debit_extra2"><?php echo $this->currencys->display->extra2_code ?></option>
            <?php endif; ?>
            <?php if($this->currencys->display->extra3_check) : ?>
            <option value="debit_extra3"><?php echo $this->currencys->display->extra3_code ?></option>
            <?php endif; ?>
            <?php if($this->currencys->display->extra4_check) : ?>
            <option value="debit_extra4"><?php echo $this->currencys->display->extra4_code ?></option>
            <?php endif; ?>
            <?php if($this->currencys->display->extra5_check) : ?>
            <option value="debit_extra5"><?php echo $this->currencys->display->extra5_code ?></option>
            <?php endif; ?>
          </select>
          <label><?php echo lang('users trans cyr'); ?></label>
        </div>
      </div>
    
      <div class="col s12">
        <div class="input-field">
          <select class="icons" name="method">
            <?php if ($paypal['status'] == 1) : ?>
            <option value="paypal" <?if($enabled_paypal == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/paypal.png"><?php echo $paypal['name']; ?></option>
            <?php endif; ?>
            <?php if ($perfect_m['status'] == 1) : ?>
            <option value="perfect_m" <?if($enabled_perfect_m == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/pm.png"><?php echo $perfect_m['name']; ?></option>
            <?php endif; ?>
            <?php if ($advcash['status'] == 1) : ?>
            <option value="advcash" <?if($enabled_advcash == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/advcash.png"><?php echo $advcash['name']; ?></option>
            <?php endif; ?>
            <?php if ($payeer['status'] == 1) : ?>
            <option value="payeer" <?if($enabled_payeer == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/payeer.png"><?php echo $payeer['name']; ?></option>
            <?php endif; ?>
            <?php if ($skrill['status'] == 1) : ?>
            <option value="skrill" <?if($enabled_skrill == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/skrill.png"><?php echo $skrill['name']; ?></option>
            <?php endif; ?>
            <?php if ($paygol['status'] == 1) : ?>
            <option value="paygol" <?if($enabled_paygol == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/visa.png"><?php echo $paygol['name']; ?></option>
            <?php endif; ?>
            <?php if ($swift['status'] == 1) : ?>
            <option value="swift" <?if($enabled_swift == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/swift.png"><?php echo $swift['name']; ?></option>
            <?php endif; ?>
            <?php if ($local_bank['status'] == 1) : ?>
            <option value="local_bank" <?if($enabled_local_bank == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/local_bank.png"><?php echo $local_bank['name']; ?></option>
            <?php endif; ?>
            <?php if ($coinpayments['status'] == 1) : ?>
            <option value="coinpayments" <?if($enabled_coinpayments == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/btc.png"><?php echo $coinpayments['name']; ?></option>
            <?php endif; ?>
            <?php if ($blockchain['status'] == 1) : ?>
            <option value="blockchain" <?if($enabled_blockchain == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/blockchain.png"><?php echo $blockchain['name']; ?></option>
            <?php endif; ?>
          </select>
          <label><?php echo lang('users title form_deposit'); ?></label>
        </div>
      </div>
    
    
    
      <div class="fixed-action-btn">
        <button type="submit" class="btn-floating btn-large green modal-trigger">
          <i class="material-icons">done</i>
        </button>
      </div>
    
  </div>
  <?php echo form_close(); ?> 
</div>