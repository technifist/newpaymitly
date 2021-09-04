<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users cart total'); ?> <?php echo $this->notice->sum_items_cart($user['username']); ?></p>
  </div>
  
<ul class="collection">
    <?php if ($total) : ?>
    <?php foreach ($history as $view) : ?>
    <?if($this->notice->detail_item_cart_name($view['id_item']) != NULL){?>
    <li class="collection-item avatar">
      <a class="black-text darken-4 modal-trigger" href="#modal<?php echo $view['id']; ?>">
      <img src="<?php echo base_url();?>upload/items/img/<?php echo $this->notice->detail_item_cart_img($view['id_item']); ?>" alt="" class="circle">
      <span class="title truncate"><?php echo $this->notice->detail_item_cart_name($view['id_item']); ?></span>
      <?php
                
                $get_amount = $this->notice->detail_item_cart_price($view['id_item']);
                
                $currency = $this->notice->detail_item_cart_currency($view['id_item']);
                
                if ($currency = "debit_base") {
                  $sym = $this->currencys->display->base_code;
                } else if ($currency = "debit_extra1") {
                  $sym = $this->currencys->display->extra1_code;
                } else if ($currency = "debit_extra2") {
                  $sym = $this->currencys->display->extra2_code;
                } else if ($currency = "debit_extra3") {
                  $sym = $this->currencys->display->extra3_code;
                } else if ($currency = "debit_extra4") {
                  $sym = $this->currencys->display->extra4_code;
                } else if ($currency = "debit_extra5") {
                  $sym = $this->currencys->display->extra5_code;
                }

      ?>
      <p class="green-text"><?php echo $this->notice->detail_item_cart_price($view['id_item']); ?> <?php echo $sym; ?> <span class="grey-text">+<?php echo $this->notice->detail_item_cart_fee($view['id_item'], $get_amount); ?> <?php echo $sym; ?></span></p>
      </a>
    </li>
    <div id="modal<?php echo $view['id']; ?>" class="modal bottom-sheet">
        <ul class="collection">
          <li class="collection-item">
            <a href="<?php echo base_url();?>account/cart/pay_item/<?php echo $view['id']; ?>" class="ml-0 waves-effect waves-light btn-floating green"><i class="material-icons">credit_card</i></a>
            <a href="<?php echo base_url();?>account/cart/del_item/<?php echo $view['id']; ?>" class="secondary-content waves-effect waves-light btn-floating red"><i class="material-icons">delete</i></a>
          </li>
        </ul>
        
    </div>
    <?}else{?>
    <li class="collection-item avatar">
      <a class="black-text darken-4 modal-trigger" href="#modal-<?php echo $view['id']; ?>">
      <img src="<?php echo base_url();?>upload/items/img/default.png" alt="" class="circle">
      <span class="title red-text"><?php echo lang('users cart not_aviable'); ?></span>
      <p class="grey-text"><?php echo lang('users shops name_shop'); ?>: <?php echo $this->notice->detail_item_cart_shop($view['id_merchant']); ?></p>
      </a>
    </li>
  <div id="modal-<?php echo $view['id']; ?>" class="modal bottom-sheet">
        <ul class="collection">
          <li class="collection-item">
            <a href="<?php echo base_url();?>account/cart/del_item/<?php echo $view['id']; ?>" class="secondary-content waves-effect waves-light btn-floating red"><i class="material-icons">delete</i></a>
          </li>
        </ul>
        
    </div>
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