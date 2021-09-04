<div class="card grey lighten-3 mt-0 mb-0">
  <div class="card-content center-align">
    <?if($invoice['status']==1){?>
    <i class="medium material-icons circle-invoice grey lighten-1 i-invoice">description</i>
    <?}else{?>
    <?}?>
    <?if($invoice['status']==2){?>
    <i class="medium material-icons circle-invoice green lighten-1 i-invoice">description</i>
    <?}else{?>
    <?}?>
    <?if($invoice['status']==3){?>
    <i class="medium material-icons circle-invoice red lighten-1 i-invoice">description</i>
    <?}else{?>
    <?}?>
    <p>
      <strong><?php echo lang('users invoices detail'); ?> <?php echo $invoice['id'] ?></strong>
    </p>
    <p class="grey-text">
     <?php echo $invoice['date'] ?>
    </p>
    <h4 class="mt-0"><?php echo $invoice['amount'] ?> <?php echo $symbol ?></h4>
    <p class="grey-text">
     + <?php echo lang('users trans fee'); ?> <?php echo $invoice['fee'] ?> <?php echo $symbol ?>
    </p>
  </div>
</div>

<ul class="collection mt-0">
      <li class="collection-item"><strong><?php echo lang('users trans sender'); ?></strong></br><?php echo $invoice['sender'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users trans receiver'); ?></strong></br><?php echo $invoice['receiver'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users trans status'); ?></strong></br><?if($invoice['status']==1){?>
                                  <?php echo lang('users trans pending'); ?>
                                <?}else{?>
                                <?}?>
                                <?if($invoice['status']==2){?>
                                  <?php echo lang('users trans success'); ?>
                                <?}else{?>
                                <?}?>
                                <?if($invoice['status']==3){?>
                                  <?php echo lang('users invoices declined'); ?>
                                <?}else{?>
                                <?}?></li>
      <li class="collection-item"><strong><?php echo lang('users invoices name'); ?></strong></br><?php echo $invoice['name'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users invoices description'); ?></strong></br><?php echo $invoice['info'] ?></li>
</ul>

<?if($user['username']==$invoice['receiver'] && $invoice['status']==1){?>
<div class="fixed-action-btn">
  <a class="btn-floating btn-large deep-purple lighten-1">
    <i class="large material-icons">more_horiz</i>
  </a>
  <ul>
    <li><a href="<?php echo base_url();?>account/invoices/pay_invoice/<?php echo $invoice['id']; ?>" class="btn-floating green"><i class="material-icons">credit_card</i></a></li>
    <li><a href="<?php echo base_url();?>account/invoices/cancel_invoice/<?php echo $invoice['id']; ?>" class="btn-floating red"><i class="material-icons">close</i></a></li>
  </ul>
</div>
<?}else{?>
  <?}?>