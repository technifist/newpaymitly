<nav class="nav-extended deep-purple lighten-1">
    <div class="nav-content">
      <ul class="tabs tabs-transparent">
        <li class="tab"><a class="active" href="#of"><?php echo lang('users invoices description'); ?></a></li>
        <li class="tab"><a href="#to"><?php echo lang('users dispute step_1'); ?></a></li>
      </ul>
    </div>
</nav>

<div id="of">
  
  <ul class="collection mt-0">
    <li class="collection-item"><strong><?php echo lang('users dispute id'); ?></strong></br><?php echo $dispute['id'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users disputes id_tran'); ?></strong></br><?php echo $dispute['transaction'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users disputes id_tran_time'); ?></strong></br><?php echo $dispute['time_transaction'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users disputes time_dispute'); ?></strong></br><?php echo $dispute['time_dispute'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users disputes status'); ?></strong></br><?if($dispute['status'] == 1){?>
                <?php echo lang('users disputes open'); ?>
                <?}else{?>
                <?}?>
                <?if($dispute['status'] == 2){?>
                <?php echo lang('users disputes claim'); ?>
                <?}else{?>
                <?}?>
                <?if($dispute['status'] == 3){?>
                <?php echo lang('users disputes rejected'); ?>
                <?}else{?>
                <?}?>
                <?if($dispute['status'] == 4){?>
                <?php echo lang('users disputes satisfied'); ?>
                <?}else{?>
                <?}?></li>
      <li class="collection-item"><strong><?php echo lang('users disputes claimant'); ?></strong></br><?php echo $dispute['claimant'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users disputes defendant'); ?></strong></br><?php echo $dispute['defendant'] ?></li>
      <li class="collection-item"><strong><?php echo lang('users trans amount'); ?></strong></br><?php echo $dispute['amount'] ?> <?if($dispute['currency']=='debit_base'){?>
                <?php echo $this->currencys->display->base_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency']=='debit_extra1'){?>
                  <?php echo $this->currencys->display->extra1_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency']=='debit_extra2'){?>
                  <?php echo $this->currencys->display->extra2_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency']=='debit_extra3'){?>
                  <?php echo $this->currencys->display->extra3_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency']=='debit_extra4'){?>
                  <?php echo $this->currencys->display->extra4_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency']=='debit_extra5'){?>
                  <?php echo $this->currencys->display->extra5_code ?>
                <?}else{?>
                <?}?>
         </li>
        <li class="collection-item"><strong><?php echo lang('users trans fee'); ?></strong></br><?php echo $dispute['fee'] ?> <?if($dispute['currency']=='debit_base'){?>
                <?php echo $this->currencys->display->base_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency'] == 'debit_extra1'){?>
                  <?php echo $this->currencys->display->extra1_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency'] == 'debit_extra2'){?>
                  <?php echo $this->currencys->display->extra2_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency'] == 'debit_extra3'){?>
                  <?php echo $this->currencys->display->extra3_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency'] == 'debit_extra4'){?>
                  <?php echo $this->currencys->display->extra4_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency'] == 'debit_extra5'){?>
                  <?php echo $this->currencys->display->extra5_code ?>
                <?}else{?>
                <?}?>
        </li>
        <li class="collection-item"><strong><?php echo lang('users trans sum'); ?></strong></br><?php echo $dispute['sum'] ?> <?if($dispute['currency'] == 'debit_base'){?>
                <?php echo $this->currencys->display->base_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency'] == 'debit_extra1'){?>
                  <?php echo $this->currencys->display->extra1_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency'] == 'debit_extra2'){?>
                  <?php echo $this->currencys->display->extra2_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency'] == 'debit_extra3'){?>
                  <?php echo $this->currencys->display->extra3_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency'] == 'debit_extra4'){?>
                  <?php echo $this->currencys->display->extra4_code ?>
                <?}else{?>
                <?}?>
                <?if($dispute['currency'] == 'debit_extra5'){?>
                  <?php echo $this->currencys->display->extra5_code ?>
                <?}else{?>
                <?}?>
        </li>
        <li class="collection-item"><strong><?php echo lang('users desc dispute'); ?></strong></br><?if($dispute['title'] == 1){?>
        <?php echo lang('users history not_received'); ?>
        <?}else{?>
        <?}?><?if($dispute['title'] == 2){?>
          <?php echo lang('users history not_desk'); ?>
        <?}else{?>
          <?}?></br><?php echo $dispute['message'] ?>
        </li>
    </ul>
  
</div>

<div id="to">
  
  <div class="container">
    
    <div class="chat">
      <ul>
      <?php foreach($log_comment->result() as $view) : ?>
        
      <?php if ($view->user == $dispute['claimant']) : ?>
      <li class="you">
        <a class="user" href="#"><img alt="" src="<?php echo $this->notice->check_userimg_discussion($dispute['claimant']); ?>" /></a>
        <div class="date">
          <?php echo $view->time ?>
        </div>
        <div class="message">
          <?php echo $view->comment ?>
        </div>
      </li>
      <?php endif; ?>
        
      <?php if ($view->user == $dispute['defendant']) : ?>
      <li class="other">
        <a class="user" href="#"><img alt="" src="<?php echo $this->notice->check_userimg_discussion($dispute['defendant']); ?>" /></a>
        <div class="date">
          <?php echo $view->time ?>
        </div>
        <div class="message">
          <?php echo $view->comment ?>
        </div>
      </li>
      <?php endif; ?>
        
      <?php if ($view->role != "1") : ?>
      <li class="other">
        <a class="user" href="#"><img alt="" src="<?php echo base_url();?>assets/themes/account/img/pay-icon/fiat.png" /></a>
        <div class="date">
          <?php echo $view->time ?>
        </div>
        <div class="message">
          <?php echo $view->comment ?>
        </div>
      </li>
      <?php endif; ?>
        
   
        
      <?php endforeach; ?>
      </ul>
    </div>
    
    <div class="section">
    
    </div>
    
  </div>
  
  <div class="fixed-action-btn">
    <a class="btn-floating btn-large deep-purple lighten-1">
      <i class="large material-icons">more_horiz</i>
    </a>
    <ul>
      <?php if($dispute['status'] != 3 && $dispute['status'] != 4) : ?>
      <li><a href="#modal1" class="btn-floating green modal-trigger"><i class="material-icons">textsms</i></a></li>
      <?php endif; ?>
      <?php if($dispute['status'] == 1 && $dispute['claimant'] == $user['username']) : ?>
      <li><a href="<?php echo base_url();?>account/disputes/cancel_claim/<?php echo $dispute['id']; ?>" class="btn-floating orange"><i class="material-icons">lock</i></a></li>
      <?php endif; ?>
      <?php if($dispute['status'] == 2 && $dispute['claimant'] == $user['username']) : ?>
      <li><a href="<?php echo base_url();?>account/disputes/cancel_claim/<?php echo $dispute['id']; ?>" class="btn-floating orange"><i class="material-icons">lock</i></a></li>
      <?php endif; ?>
      <?php if($dispute['status'] == 1) : ?>
      <li><a href="<?php echo base_url();?>account/disputes/open_claim/<?php echo $dispute['id']; ?>" class="btn-floating red"><i class="material-icons">warning</i></a></li>
      <?php endif; ?>
      <?php if($dispute['status'] != 3 && $dispute['status'] != 4 && $dispute['defendant'] == $user['username']) : ?>
      <li><a href="<?php echo base_url();?>account/disputes/refund/<?php echo $dispute['id']; ?>" class="btn-floating blue"><i class="material-icons">credit_card</i></a></li>
      <?php endif; ?>
    </ul>
  </div>
  
  <?php if($dispute['status'] != 3 && $dispute['status'] != 4) : ?>
  <!-- Modal Structure -->
  <div id="modal1" class="modal bottom-sheet">
    <?php echo form_open(site_url("account/disputes/add_comment"), array("" => "")) ?>
    <?php if (isset($dispute['id'])) : ?>
      <?php echo form_hidden('id', $dispute['id']); ?>
    <?php endif; ?>
    <div class="modal-content">
      <div class="col s12">
        <div class="input-field">
          <textarea class="materialize-textarea" id="comment" name="comment" placeholder="<?php echo lang('users tickets new_comment'); ?>"></textarea>
          <label for="comment"><?php echo lang('users tickets new_comment'); ?></label>
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <button type="submit" class="modal-action modal-close waves-effect waves-green btn-flat"><?php echo lang('users button save'); ?></button>
    </div>
    <?php echo form_close(); ?> 
  </div>
  <?php endif; ?>
  
</div>