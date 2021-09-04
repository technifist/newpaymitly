<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users shops search_result'); ?></p>
  </div>
  
  <ul class="collection">
    <?php if ($total) : ?>
          <?php foreach ($shops as $view) : ?>
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
    <li class="collection-item avatar">
      <a class="black-text darken-4" href="<?php echo base_url();?>account/shops/payment/<?php echo $view['id']; ?>">
      <img src="<?php echo base_url();?>upload/logo/<?php echo $view['logo']; ?>" alt="" class="circle">
      <span class="title truncate"><?php 
                  $name_category = (@$view['name'][$this->session->language]) ? $view['name'][$this->session->language] : "";
                  echo $name_category;
                ?>
      </span>
      <p class="grey-text truncate"><?php echo $view['link']; ?></p>
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