<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users support open_tickets'); ?></p>
  </div>
  
  <ul class="collection">
    <?php if ($total) : ?>
    <?php foreach ($ticket as $view) : ?>
    <li class="collection-item avatar">
      <a class="black-text darken-4" href="<?php echo base_url('account/support/detail_ticket'); ?>/<?php echo $view['code']; ?>">
        <?if($view['status']==1){?>
        <i class="material-icons green circle">chat_bubble_outline</i>
        <?}else{?>
        <?}?>
        <?if($view['status']==0){?>
        <i class="material-icons circle">chat_bubble_outline</i>
        <?}else{?>
        <?}?>
        <?if($view['status']==2){?>
        <i class="material-icons red circle">chat_bubble_outline</i>
        <?}else{?>
        <?}?>
        <span class="title truncate"><?php echo $view['title']; ?></span>
        <p class="grey-text"><?php echo $view['date']; ?></p>
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
  <a href="<?php echo base_url('account/support/new_ticket'); ?>" class="btn-floating btn-large green modal-trigger">
    <i class="material-icons">add</i>
  </a>
</div>