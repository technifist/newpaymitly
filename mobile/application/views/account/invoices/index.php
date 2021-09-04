<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users invoices all'); ?></p>
  </div>
  
<ul class="collection">
  <?php if ($total) : ?>
  <?php foreach ($history as $view) : ?>
  
  <li class="collection-item avatar">
    <a class="black-text darken-4" href="<?php echo base_url();?>account/invoices/detail/<?php echo $view['id']; ?>">
      <?if($view['status']==1){?>
      <i class="material-icons circle">description</i>
      <?}else{?>
      <?}?>
      <?if($view['status']==2){?>
      <i class="material-icons circle green">description</i>
      <?}else{?>
      <?}?>
      <?if($view['status']==3){?>
      <i class="material-icons circle red">description</i>
      <?}else{?>
      <?}?>
      <span class="title truncate"><?php echo $view['name']; ?></span>
      <p class="green-text"><?php echo $view['amount']; ?> <?if($view['currency']=='debit_base'){?>
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
                                <?}?>
    </p>
      </a>
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
    <i class="large material-icons">filter_list</i>
  </a>
  <ul>
    <li><a href="<?php echo base_url('account/invoices/new_invoice'); ?>" class="btn-floating green"><i class="material-icons">add</i></a></li>
    <li><a href="<?php echo base_url('account/invoices/inbox'); ?>" class="btn-floating yellow darken-4"><i class="material-icons">move_to_inbox</i></a></li>
    <li><a href="<?php echo base_url('account/invoices/sent'); ?>" class="btn-floating red"><i class="material-icons">send</i></a></li>
  </ul>
</div>