<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users orders sales'); ?> (<span class="green-text"><?php echo $total; ?></span>)</p>
  </div>
  
  
   <ul class="collection">
    <?php if ($total) : ?>
    <?php foreach ($history as $view) : ?>
    <li class="collection-item avatar">
      <img src="<?php echo base_url();?>upload/items/img/<?php echo $this->notice->detail_item_cart_img($view['id_item']); ?>" alt="" class="circle">
      <span class="title truncate"><?php echo $this->notice->detail_item_cart_name($view['id_item']); ?></span>
      <p class="grey-text"><?php echo lang('users shops merchant_buyer'); ?>: <?php echo $view['user']; ?> | ID: <?php echo $view['id']; ?> | <?php echo lang('users support code'); ?>: <?php echo $view['code']; ?> | <?php echo lang('users history id_trans'); ?>: <?php echo $view['id_transaction']; ?></p>
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

  <div class="center">
    <?php echo $pagination; ?>
  </div>

</div>

<div class="fixed-action-btn">
    <a class="btn-floating btn-large deep-purple lighten-1">
      <i class="large material-icons">more_horiz</i>
    </a>
    <ul>
      <li><a href="<?php echo base_url();?>account/merchants/merchant_categories/<?php echo $merchant['id']; ?>" class="btn-floating orange"><i class="material-icons">list</i></a></li>
      <li><a href="<?php echo base_url();?>account/merchants/items/<?php echo $merchant['id']; ?>" class="btn-floating blue"><i class="material-icons">shopping_basket</i></a></li>
      <li><a href="<?php echo base_url();?>account/merchants/settings/<?php echo $merchant['id']; ?>" class="btn-floating green"><i class="material-icons">settings</i></a></li>
    </ul>
  </div>