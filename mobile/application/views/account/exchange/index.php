<nav class="nav-extended deep-purple lighten-1">
    <div class="nav-content">
      <ul class="tabs tabs-transparent">
        <li class="tab"><a class="active" href="#of"><?php echo lang('users title form_exchange'); ?></a></li>
        <li class="tab"><a href="#to"><?php echo lang('users title to_form_exchange'); ?></a></li>
      </ul>
    </div>
</nav>

<div id="of">
  <div class="section">
    <?php echo form_open(site_url("account/exchange/calculation"), array("" => "")) ?>
    <div class="row">
      <div class="col s12">
          <div class="input-field">
            <input id="amount" type="text" name="amount" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" placeholder="0.00">
            <label for="amount"><?php echo lang('users exchange amount'); ?>, <?php echo $this->currencys->display->base_code ?></label>
          </div>
      </div>
      <div class="col s12">
          <div class="input-field">
          <select name="currency">
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
        <div class="right-align">
          <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users exchange check_calc'); ?></button>
        </div>
      </div>
    </div>
    <?php echo form_close(); ?> 
  </div>
</div>
<div id="to">
  <div class="section">
    <?php echo form_open(site_url("account/exchange/calculation_to"), array("" => "")) ?>
    <div class="row">
      <div class="col s12">
          <div class="input-field">
            <input id="amount" type="text" name="amount" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" placeholder="0.00">
            <label for="amount"><?php echo lang('users exchange amount'); ?></label>
          </div>
      </div>
      <div class="col s12">
          <div class="input-field">
          <select name="currency">
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
        <div class="right-align">
          <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users exchange check_calc'); ?></button>
        </div>
      </div>
    </div>
    <?php echo form_close(); ?>
  </div>
</div>