<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo $merchant['name']; ?></p>
  </div>
  
  <ul class="collection">
    <?php if ($total) : ?>
          <?php foreach ($categories as $view) : ?>
          <?php
                $view['name'] = (@unserialize($view['name']) !== FALSE) ? unserialize($view['name']) : $view['name'];
                if ( ! is_array($view['name']))
                {
                    $old_value = $view['name'];
                    $view['name'] = array();
                    foreach ($this->session->languages as $language_key=>$language_name)
                    {
                        $view['name'][$language_key] = ($language_key == $this->session->language) ? $old_value : "";
                    }
                }
           ?>
      <li class="collection-item truncate">
        <a class="black-text darken-4" href="<?php echo base_url();?>account/shops/items/<?php echo $view['id']; ?>">
          <?php 
                  $name_category = (@$view['name'][$this->session->language]) ? $view['name'][$this->session->language] : "";
                  echo $name_category;
        ?></br>
      <span class="grey-text truncate"><?php echo lang('users shops item_total'); ?>: <?php echo $this->notice->sum_items($view['id_merchant'], $view['id']); ?></span>
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
  
</div>

<div class="fixed-action-btn">
  <a href="<?php echo base_url();?>account/shops/payment/<?php echo $merchant['id']; ?>" class="btn-floating btn-large green">
    <i class="large material-icons">credit_card</i>
  </a>
</div>