<div class="section">
  <div class="row">
    <?php echo form_open(site_url("account/vouchers/start_activate_code"), array("" => "")) ?>
    <div class="col s12">
        <div class="input-field">
          <input id="code" type="text" name="code" placeholder="A8F994111743A4F68480BB388A1BEA40">
          <label for="code"><?php echo lang('users vouchers code_v'); ?></label>
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