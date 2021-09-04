<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users vouchers all'); ?></p>
  </div>
  
  
  <ul class="collection with-header">
  <?php if ($total) : ?>
  <?php foreach ($vouchers as $view) : ?>
  <li class="collection-item avatar">
      <?if($view['status']==1){?>
      <i class="material-icons circle">star</i>
      <?}else{?>
      <?}?>
      <?if($view['status']==2){?>
      <i class="material-icons green circle">star</i>
      <?}else{?>
      <?}?>
      <?if($view['status']==3){?>
      <i class="material-icons red circle">star</i>
      <?}else{?>
      <?}?>
      <span class="title green-text"><?php echo $view['amount']; ?> <?if($view['currency']=='debit_base'){?>
                                  <?php echo $this->currencys->display->base_code ?>
                              <?}else{?>
                              <?}?>
                              <?if($view['currency']=='debit_extra1'){?>
                                  <?php echo $this->currencys->display->extra1_code ?>
                              <?}else{?>
                              <?}?>
                              <?if($view['currency']=='debit_extra2'){?>
                                  <?php echo $this->currencys->display->extra2_code ?>
                              <?}else{?>
                              <?}?>
                              <?if($view['currency']=='debit_extra3'){?>
                                  <?php echo $this->currencys->display->extra3_code ?>
                              <?}else{?>
                              <?}?>
                              <?if($view['currency']=='debit_extra4'){?>
                                  <?php echo $this->currencys->display->extra4_code ?>
                              <?}else{?>
                              <?}?>
                              <?if($view['currency']=='debit_extra5'){?>
                                  <?php echo $this->currencys->display->extra5_code ?>
                              <?}else{?>
                              <?}?></span>
      <p class="grey-text"><?php echo $view['code']; ?></p>
  </li>
  
  <?php endforeach; ?>
  <?php else : ?>
  <li class="collection-item">
     <p class="center-align">
       <i class="medium material-icons grey-text">info_outline</i></br>
        <?php echo lang('core error no_results'); ?>
    </p>
    
  </li>
<?php endif; ?>
</ul> 

  <div class="center-align">
    <?php echo $pagination; ?>
  </div>
  
</div>

<div class="fixed-action-btn">
  <a class="btn-floating btn-large deep-purple lighten-1">
    <i class="large material-icons">more_horiz</i>
  </a>
  <ul>
    <li><a href="<?php echo base_url('account/vouchers/new_voucher'); ?>" class="btn-floating green"><i class="material-icons">add</i></a></li>
    <li><a href="<?php echo base_url('account/vouchers/activate_code'); ?>" class="btn-floating yellow darken-4"><i class="material-icons">spellcheck</i></a></li>
  </ul>
</div>