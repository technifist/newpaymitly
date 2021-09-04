<?php
  $label_check = mb_strimwidth($transactions['label'], 0, 3);
  if ($label_check == "blc") {
    $blockchain_type = '1';
  } else {
    $blockchain_type = '2';
  }
?>

<nav class="nav-extended deep-purple lighten-1">
    <div class="nav-content">
      <ul class="tabs tabs-transparent">
        <li class="tab"><a class="active" href="#detail"><?php echo lang('users history detail'); ?></a></li>
        <li class="tab <?if($transactions['type'] != 2 & $transactions['type'] != 4){?><?if($user['username'] == $transactions['sender']){?><?if($dispute_mode == 1){?><?}else{?>disabled<?}?><?}else{?>disabled<?}?><?}else{?>disabled<?}?>"><a href="#dispute"><?php echo lang('users history open_dispute'); ?></a></li>
      </ul>
    </div>
  </nav>

<div id="detail" class="col s12">
  
  <div class="card grey lighten-3 mt-0 mb-0">
  <div class="card-content center-align">
     <img class="circle width50" src="<?php echo $avatar = $this->notice->check_img($transactions['type'], $transactions['sender'], $transactions['id']); ?>">
    <p><strong><?if($transactions['type']==1){?>
                      <?php echo lang('users trans deposit'); ?>
                 <?}else{?>
                 <?}?>
                 <?if($transactions['type']==2){?>
                      <?php echo lang('users trans withdrawal'); ?>
                 <?}else{?>
                 <?}?>
                 <?if($transactions['type']==3){?>
                      <?php echo lang('users trans transfer'); ?>
                 <?}else{?>
                 <?}?>
                 <?if($transactions['type']==4){?>
                      <?php echo lang('users trans exchange'); ?>
                 <?}else{?>
                 <?}?>
                 <?if($transactions['type']==5){?>
                      <?php echo lang('users trans external'); ?>
                 <?}else{?>
                 <?}?></strong>
    </p>
    <p class="grey-text">
     <?php echo $transactions['time'] ?>
    </p>
    <h4 class="mt-0">
      <?php echo $transactions['amount'] ?> <?if($transactions['currency']=='debit_base'){?>
                      <?php echo $this->currencys->display->base_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($transactions['currency']=='debit_extra1'){?>
                      <?php echo $this->currencys->display->extra1_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($transactions['currency']=='debit_extra2'){?>
                      <?php echo $this->currencys->display->extra2_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($transactions['currency']=='debit_extra3'){?>
                      <?php echo $this->currencys->display->extra3_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($transactions['currency']=='debit_extra4'){?>
                      <?php echo $this->currencys->display->extra4_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($transactions['currency']=='debit_extra5'){?>
                      <?php echo $this->currencys->display->extra5_code ?>
                  <?}else{?>
                  <?}?>
    </h4>
    <p class="grey-text">
      <?php echo lang('users trans fee'); ?> <?php echo $this->notice->check_fee_transaction($transactions['sum'], $transactions['amount'], $transactions['fee'], $transactions['sender'], $transactions['receiver'], $transactions['type'], $user['username'], $transactions['id']); ?> <?if($transactions['currency']=='debit_base'){?>
                      <?php echo $this->currencys->display->base_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($transactions['currency']=='debit_extra1'){?>
                      <?php echo $this->currencys->display->extra1_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($transactions['currency']=='debit_extra2'){?>
                      <?php echo $this->currencys->display->extra2_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($transactions['currency']=='debit_extra3'){?>
                      <?php echo $this->currencys->display->extra3_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($transactions['currency']=='debit_extra4'){?>
                      <?php echo $this->currencys->display->extra4_code ?>
                  <?}else{?>
                  <?}?>
                  <?if($transactions['currency']=='debit_extra5'){?>
                      <?php echo $this->currencys->display->extra5_code ?>
                  <?}else{?>
                  <?}?>
    </p>
  </div>
</div>

<ul class="collection mt-0">
      <li class="collection-item"><strong><?php echo lang('users trans id'); ?></strong></br><?php echo $transactions['id'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users trans sender'); ?></strong></br><?php echo $transactions['sender'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users trans receiver'); ?></strong></br><?php echo $transactions['receiver'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users trans status'); ?></strong></br><?if($transactions['status']==1){?>
                <?php echo lang('users trans pending'); ?>
                 <?}else{?>
                 <?}?>
                 <?if($transactions['status']==2){?>
                <?php echo lang('users trans success'); ?>
                 <?}else{?>
                 <?}?>
                 <?if($transactions['status']==3){?>
                <?php echo lang('users trans refund'); ?>
                 <?}else{?>
                 <?}?>
                <?if($transactions['status']==4){?>
                <?php echo lang('users trans dispute'); ?>
                 <?}else{?>
                 <?}?>
                 <?if($transactions['status']==5){?>
                <?php echo lang('users trans blocked'); ?>
                 <?}else{?>
                 <?}?></li>
      <li class="collection-item"><strong><?php echo lang('users trans ip'); ?></strong></br><?php echo $transactions['ip_address'] ?></li>
      <?php if ($blockchain_type == '1') : ?>
      <li class="collection-item"><strong><?php echo lang('users deposit number_confirm'); ?></strong></br><?php echo $this->fixer->get_btc_confirm_network($transactions['user_comment']); ?></li>
      <?php endif; ?>
      <?if($transactions['user_comment']!=NULL){?>
<li class="collection-item"><strong><?php echo lang('users trans comment'); ?></strong></br><?php echo $transactions['user_comment'] ?></li>
      <?}else{?>
      <?}?>
    </ul>

</div>


<?if($transactions['type'] != 2 & $transactions['type'] != 4){?><?if($user['username'] == $transactions['sender']){?><?if($dispute_mode == 1){?>
<div id="dispute" class="col s12">
  
  <div class="container">
    <div class="section">
      <?php echo form_open(site_url("account/disputes/start_dispute"), array("" => "")) ?>
          <?php if (isset($transactions['id'])) : ?>
            <?php echo form_hidden('id', $transactions['id']); ?>
          <?php endif; ?>
      <div class="input-field col s12">
        <select name="title">
          <option value="1"><?php echo lang('users history not_received'); ?></option>
          <option value="2"><?php echo lang('users history not_desk'); ?></option>
        </select>
        <label><?php echo lang('users history dispute_title'); ?></label>
      </div>
      <div class="input-field col s12">
          <textarea id="textarea1" class="materialize-textarea" placeholder="" name="message"><?php echo lang('users history help'); ?></textarea>
          <label for="textarea1"><?php echo lang('users history reason'); ?></label>
      </div>
      <div class="right-align">
        <button type="submit" name="submit" class="waves-effect waves-light btn green"><?php echo lang('users history start'); ?></button>
      </div>
      
      <?php echo form_close(); ?> 
    </div>
  </div>


</div>
<?}else{?><?}?><?}else{?><?}?><?}else{?><?}?>



<?php if ($transactions['protect'] != "none" & $transactions['status'] == 1 & $transactions['receiver'] == $user['username']) : ?>
<div class="fixed-action-btn">
  <a href="#modal1" class="btn-floating btn-large green modal-trigger">
    <i class="material-icons">security</i>
  </a>
</div>

<div id="modal1" class="modal bottom-sheet">
  <?php echo form_open(site_url("account/transactions/protect_confirm/"), array("" => "")) ?>
              <?php if (isset($transactions['id'])) : ?>
                <?php echo form_hidden('id', $transactions['id']); ?>
              <?php endif; ?>
    <div class="modal-content">
      <h5 class="mt-0"><?php echo lang('users transfer code_protect'); ?></h5>
      <div class="input-field col s12">
          <input placeholder="0123" id="first_name" type="text" name="code_protect" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" maxlength="4">
          <label for="first_name"><?php echo lang('users transaction protect_activate'); ?></label>
        </div>
    </div>
    <div class="modal-footer">
      <a href="<?php echo base_url();?>account/transactions/protect_refund/<?php echo $transactions['id']; ?>" class="modal-action modal-close waves-effect waves-red red btn-flat white-text"><?php echo lang('users trans refund'); ?></a>
      <button type="submit" name="submit" class="modal-action modal-close waves-effect waves-green btn-flat"><?php echo lang('users transfer protect_confirm'); ?></button>
    </div>
  <?php echo form_close(); ?> 
  </div>

<?php endif; ?>