<div class="section">
  <?php echo form_open(site_url("account/withdrawal/confirm"), array("" => "")) ?>
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
            <?php if ($credit_card['status'] == 1) : ?>
            <option value="credit_card" <?if($enabled_credit_card == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/visa.png"><?php echo $credit_card['name']; ?></option>
            <?php endif; ?>
            <?php if ($bitcoin['status'] == 1) : ?>
            <option value="bitcoin" <?if($enabled_bitcoin == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/btc.png"><?php echo $bitcoin['name']; ?></option>
            <?php endif; ?>
            <?php if ($swift['status'] == 1) : ?>
            <option value="swift" <?if($enabled_swift == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/swift.png"><?php echo $swift['name']; ?></option>
            <?php endif; ?>
            <?php if ($skrill['status'] == 1) : ?>
            <option value="skrill" <?if($enabled_skrill == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/skrill.png"><?php echo $skrill['name']; ?></option>
            <?php endif; ?>
            <?php if ($payza['status'] == 1) : ?>
            <option value="payza" <?if($enabled_payza == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/payza.png"><?php echo $payza['name']; ?></option>
            <?php endif; ?>
            <?php if ($advcash['status'] == 1) : ?>
            <option value="advcash" <?if($enabled_advcash == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/advcash.png"><?php echo $advcash['name']; ?></option>
            <?php endif; ?>
            <?php if ($perfect_m['status'] == 1) : ?>
            <option value="perfect_m" <?if($enabled_perfect_m == FALSE){?>disabled<?}else{?><?}?> data-icon="<?php echo base_url();?>assets/themes/account/img/pay-icon/pm.png"><?php echo $perfect_m['name']; ?></option>
            <?php endif; ?>
          </select>
          <label><?php echo lang('users title form_withdrawal'); ?></label>
        </div>
    </div>
    
    <div class="fixed-action-btn">
        <button type="submit" class="btn-floating btn-large green modal-trigger">
          <i class="material-icons">done</i>
        </button>
    </div>
    
  <?php echo form_close(); ?>   
</div>