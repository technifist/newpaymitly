<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users shops items'); ?></p>
  </div>
  
  <ul class="collection">
    <?php if ($total) : ?>
    
    <?php foreach ($items as $view) : ?>
    <li class="collection-item avatar">
      <a class="black-text darken-4 modal-trigger" href="#modal<?php echo $view['id']; ?>">
      <img src="<?php echo base_url();?>upload/items/img/<?php echo $view['img']; ?>" alt="" class="circle">
      <span class="title truncate"><?php echo $view['name']; ?></span>
      <p class="grey-text"><?php echo lang('users shops price'); ?>: <?php echo $view['price']; ?> <?if($view['currency']=='debit_base'){?>
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
                                <?}?> | <?php echo lang('users shops availability'); ?>: <?php echo $view['availability']; ?></p>
      </a>
    </li>
    <!-- Modal Structure -->
    <div id="modal<?php echo $view['id']; ?>" class="modal bottom-sheet">
        <ul class="collection">
          <li class="collection-item">
            <a href="<?php echo base_url();?>account/merchants/edit_item/<?php echo $view['id']; ?>" class="ml-0 waves-effect waves-light btn-floating green"><i class="material-icons">edit</i></a>
            <a href="<?php echo base_url();?>account/merchants/del_items/<?php echo $view['id']; ?>" class="secondary-content waves-effect waves-light btn-floating red"><i class="material-icons">delete</i></a>
          </li>
        </ul>
        
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
  </ul>

  <div class="center-align">
    <?php echo $pagination; ?>
  </div>

<div class="fixed-action-btn">
      <a href="<?php echo base_url();?>account/merchants/add_item/<?php echo $id;?>" class="btn-floating btn-large green modal-trigger">
        <i class="material-icons">add</i>
      </a>
    </div>
  
</div>