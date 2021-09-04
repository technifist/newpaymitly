<?if($user[$currency] >= $total_amount){?>

<div class="card green mt-0 mb-0">
  <div class="card-content center-align">
    <p class="white-text">
     <?php echo lang('users withdrawal confirm_start'); ?>
    </p>
    <h4 class="white-text"><?php echo $amount; ?> 
          <?if($currency=='debit_base'){?>
                      <?php echo $this->currencys->display->base_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($currency=='debit_extra1'){?>
                      <?php echo $this->currencys->display->extra1_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($currency=='debit_extra2'){?>
                      <?php echo $this->currencys->display->extra2_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($currency=='debit_extra3'){?>
                      <?php echo $this->currencys->display->extra3_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($currency=='debit_extra4'){?>
                      <?php echo $this->currencys->display->extra4_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($currency=='debit_extra5'){?>
                      <?php echo $this->currencys->display->extra5_code ?>
                  <?}else{?>
                  <?}?>
    </h4>
    <p class="white-text">+ <?php echo $total_fee; ?> 
          <?if($currency=='debit_base'){?>
                      <?php echo $this->currencys->display->base_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($currency=='debit_extra1'){?>
                      <?php echo $this->currencys->display->extra1_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($currency=='debit_extra2'){?>
                      <?php echo $this->currencys->display->extra2_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($currency=='debit_extra3'){?>
                      <?php echo $this->currencys->display->extra3_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($currency=='debit_extra4'){?>
                      <?php echo $this->currencys->display->extra4_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($currency=='debit_extra5'){?>
                      <?php echo $this->currencys->display->extra5_code ?>
                  <?}else{?>
                  <?}?>
    </p>
  </div>
</div>

<?}else{?>

<div class="card red mt-0 mb-0">
  <div class="card-content center-align">
    <p class="white-text">
     <?php echo lang('users withdrawal error_2'); ?>
    </p>
  </div>
</div>

<?}?>

<ul class="collection mt-0">
  <li class="collection-item"><strong><?php echo lang('users withdrawal method'); ?></strong></br>
  <?php echo $method; ?>
  </li>
  <li class="collection-item"><strong><?php echo lang('users withdrawal method_account'); ?></strong></br>
  <?php echo $account; ?>
  </li>
  <li class="collection-item"><strong><?php echo lang('users withdrawal terms'); ?></strong></br>
  <?php echo $terms; ?>
  </li>
</ul>
<?if($user[$currency] >= $total_amount){?>
<?php echo form_open(site_url("account/withdrawal/start_withdrawal"), array("" => "")) ?>
<?php echo form_hidden('amount', $amount); ?>
<?php echo form_hidden('method', $code_method); ?>
<?php echo form_hidden('currency', $currency); ?>
<div class="fixed-action-btn">
  <button type="submit" class="btn-floating btn-large green modal-trigger">
    <i class="material-icons">done</i>
  </button>
</div>
<?php echo form_close(); ?> 
<?}else{?>
<?}?>