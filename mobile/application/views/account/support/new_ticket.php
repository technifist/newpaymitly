<div class="section">
  <div class="row">
    <?php echo form_open(site_url("account/support/add_ticket/"), array("" => "")) ?>
    <div class="col s12">
        <div class="input-field">
          <input type="text" name="title" id="title" placeholder="<?php echo lang('users support title'); ?>">
          <label for="name"><?php echo lang('users support title'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <textarea class="materialize-textarea" id="comment" name="comment" placeholder="Message"></textarea>
          <label for="textarea1"><?php echo lang('users support message'); ?></label>
        </div>
    </div>
    
    <div class="fixed-action-btn">
      <button type="submit" class="btn-floating btn-large green modal-trigger">
        <i class="material-icons">send</i>
      </button>
    </div>
    <?php echo form_close(); ?> 
  </div>
</div>