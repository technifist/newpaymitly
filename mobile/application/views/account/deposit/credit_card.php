<div class="card card green mt-0 mb-0">
  <div class="card-content center-align">
    <p class="white-text mt-0"><?php echo lang('users deposit deposit_ssl'); ?></p>
  </div>
</div>

<?if($code_method == "skrill"){?>

<script>
window.onload = function(){
  document.forms['skrill'].submit();
}
</script>

<form action="https://pay.skrill.com" name="skrill" method="post" target="skrill">
           <input type="hidden" name="pay_to_email" value="<?php echo $merchant_account ?>">
           <input type="hidden" name="status_url" value="<?php echo base_url();?>ipn/skrill">
           <input type="hidden" name="return_url" value="<?php echo base_url();?>account/transactions">
           <input type="hidden" name="transaction_id " value="<?php echo $id_transaction ?>">
           <input type="hidden" name="merchant_fields" value="Field1">
           <input type="hidden" name="Field1" value="<?php echo $user['username'] ?>">
           <input type="hidden" name="language" value="EN">
           <input type="hidden" name="amount" value="<?php echo $total_amount; ?>">
           <input type="hidden" name="currency" value="<?php echo $symbol; ?>">
           <input type="hidden" name="detail1_description" value="<?php echo lang('users deposit deposit_for'); ?>:">
           <input type="hidden" name="detail1_text" value="<?php echo $user['username'] ?>">
</form>
<div class="section">
  <div class="center-align">
    <iframe name="skrill" height="600" frameBorder="0" scrolling="no">
        Browser not compatible!
     </iframe>
  </div>
</div>
  

<?}else{?>

<script>
window.onload = function(){
  document.forms['paygol'].submit();
}
</script>

<form name="paygol" method="post" action="https://www.paygol.com/pay" target="paygol" >
   <input type="hidden" name="pg_serviceid" value="<?php echo $merchant_account ?>">
   <input type="hidden" name="pg_currency" value="<?php echo $symbol; ?>">
   <input type="hidden" name="pg_name" value="<?php echo lang('users deposit deposit_for'); ?> <?php echo $user['username'] ?>">
   <input type="hidden" name="pg_custom" value="<?php echo $user['username'] ?>">
   <input type="hidden" name="pg_price" value="<?php echo $total_amount; ?>">
   <input type="hidden" name="pg_return_url" value="<?php echo base_url();?>account/transactions">
   <input type="hidden" name="pg_cancel_url" value="<?php echo base_url();?>account/deposit">   
</form>

<div class="section">
  <div class="center-align">
    <iframe name="paygol" height="600" frameBorder="0" scrolling="no">
        Browser not compatible!
     </iframe>
  </div>
</div>

<?}?>