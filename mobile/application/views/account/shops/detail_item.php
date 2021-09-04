<img class="responsive-img" src="<?php echo base_url();?>upload/items/img/<?php echo $item['img']; ?>">

<ul class="collection mt-0">
      <li class="collection-item"><h5 class="green-text">
        
        <?php echo $item['price']; ?> <?if($item['currency']=='debit_base'){?>
                                    <?php echo $this->currencys->display->base_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra1'){?>
                                    <?php echo $this->currencys->display->extra1_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra2'){?>
                                    <?php echo $this->currencys->display->extra2_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra3'){?>
                                    <?php echo $this->currencys->display->extra3_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra4'){?>
                                    <?php echo $this->currencys->display->extra4_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra5'){?>
                                    <?php echo $this->currencys->display->extra5_code ?>
                                <?}else{?>
                                <?}?></h5>
  </li>
      <li class="collection-item"><strong><?php echo $item['name']; ?></strong></li>
      <li class="collection-item"><strong><?php echo lang('users shops name_shop'); ?></strong></br><?php echo $merchant['name']; ?></li>
      <li class="collection-item"><strong><?php echo lang('users shops availability'); ?></strong></br><?php echo $item['availability']; ?></li>
      <li class="collection-item"><strong><?php echo lang('users invoices description'); ?></strong></br><?php echo $item['about']; ?></li>
    </ul>

<div class="fixed-action-btn">
  <a class="btn-floating btn-large green">
    <i class="large material-icons">shopping_cart</i>
  </a>
  <ul>
    <li><a href="<?php echo base_url();?>account/shops/add_to_cart_item/<?php echo $item['id']; ?>" class="btn-floating deep-purple lighten-1"><i class="material-icons">add_shopping_cart</i></a></li>
    <li><a href="#modal1" class="btn-floating yellow darken-4 modal-trigger"><i class="material-icons">credit_card</i></a></li>
  </ul>
</div>

<!-- Modal Structure -->
  <div id="modal1" class="modal">
    <?php echo form_open("account/shops/search?sort={$sort}&dir={$dir}&limit={$limit}&offset=0{$filter}", array('role'=>'form', 'id'=>"filters")); ?>
    <div class="modal-content">
      
      <h5 class="mt-0"><?php echo lang('users orders modal_title'); ?></h5>
      <p>
        <?php echo lang('users orders modal_body'); ?> <strong><?php echo $item['price']; ?> <?if($item['currency']=='debit_base'){?>
                                    <?php echo $this->currencys->display->base_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra1'){?>
                                    <?php echo $this->currencys->display->extra1_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra2'){?>
                                    <?php echo $this->currencys->display->extra2_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra3'){?>
                                    <?php echo $this->currencys->display->extra3_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra4'){?>
                                    <?php echo $this->currencys->display->extra4_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra5'){?>
                                    <?php echo $this->currencys->display->extra5_code ?>
                                <?}else{?>
                                <?}?></strong> + <?php echo lang('users orders modal_body2'); ?> <strong><?php echo $this->notice->detail_item_cart_fee($item['id'], $item['price']); ?> <?if($item['currency']=='debit_base'){?>
                                    <?php echo $this->currencys->display->base_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra1'){?>
                                    <?php echo $this->currencys->display->extra1_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra2'){?>
                                    <?php echo $this->currencys->display->extra2_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra3'){?>
                                    <?php echo $this->currencys->display->extra3_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra4'){?>
                                    <?php echo $this->currencys->display->extra4_code ?>
                                <?}else{?>
                                <?}?>
                                <?if($item['currency']=='debit_extra5'){?>
                                    <?php echo $this->currencys->display->extra5_code ?>
                                <?}else{?>
                                <?}?>
      </p>
    </div>
    <div class="modal-footer">
      <a href="<?php echo base_url();?>account/shops/buy_now/<?php echo $item['id']; ?>" class="modal-action modal-close waves-effect waves-green btn-flat"><?php echo lang('users shops confirm_pay'); ?></a>
    </div>
    <?php echo form_close(); ?> 
  </div>