

<div class="row">
  <?php if ($total) : ?>
<?php foreach ($items as $view) : ?>
    <div class="col s6 m6">
      <div class="card">
        <div class="card-image">
          <a href="<?php echo base_url();?>account/shops/detail_item/<?php echo $view['id']; ?>">
          <img src="<?php echo base_url();?>upload/items/img/<?php echo $view['img']; ?>">
          </a>
          <span class="card-title truncate"><?php echo $view['price']; ?> <?if($view['currency']=='debit_base'){?>
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
          <a href="<?php echo base_url();?>account/shops/add_to_cart/<?php echo $view['id']; ?>" class="btn-floating halfway-fab waves-effect waves-light green"><i class="material-icons">shopping_cart</i></a>
        </div>
        <div class="card-content">
          <p class="mt-0">
            <strong><?php echo $view['name']; ?></strong>
          </p>
          <p><?php
                  echo mb_strimwidth($view['about'], 0, 50, "...");
                  ?></p>
        </div>
      </div>
    </div>
  <?php endforeach; ?>
  <?php else : ?>
         
  <li class="collection-item">
     <p class="center-align">
       <i class="medium material-icons grey-text">info_outline</i></br>
        <?php echo lang('core error no_results'); ?>
    </p>
    
  </li>
  <?php endif; ?>
  </div>

  <div class="center-align">
    <?php echo $pagination; ?>
  </div>