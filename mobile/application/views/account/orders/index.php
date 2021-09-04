<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users orders total'); ?> <?php echo $this->notice->sum_items_orders($user['username']); ?></p>
  </div>
  
  <ul class="collection">
    <?php if ($total) : ?>
    <?php foreach ($history as $view) : ?>
    <?if($this->notice->detail_item_cart_name($view['id_item']) != NULL){?>
    <li class="collection-item avatar">
      <a class="black-text darken-4" href="<?php echo $this->notice->detail_item_cart_link($view['id_item']); ?>">
        <img src="<?php echo base_url();?>upload/items/img/<?php echo $this->notice->detail_item_cart_img($view['id_item']); ?>" alt="" class="circle">
        <span class="title truncate"><?php echo $this->notice->detail_item_cart_name($view['id_item']); ?></span>
        <p class="grey-text"><?php echo lang('users support code'); ?>: <?php echo $view['code']; ?></p>
      </a>
    </li>
    <?}else{?>
    <li class="collection-item avatar">
        <img src="<?php echo base_url();?>upload/items/img/default.png" alt="" class="circle">
        <span class="title truncate red-text"><?php echo lang('users cart not_aviable'); ?></span>
        <p class="grey-text"><?php echo lang('users shops name_shop'); ?>: <?php echo $this->notice->detail_item_cart_shop($view['id_merchant']); ?></p>
    </li>
    <?}?>
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