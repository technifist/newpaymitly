<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script >
(function($) {
  $(function() {
    var argument = $('input[name="amount"]')
      , result = $('input[name="sum"]')
      , multiplier = <?php echo $fee; ?>;
    argument.on('input', function() {
      result.val($(this).val() * multiplier);
    });
  });
})(jQuery);;
</script>

<div class="section">
  <?php echo form_open(site_url("account/money_transfer/start_transfer/"), array("" => "")) ?>
    <div class="row">
      <div class="col s8">
        <div class="input-field">
          <input id="amount" type="text" name="amount" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" placeholder="0.00">
          <label for="amount"><?php echo lang('users transfer amount'); ?></label>
        </div>
      </div>
      <div class="col s4">
        <div class="input-field">
          <input disabled placeholder="0.00" type="text" id="sum" name="sum">
          <label for="sum"><?php echo lang('users transfer sum'); ?>, <?php echo $percent; ?>%</label>
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
          <input id="receiver" type="text" name="receiver" placeholder="username">
          <label for="receiver"><?php echo lang('users transfer user_mail'); ?></label>
        </div>
      </div>
      <div class="col s12">
        <div class="input-field">
          <textarea id="textarea1" class="materialize-textarea" name="note" placeholder="Comment"></textarea>
          <label for="textarea1"><?php echo lang('users reqest note'); ?></label>
        </div>
      </div>
      
      <div class="fixed-action-btn">
        <a href="#modal1" class="btn-floating btn-large red modal-trigger">
          <i class="material-icons">security</i>
        </a>
      </div>
      
      <!-- Modal Structure -->
      <div id="modal1" class="modal bottom-sheet">
        <div class="modal-content">
          <div class="col s12">
            <div class="input-field">
               <input placeholder="0123" id="code" type="text" name="code_protect" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" maxlength="4">
              <label for="code"><?php echo lang('users transfer code_protect'); ?></label>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
        </div>
      </div>
      
      
      <div class="col s12">
        <div class="left-align">
          <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users transfer send'); ?></button>
        </div>
      </div>
      
      
      
    </div>
  <?php echo form_close(); ?> 
</div>