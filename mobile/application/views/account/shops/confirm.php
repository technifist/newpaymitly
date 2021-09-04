<div class="card green mt-0 mb-0">
  <div class="card-content center-align">
    <p class="white-text">
     <?php echo lang('users shops confirm'); ?> <?php echo $merchant['name']; ?>
    </p>
    <h4 class="white-text"><?php echo $amount; ?> <?php echo $symbol; ?></h4>
    <p class="white-text">+ <?php echo lang('users trans fee'); ?> <?php echo $total_fee; ?>  <?php echo $symbol; ?></p>
  </div>
</div>

<ul class="collection mt-0">
  <li class="collection-item"><strong><?php echo $merchant['note_payment']; ?></strong></br><?php echo $id_payment; ?></li>
</ul>

<?php echo form_open(site_url("account/shops/start_payment"), array("" => "")) ?>
           <input type="hidden" name="amount" value="<?php echo $amount; ?>">
           <input type="hidden" name="currency" value="<?php echo $currency?>">
           <input type="hidden" name="merchant" value="<?php echo $merchant['id']?>">
            <input type="hidden" name="id_payment" value="<?php echo $id_payment?>">
<div class="fixed-action-btn">
  <button type="submit" class="btn-floating btn-large green modal-trigger">
    <i class="material-icons">done</i>
  </button>
</div>

<?php echo form_close(); ?> 