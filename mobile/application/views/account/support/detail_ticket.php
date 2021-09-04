<nav class="nav-extended deep-purple lighten-1">
    <div class="nav-content">
      <ul class="tabs tabs-transparent">
        <li class="tab"><a class="active" href="#of"><?php echo lang('users tickets detail'); ?></a></li>
        <li class="tab"><a href="#to"><?php echo lang('users dispute step_1'); ?></a></li>
      </ul>
    </div>
</nav>

<div id="of">
  <ul class="collection mt-0">
    <li class="collection-item"><strong><?php echo lang('users support date'); ?></br></strong><?php echo $ticket['date'] ?></li>
    <li class="collection-item"><strong><?php echo lang('users support code'); ?></br></strong><?php echo $ticket['code'] ?></li>
    <li class="collection-item"><strong><?php echo lang('users support status'); ?></br></strong>
      <?if($view['status']==1){?>
                    <?php echo lang('users tickets untreated'); ?>
                   <?}else{?>
                   <?}?>
                   <?if($view['status']==0){?>
                    <?php echo lang('users tickets processed'); ?>
                   <?}else{?>
                   <?}?>
                   <?if($view['status']==2){?>
                    <?php echo lang('users tickets closed'); ?>
                   <?}else{?>
                   <?}?>
    </li>
    <li class="collection-item"><strong><?php echo $ticket['title'] ?></br></strong><?php if ($ticket['message'] != NULL) : ?><?php echo $ticket['message'] ?><?php endif; ?></li>
  </ul>
</div>

<div id="to">
  
  <div class="container">
    <div class="chat">
    <ul>
      <?php foreach($log_comment->result() as $view) : ?>
      <?php if ($view->role == "1") : ?>
      <li class="you">
        <a class="user" href="#"><img alt="" src="<?php echo $this->notice->check_userimg($user['email']); ?>" /></a>
        <div class="date">
          <?php echo $view->date ?>
        </div>
        <div class="message">
          <?php echo $view->comment ?>
        </div>
      </li>
      <?php endif; ?>
      
      <?php if ($view->role == "0") : ?>
      <li class="other">
        <a class="user" href="#"><img alt="" src="<?php echo base_url();?>assets/themes/account/img/pay-icon/fiat.png" /></a>
        <div class="date">
          <?php echo $view->date ?>
        </div>
        <div class="message">
          <?php echo $view->comment ?>
        </div>
      </li>
      <?php endif; ?>
      <?php endforeach; ?>
    </ul>
  </div>
  </div>
  
  <div class="section">
    
  </div>


  
  <?php if ($ticket['status'] != 2) : ?>
  <div class="fixed-action-btn">
    <a class="btn-floating btn-large deep-purple lighten-1">
      <i class="large material-icons">textsms</i>
    </a>
    <ul>
      <li><a href="#modal1" class="btn-floating green modal-trigger"><i class="material-icons">add</i></a></li>
      <li><a href="<?php echo $this_url; ?>/close_ticket/<?php echo $ticket['code']; ?>" class="btn-floating red"><i class="material-icons">close</i></a></li>
    </ul>
  </div>
  
  <!-- Modal Structure -->
  <div id="modal1" class="modal bottom-sheet">
    <?php echo form_open(site_url("account/support/add_user_comment/" . $ticket['code']), array("" => "")) ?>
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
  
  <?php if ($ticket['status'] == 2) : ?>
  <div class="fixed-action-btn">
    <a href="<?php echo $this_url; ?>/reopen_ticket/<?php echo $ticket['code']; ?>" class="btn-floating btn-large deep-purple lighten-1 modal-trigger">
      <i class="large material-icons">settings_backup_restore</i>
    </a>
  </div>
  <?php endif; ?>
  
</div>