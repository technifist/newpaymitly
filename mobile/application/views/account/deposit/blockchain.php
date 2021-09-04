<div class="card grey lighten-3 mt-0 mb-0">
  <div class="card-content center-align">
    <img src="<?php echo $qr_img; ?>">
    <h4><?php echo lang('users merchants btc_address'); ?></h4>
    <p><?php echo $forwarding_address; ?></p>
  </div>
</div>

<ul class="collection mt-0">
      <li class="collection-item"><?php echo lang('users merchants btc_order'); ?> <?php echo $btc_value; ?> BTC. <?php echo lang('users merchants btc_total'); ?> <?php echo $amount; ?> <?php echo $symbol; ?> <?php echo lang('users merchants btc_completed'); ?>. <?php echo lang('users deposit deposit_blockchain_in'); ?></li>
    </ul>

<div class="fixed-action-btn">
  <a href="<?php echo base_url('account/transactions'); ?>" class="btn-floating btn-large green modal-trigger">
    <i class="material-icons">dashboard</i>
  </a>
</div>