<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users merchants all'); ?></p>
  </div>
  
   <ul class="collection">
    <?php if ($total) : ?>
    <?php foreach ($history as $view) : ?>
    <li class="collection-item avatar">
      <a class="black-text darken-4" href="<?php echo base_url();?>account/merchants/merchant_orders/<?php echo $view['id']; ?>">
        <img src="<?php echo base_url();?>upload/logo/<?php echo $view['logo']; ?>" alt="" class="circle">
        <span class="title"><?php echo $view['name']; ?></span>
        <p class="grey-text"><?php echo $view['link']; ?></p>
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
  <a href="<?php echo base_url('account/merchants/add'); ?>" class="btn-floating btn-large green modal-trigger">
    <i class="large material-icons">add</i>
  </a>
</div>