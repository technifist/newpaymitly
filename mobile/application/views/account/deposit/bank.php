<div class="card grey lighten-3 mt-0 mb-0">
  <div class="card-content center-align">
    <i class="medium material-icons circle-invoice grey lighten-1 i-invoice">account_balance</i>
    <p class="mt-0"><?php echo lang('users deposit deposit_bank'); ?></p>
  </div>
</div>

<ul class="collection mt-0">
  <li class="collection-item"><?php echo lang('users deposit deposit_bank_info'); ?> <strong><?php echo $id_transaction ?></strong></li>
</ul>
<div class="container">
    <div class="section">
<div class="col s12">
  <div class="input-field ">
    <textarea id="textarea1" class="materialize-textarea" placeholder="" name="message" disabled><?php echo $merchant_account ?></textarea>
    <label for="textarea1"><?php echo lang('users deposit deposit_bank_detail'); ?></label>
  </div>
</div>
  </div>
</div>

<div class="fixed-action-btn">
  <a href="<?php echo base_url('account/transactions'); ?>" class="btn-floating btn-large green modal-trigger">
    <i class="material-icons">dashboard</i>
  </a>
</div>