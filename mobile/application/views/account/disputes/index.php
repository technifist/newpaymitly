<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users dispute list'); ?></p>
  </div>
  
  <ul class="collection">
    <?php if ($total) : ?>
    <?php foreach ($dispute as $view) : ?>
    <li class="collection-item avatar">
      <a class="black-text darken-4" href="/account/disputes/detail/<?php echo $view['id']; ?>">
      <?if($view['status']==1){?>
      <i class="material-icons circle">gavel</i>
      <?}else{?>
      <?}?>
      <?if($view['status']==2){?>
      <i class="material-icons red circle">gavel</i>
      <?}else{?>
      <?}?>
      <?if($view['status']==3){?>
      <i class="material-icons orange circle">gavel</i>
      <?}else{?>
      <?}?>
      <?if($view['status']==4){?>
      <i class="material-icons green circle">gavel</i>
      <?}else{?>
      <?}?>
      <span class="title"><?php echo $view['time_dispute']; ?></span>
      <p class="grey-text"><?php echo lang('users history id_trans'); ?>: <?php echo $view['transaction']; ?> | <?php echo lang('users withdrawal amount'); ?>: <?php echo $view['amount']; ?> <?if($view['currency']=='debit_base'){?>
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