<div class="carousel carousel-slider center" style="height: 200px">
  <a onclick="M.toast({html: '<?php echo lang('users balanve hold'); ?>: <?php echo $this->notice->hold_balance($user['username'], "debit_base", 2); ?> <?php echo $this->currencys->display->base_code ?>'})">
    <div class="carousel-item deep-purple white-text" href="#one!">
      <h3><?php echo $this->notice->hold_balance($user['username'], "debit_base", 1); ?> <?php echo $this->currencys->display->base_code ?></h3>
      <h5 class="white-text"><?php echo $this->currencys->display->base_name ?></h5>
    </div>
    </a>
    <?php if($this->currencys->display->extra1_check) : ?>
    <a onclick="M.toast({html: '<?php echo lang('users balanve hold'); ?>: <?php echo $this->notice->hold_balance($user['username'], "debit_extra1", 2); ?> <?php echo $this->currencys->display->extra1_code ?>'})">
    <div class="carousel-item deep-purple white-text" href="#two!">
      <h3><?php echo $this->notice->hold_balance($user['username'], "debit_extra1", 1); ?> <?php echo $this->currencys->display->extra1_code ?></h3>
      <h5 class="white-text"><?php echo $this->currencys->display->extra1_name ?></h5>
    </div>
    </a>
    <?php endif; ?>
    <?php if($this->currencys->display->extra2_check) : ?>
    <a onclick="M.toast({html: '<?php echo lang('users balanve hold'); ?>: <?php echo $this->notice->hold_balance($user['username'], "debit_extra2", 2); ?> <?php echo $this->currencys->display->extra2_code ?>'})">
    <div class="carousel-item deep-purple white-text" href="#two!">
      <h3><?php echo $this->notice->hold_balance($user['username'], "debit_extra2", 1); ?> <?php echo $this->currencys->display->extra2_code ?></h3>
      <h5 class="white-text"><?php echo $this->currencys->display->extra2_name ?></h5>
    </div>
    </a>
    <?php endif; ?>
    <?php if($this->currencys->display->extra3_check) : ?>
    <a onclick="M.toast({html: '<?php echo lang('users balanve hold'); ?>: <?php echo $this->notice->hold_balance($user['username'], "debit_extra3", 2); ?> <?php echo $this->currencys->display->extra3_code ?>'})">
    <div class="carousel-item deep-purple white-text" href="#two!">
      <h3><?php echo $this->notice->hold_balance($user['username'], "debit_extra3", 1); ?> <?php echo $this->currencys->display->extra3_code ?></h3>
      <h5 class="white-text"><?php echo $this->currencys->display->extra3_name ?></h5>
    </div>
    </a>
    <?php endif; ?>
    <?php if($this->currencys->display->extra4_check) : ?>
    <a onclick="M.toast({html: '<?php echo lang('users balanve hold'); ?>: <?php echo $this->notice->hold_balance($user['username'], "debit_extra4", 2); ?> <?php echo $this->currencys->display->extra4_code ?>'})">
    <div class="carousel-item deep-purple white-text" href="#two!">
      <h3><?php echo $this->notice->hold_balance($user['username'], "debit_extra4", 1); ?> <?php echo $this->currencys->display->extra4_code ?></h3>
      <h5 class="white-text"><?php echo $this->currencys->display->extra4_name ?></h5>
    </div>
    </a>
    <?php endif; ?>
    <?php if($this->currencys->display->extra5_check) : ?>
    <a onclick="M.toast({html: '<?php echo lang('users balanve hold'); ?>: <?php echo $this->notice->hold_balance($user['username'], "debit_extra5", 2); ?> <?php echo $this->currencys->display->extra5_code ?>'})">
    <div class="carousel-item deep-purple white-text" href="#two!">
      <h3><?php echo $this->notice->hold_balance($user['username'], "debit_extra5", 1); ?> <?php echo $this->currencys->display->extra5_code ?></h3>
      <h5 class="white-text"><?php echo $this->currencys->display->extra5_name ?></h5>
    </div>
    </a>
    <?php endif; ?>
  </div>

<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users trans all'); ?></p>
  </div>
  
  
  <ul class="collection">
    <?php if ($total) : ?>
    <?php foreach ($history as $view) : ?>
    <a class="black-text darken-4" href="<?php echo base_url();?>account/transactions/detail/<?php echo $view['id']; ?>">
    <li class="collection-item avatar">
      <img src="<?php echo $avatar = $this->notice->check_img($view['type'], $view['sender'], $view['id']); ?>" alt="" class="circle">
      <span class="grey-text"><?php echo $view['time']; ?></span>
      <p class="title"><?if($view['type']==1){?>
                                  <?php echo lang('users trans deposit'); ?>
                                <?}else{?>
                                <?}?>
                               <?if($view['type']==2){?>
                                  <?php echo lang('users trans withdrawal'); ?>
                                <?}else{?>
                                <?}?>
                               <?if($view['type']==3){?>
                                  <?php echo lang('users trans transfer'); ?>
                                <?}else{?>
                                <?}?>
                               <?if($view['type']==4){?>
                                  <?php echo lang('users trans exchange'); ?>
                                <?}else{?>
                                <?}?>
                               <?if($view['type']==5){?>
                                  <?php echo lang('users trans external'); ?>
                                <?}else{?>
                                <?}?>
      </p>
      <a href="#!" class="secondary-content deep-purple-text">
        <h6>
        <?php echo $this->notice->check_amount_transaction($view['sum'], $view['amount'], $view['fee'], $view['sender'], $view['receiver'], $view['type'], $user['username'], $view['id']); ?> <span class="grey-text"><?if($view['currency']=='debit_base'){?>
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
          </span>
        </h6>
        
        
        
      </a>
    </li>
    </a>
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