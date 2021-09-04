<div class="section">
  <div class="row">
    <?php echo form_open(site_url("account/vouchers/start_new_voucher"), array("" => "")) ?>
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
    
    <div class="fixed-action-btn">
      <button type="submit" class="btn-floating btn-large green modal-trigger">
        <i class="material-icons">done</i>
      </button>
    </div>
    <?php echo form_close(); ?> 
  </div>
</div>